//  This file is distributed under the BSD 3-Clause License. See LICENSE for details.
#ifndef PASS_H
#define PASS_H

#include "lgraph.hpp"
#include "options.hpp"

// Abstract class that any Pass block must support
class Pass {
private:
protected:
  static std::map<std::string, Pass *> passes;

public:
  Pass(std::string name);

  virtual void transform(LGraph *orig) = 0;
};

#endif