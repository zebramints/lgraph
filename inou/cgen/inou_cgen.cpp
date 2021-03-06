//  This file is distributed under the BSD 3-Clause License. See LICENSE for details.

#include <fstream>
#include <sstream>
#include <string>
#include <strings.h>

#include "eprp_utils.hpp"
#include "inou_cgen.hpp"
#include "lgedgeiter.hpp"

void setup_inou_cgen() {
  Inou_cgen p;
  p.setup();
}

Inou_cgen::Inou_cgen()
    : Pass("cgen") {

  lg = 0;
}

void Inou_cgen::setup() {
  Eprp_method m1("inou.cgen.fromlg", "generate a cgen output", &Inou_cgen::fromlg);

  register_inou(m1);
}

void Inou_cgen::fromlg(Eprp_var &var) {

  Inou_cgen p;

  const std::string odir = var.get("odir");
  bool              ok   = p.setup_directory(odir);
  if(!ok)
    return;

  for(const auto &g : var.lgs) {
    p.to_pyrope(g, odir);
  }
}

void Inou_cgen::Declaration::format_raw(Out_string &w) const {
  static const char *str_type[] = {"local", "input", "output", "sflop", "aflop", "fflop", "latch"};

  w << fmt::format("dec {} bits:{} pos:{} sign:{} order:{} type:{}\n", name, bits, pos, is_signed, order, str_type[type]);
}

void Inou_cgen::iterate_declarations(Index_ID idx, Port_ID pid) {

  const char *wn = lg->get_node_wirename(idx);
  if(!wn)
    return;

  Declaration d;
  d.name      = wn;
  d.pos       = lg->node_file_loc_get(idx).get_start();
  d.order     = -1; // FIXME: Undefined for the moment
  d.bits      = lg->get_bits(idx);
  d.is_signed = false; // Could change after the traversal

  if(lg->is_graph_input(idx)) {
    d.type = Decl_inp;
  } else if(lg->is_graph_output(idx)) {
    d.type = Decl_out;
  } else if(pid == 0) { // Only pid ==0 is the Q output from flops/latches
    const auto &nt = lg->node_type_get(idx);
    switch(nt.op) {
    case SFlop_Op:
      d.type = Decl_sflop;
      break;
    case AFlop_Op:
      d.type = Decl_aflop;
      break;
    case FFlop_Op:
      d.type = Decl_fflop;
      break;
    case Latch_Op:
      d.type = Decl_latch;
      break;
    default:
      d.type = Decl_local;
    }
  } else {
    d.type = Decl_local;
  }

  declaration.push_back(d);

  const char *found = strrchr(wn, '.');
  if(found == 0)
    return;

  int         id = declaration.size() - 1;
  std::string str(wn, found - wn);
  declaration_root.insert(std::pair<std::string, int>(str, id));
}

void Inou_cgen::setup_declarations() {

  declaration.clear();
  declaration_root.clear();

  // lg->each_output_root_fast([this](Index_ID idx, Port_ID pid) { iterate_declarations(idx,pid); });
  // lg->each_output_root_fast(std::bind(&Inou_cgen::iterate_declarations, this, std::placeholders::_1, std::placeholders::_2));
  lg->each_output_root_fast(&Inou_cgen::iterate_declarations, this);
}

void Inou_cgen::to_pyrope(const LGraph *g, const std::string &odir) {

  assert(lg == 0);
  lg = g;

  setup_declarations();

  const std::string prp_file = lg->get_name() + ".prp";
  const std::string filename = odir + "/" + prp_file;

  Out_string w;

  w << fmt::format("// {} \n", prp_file);

  for(const auto &d : declaration) {
    d.format_raw(w);
  }

  for(auto idx : lg->forward()) {
    const char *wn = lg->get_node_wirename(idx);
    if(wn)
      w << fmt::format(" {} {} op:{}\n", idx, wn, lg->node_type_get(idx).get_name());
    else
      w << fmt::format(" {} op:{} \n", idx, lg->node_type_get(idx).get_name());
  }

  std::fstream fs;
  fs.open(filename, std::ios::out | std::ios::trunc);
  if(!fs.is_open()) {
    error(fmt::format("could not open destination pyrope file {}", filename));
    exit(-4);
  }
  fs << w.str() << std::endl;
  fs.close();

  std::cout << w.str() << std::endl;

  lg = 0; // just being clean
}
