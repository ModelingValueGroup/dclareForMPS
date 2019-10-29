#!/usr/bin/env bash
set -ue
. 00-vars.sh
################################################################
echo "...get MPS $mpsVersionFull"
tarCache="MPS-$mpsVersionFull.tar.gz"
if [ ! -f "$tarCache" ]; then
    echo "...... from jetbrains"
	wget -q "https://download.jetbrains.com/mps/$mpsVersion/MPS-$mpsVersionFull.tar.gz" -O "$tarCache"
fi
tar xf "$tarCache"
mv "MPS $mpsVersion" MPS

