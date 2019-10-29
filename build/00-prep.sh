#!/usr/bin/env bash
set -ue
################################################################
export mavenReposDir="${1:-m2}"        ; shift || :
export   gitHubToken="${1:-NO_TOKEN}"  ; shift || :
export      runTests="${1:-true}"      ; shift || :
export       release="${1:-SNAPHOT}"   ; shift || :
################################################################
export      ANT_OPTS="-Djava.home=$JAVA_HOME"
export    MAVEN_OPTS="-Dmaven.repo.local=$mavenReposDir -DoutputDirectory=out/dependency"
export    OUR_DOMAIN="org.modelingvalue"
export   OUR_PRODUCT="DclareForMPS"
################################################################
export units=(
)
################################################################
varNames=(
    mavenReposDir
    gitHubToken
    runTests
    release
    ANT_OPTS
    MAVEN_OPTS
    OUR_DOMAIN
    OUR_PRODUCT
    units
)
(   declare -p "${varNames[@]}"
    echo ". buildParameters.sh"
) > 00-vars.sh
