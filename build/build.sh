#!/usr/bin/env bash
set -ue
################################################################
mkdir -p log
. build/00-prep.sh            | tee log/00-prep.log
. build/01-getTools.sh        | tee log/01-getTools.log
. build/02-makePoms.sh        | tee log/02-makePoms.log
. build/03-getDependencies.sh | tee log/03-getDependencies.log
. build/04-build.sh           | tee log/04-build.log
. build/05-test.sh            | tee log/05-test.log
. build/06-javadoc.sh         | tee log/06-javadoc.log
. build/07-publish.sh         | tee log/07-publish.log
