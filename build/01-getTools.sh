#!/usr/bin/env bash
set -ue
. 00-vars.sh
################################################################
echo "...get our tools"
rm -rf tools
git clone 'https://github.com/ModelingValueGroup/tools.git'
( echo ". tools/tools.sh"
  cat 00-vars.sh
) >> 00-vars.sh-tmp
cp 00-vars.sh-tmp 00-vars.sh
