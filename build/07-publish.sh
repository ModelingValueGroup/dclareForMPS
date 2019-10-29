#!/usr/bin/env bash
set -ue
. 00-vars.sh
ls -l build/artifacts/DclareForMPS/DclareForMPS.zip
################################################################
if [[ $release != "" && $release != SNAPHOT && $gitHubToken != "" && $gitHubToken != NO_TOKEN ]]; then
  echo "...publish to github as release '$release'"
  echo "...maybe later"
fi
