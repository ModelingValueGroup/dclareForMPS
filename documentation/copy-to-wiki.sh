#!/usr/bin/env bash
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##  (C) Copyright 2018-2024 Modeling Value Group B.V. (http://modelingvalue.org)                                         ~
##                                                                                                                       ~
##  Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in       ~
##  compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0   ~
##  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on  ~
##  an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the   ~
##  specific language governing permissions and limitations under the License.                                           ~
##                                                                                                                       ~
##  Maintainers:                                                                                                         ~
##      Wim Bast, Tom Brus                                                                                               ~
##                                                                                                                       ~
##  Contributors:                                                                                                        ~
##      Ronald Krijgsheld ✝, Arjan Kok, Carel Bast                                                                       ~
## --------------------------------------------------------------------------------------------------------------------- ~
##  In Memory of Ronald Krijgsheld, 1972 - 2023                                                                          ~
##      Ronald was suddenly and unexpectedly taken from us. He was not only our long-term colleague and team member      ~
##      but also our friend. "He will live on in many of the lines of code you see below."                               ~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set -euo pipefail

main() {
  prepare
  copyToWiki
  pushToWiki
}
prepare() {
  SOURCE_DIR="source"
    DOCU_DIR="$SOURCE_DIR/documentation"
    WIKI_DIR="wiki"
     version="$(getVersion)"
      branch="${GITHUB_REF#refs/heads/}"
       owner="$OWNER"
        repo="$REPO"
        hash="$HASH"
}
copyToWiki() {
  java "$SOURCE_DIR/runtime/src/main/java/CopyToWiki.java" \
    "$DOCU_DIR" \
    "$WIKI_DIR" \
    "$owner" \
    "$repo" \
    "$version" \
    "$branch" \
    "$hash"
}
pushToWiki() {
  if ! hasWikiChanges; then
    echo "no changes to push to wiki repo"
  else
    ( cd $WIKI_DIR
      echo "push changes to wiki repo..."
      git config --global user.email "auto-wiki-updater@modelingvalue.nl"
      git config --global user.name  "auto WIKI updater"
      git add -A
      git commit -m "update wiki from version '$version' in branch '$branch'"
      git push
    )
  fi
}
getVersion() {
  cat "$SOURCE_DIR/gradle.properties" | sed 's/ //g' | egrep '^version=' | sed 's/version=//'
}
hasWikiChanges() {
  ( cd "$WIKI_DIR"
    [[ $(git status --porcelain) ]]
  )
}


main "$@"
