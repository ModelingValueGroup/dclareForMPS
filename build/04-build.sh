#!/usr/bin/env bash
set -ue
. 00-vars.sh
################################################################
echo "...running ant"
echo "ANT_OPTS=$ANT_OPTS"
ant generate