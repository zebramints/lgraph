//  This file is distributed under the BSD 3-Clause License. See LICENSE for details.

#include "cops_live.hpp"


#include "lgedgeiter.hpp"
#include "lgbench.hpp"
#include "lgraph.hpp"

#include "diff_finder.hpp"
#include "invariant_finder.hpp"
#include "invariant_options.hpp"
#include "live_options.hpp"
#include "structural.hpp"
#include "stitcher.hpp"
#include "stitch_options.hpp"

void setup_cops_live() {
  Cops_live p;
  p.setup();
}

void Cops_live::invariant_finder(Eprp_var &var) {

  LGBench b("cops.live.inv_finder");

  Invariant_find_options pack;
  for(const auto &l:var.dict) {
    pack.set(l.first,l.second);
  }

  Invariant_finder     worker(pack);
  b.sample("cops.live.inv_finder.setup");

  Invariant_boundaries fibs = worker.get_boundaries();
  b.sample("cops.live.inv_finder.work");

  std::ofstream of(pack.invariant_file);
  Invariant_boundaries::serialize(&fibs, of);
  of.close();
  b.sample("cops.live.inv_finder.output");
}

void Cops_live::diff_finder(Eprp_var &var) {
  LGBench b("cops.live.diff");

  Live_pass_options pack;
  for(const auto &l:var.dict) {
    pack.set(l.first,l.second);
  }

  Diff_finder      worker(pack);
  b.sample("cops.live.diff.setup");

  std::set<Net_ID> diffs;
  worker.generate_delta(pack.modified_lgdb, pack.delta_lgdb, diffs);

  b.sample("cops.live.diff.find_diffs");

  std::ofstream of(pack.diff_file);
  for(auto &diff_ : diffs) {
    of << diff_.first << "\t" << diff_.second << std::endl;
  }
  of.close();

  b.sample("cops.live.diff.write_diff");
}

void Cops_live::netlist_merge(Eprp_var &var) {
  LGBench b("cops.live.stitch");

  Stitch_pass_options pack;
  for(const auto &l:var.dict) {
    pack.set(l.first,l.second);
  }

  if(pack.method == Stitch_pass_options::Live_method::LiveSynth) {
    Live_stitcher worker(pack);
    b.sample("cops.live.stitch.setup");

    std::ifstream    ifs(pack.diff_file);
    std::set<Net_ID> diffs;
    WireName_ID      net;
    uint32_t         bit;

    while(ifs >> net >> bit) {
      diffs.insert(std::make_pair(net, bit));
    }
    ifs.close();

    b.sample("cops.live.stitch.read_diff");
    worker.stitch(pack.nsynth_lgdb, diffs);

  } else if(pack.method == Stitch_pass_options::Live_method::Structural) {
    Live_structural worker(pack);
    b.sample("cops.live.stitch.setup");
    worker.replace(pack.nsynth_lgdb);

  } else {
    Pass::error(fmt::format("cops.live: unsupported stitch method {}", pack.method));
    return;
  }

  b.sample("cops.live.stitch.done");
}

void Cops_live::setup() {

  Eprp_method inv_find("live.invariant_find", "find invariant boundaries between post-synthesis and post-elaboration lgraphs", &Cops_live::invariant_finder);
  inv_find.add_label_required("top", "top module");
  inv_find.add_label_required("elab_lgdb","lgdb path of the elaborated netlist");
  inv_find.add_label_required("synth_lgdb","lgdb path of the synthesized netlist");
  inv_find.add_label_required("invariant_file","file to serialize the invariant boundaries object (used by diff)");
  inv_find.add_label_required("hier_sep","hierarchical separator used in names by the synthesis tool");
  register_pass(inv_find);

  Eprp_method diff_find("live.diff_finder", "find cones that changed between two post-elaboration lgraphs", &Cops_live::diff_finder);
  diff_find.add_label_required("olgdb","original elaborated lgdb path");
  diff_find.add_label_required("mlgdb","modified elaborated lgdb path");
  diff_find.add_label_required("slgdb","original synthesized lgdb path");
  diff_find.add_label_required("invariant_file","file to serialize the invariant boundaries object (generated by invariant finder)");
  diff_find.add_label_required("dlgdb","lgdb path for the delta netlist");
  diff_find.add_label_required("diff_file","output diff_file (used by the stitch pass)");
  register_pass(diff_find);

  Eprp_method stitch("live.merge_changes", "merge synthesized delta into the original synthesized netlist", &Cops_live::netlist_merge);
  stitch.add_label_required("osynth","lgdb path for the original synthesized netlist");
  stitch.add_label_required("nsynth","lgdb path for the delta synthesized netlist");
  stitch.add_label_required("method","stitch method (options: LiveSynth and Structural");
  stitch.add_label_required("diff_file","input diff_file (generated by the diff pass)");
  register_pass(stitch);
}

