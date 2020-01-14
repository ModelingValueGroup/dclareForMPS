#!/usr/bin/env bash

if [[ ! -d ../../buildTools ]]; then
    echo "ERROR: no buildTools project in parent dir"
    exit 88
fi
if [[ ! -f ../../buildTools/out/artifacts/buildTools.jar ]]; then
    echo "ERROR: build buildTools first"
    exit 88
fi

cp ../../buildTools/out/artifacts/buildTools.jar .
. <(java -jar buildTools.jar)
generateAll
if [[ ! -d MPS ]]; then
    installMps "MPS" "2019.3"
fi
mvn dependency:copy-dependencies -Dmdep.stripVersion=true -DoutputDirectory=lib
mvn dependency:copy-dependencies -Dmdep.stripVersion=true -DoutputDirectory=lib -Dclassifier=javadoc
mvn dependency:copy-dependencies -Dmdep.stripVersion=true -DoutputDirectory=lib -Dclassifier=sources
