#!/usr/bin/env bash
set -ue
. 00-vars.sh
################################################################
echo "...get MPS $MPS_versionFull"
tarCache="MPS-$MPS_versionFull.tar.gz"
if [ ! -f "$tarCache" ]; then
    echo "...... from jetbrains"
	wget -q "https://download.jetbrains.com/mps/$MPS_version/$tarCache"
fi
tar xf "$tarCache"
mv "MPS $MPS_version" MPS

ANT_OPTS+=" -Dmps_home=MPS"
declare -p ANT_OPTS >> 00-vars.sh
