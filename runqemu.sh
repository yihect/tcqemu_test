#!/bin/sh

export PATH=/home/tchen/code/qemu-4-build/x86_64-softmmu:$PATH
export PATH=./scripts:$PATH

# compile tunctl and copy it to tmp/bin
gcc -o ./tunctl  ./tunctl.c
mv ./tunctl ./build/tmp/bin/

./scripts/runqemu -d ./build/tmp/deploy/images/qemux86-64 qemuparams="-enable-kvm"
