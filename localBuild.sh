#!/usr/bin/env bash
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## (C) Copyright 2018-2019 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
##                                                                                                                     ~
## Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
## compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
## Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
## an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
## specific language governing permissions and limitations under the License.                                          ~
##                                                                                                                     ~
## Maintainers:                                                                                                        ~
##     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
## Contributors:                                                                                                       ~
##     Arjan Kok, Carel Bast                                                                                           ~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ "$1" == clean ]]; then
    echo "cleaning..."
    . project.sh
    rm -rf "buildTools.jar" "$mpsDir" "lib" "out"
fi

if [[ ! -d ../buildTools ]]; then
    echo "ERROR: no buildTools project in parent dir"
    exit 88
fi
if [[ ! -f ../buildTools/out/artifacts/buildTools.jar ]]; then
    echo "ERROR: build buildTools first"
    exit 88
fi

cp ../buildTools/out/artifacts/buildTools.jar .
. <(java -jar buildTools.jar)
generateAll
. project.sh
if [[ ! -d "$mpsDir" ]]; then
    echo "downloading MPS..."
    installMps "$mpsDir" "$mpsVersion"
fi
mvn dependency:copy-dependencies -Dmdep.stripVersion=true -DoutputDirectory=lib
mvn dependency:copy-dependencies -Dmdep.stripVersion=true -DoutputDirectory=lib -Dclassifier=javadoc
mvn dependency:copy-dependencies -Dmdep.stripVersion=true -DoutputDirectory=lib -Dclassifier=sources

ant
ant -Dmps_home="$mpsDir" -f mps_build.xml
