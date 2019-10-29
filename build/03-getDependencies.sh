#!/usr/bin/env bash
set -ue
. 00-vars.sh
################################################################
set -x
echo "...get MPS $mpsVersionFull from jetbrains"
tarCache="MPS-$mpsVersionFull.tar.gz"
if [ ! -f "$tarCache" ]; then
	wget -q "https://download.jetbrains.com/mps/$mpsVersion/MPS-$mpsVersionFull.tar.gz" -O "$tarCache"
fi
tar xf "$tarCache"
mv 'MPS $mpsVersion' MPS

