#!/usr/bin/env bash
set -ue
. 00-vars.sh
################################################################
echo "...running ant"
cat 00-vars.sh
echo "ANT_OPTS=$ANT_OPTS"
ant generate || :
sed 's/^/@@@ /' languages/DclareMPS/source_gen/DclareMPS/behavior/StructRuleSet__BehaviorDescriptor.java