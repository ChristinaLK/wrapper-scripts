#!/bin/bash

tar -xvzf spades.tar.gz

cd SPAdes-3.9.0-Linux
cd bin

#export PATH=$(pwd)/bin:$PATH

cp /mnt/gluster/chtcuser/R1.fq ./
cp /mnt/gluster/chtcuser/R2.fq ./

./spades.py --pe1-1 R1.fq --pe1-2 R2.fq -t 16 -k 37,59,71,85,97 -o spades_out

#cp output from working directory into gluster
rm R1.fq
rm R2.fq
cp -r spades_out /mnt/gluster/chtcuser
ls /mnt/gluster/chtcuser
rm -r spades_out
