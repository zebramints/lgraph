#pragma once

#include "elab_scanner.hpp"
#include "lgedge.hpp"

class Graph_library;
class LGraph;

class Chunkify_verilog : public Elab_scanner {
protected:
  const std::string path;
  const std::string elab_path;

  std::string chunk_dir;
  std::string elab_chunk_dir;

  Graph_library *library;
  Graph_library *elab_library;

  int open_write_file(const std::string &filename) const;

  bool is_same_file(const std::string &filename, const std::string &text1, const std::string &text2) const;

  void write_file(const std::string &filename, const std::string &text1, const std::string &text2) const;
  void write_file(const std::string &filename, const char *text, int sz) const;

  void add_io(LGraph *lg, bool input, const std::string &io_name, Port_ID original_pos);

public:
  Chunkify_verilog(const std::string &outd, const std::string &_elab_path);
  void elaborate();
};
