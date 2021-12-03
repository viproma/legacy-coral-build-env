#!/bin/bash
set -e

git clone https://github.com/viproma/coral.git
mkdir build-coral
pushd build-coral
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../coral-jcoral-master -DCORAL_BUILD_TESTS=OFF ../coral
make install
popd

git clone https://github.com/viproma/jcoral.git
mkdir build-jcoral
pushd build-jcoral
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../coral-jcoral-master ../jcoral
make install
popd

tar czf /mnt/out/coral-jcoral-master.tar.gz coral-jcoral-master
