#!/bin/bash

tar xzf mesasdk-x86_64-linux-20171120.tar.gz
svn co -r 10108 svn://svn.code.sf.net/p/mesa/code/trunk mesa

export MESASDK_ROOT=$_CONDOR_SCRATCH_DIR/mesasdk
source $MESASDK_ROOT/bin/mesasdk_init.sh
export MESA_DIR=$_CONDOR_SCRATCH_DIR/mesa
export OMP_NUM_THREADS=16

env > build_environment.txt

cd mesa
./install
cd ..

