#!/bin/bash

for a in cloud cops core eprp inou live main meta pass
do
  lcov --ignore-errors source --capture --rc geninfo_auto_base=1 --rc lcov_branch_coverage=1 --compat-libtool --base-directory . --directory bazel-out/k8-fastbuild/bin/${a} --exclude '/usr/*' --output-file cov/coverage_${a}.info
echo $a
done


LCOV_ADD=""
for a in cloud cops core eprp inou live main meta pass
do
  if [ -s cov/coverage_${a}.info ]; then
    LCOV_ADD=$LCOV_ADD" --add-tracefile cov/coverage_"${a}".info"
  else
    echo "Empty coverage file cov/coverage_"${a}".info"
  fi
done

echo $LCOV_ADD
lcov $LCOV_ADD --output-file cov/coverage.info

if [ -s cov/coverage.info ]; then
  coveralls-lcov --repo-token Z2cNEUdoWLokSj16laePFXdCWIwckDRHK cov/coverage.info
fi

