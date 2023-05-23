#!/usr/bin/env bash
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## (C) Copyright 2018-2023 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
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

set -euo pipefail

main() {
  set -x
  prepare
  copyToWiki
  generateHome
  pushToWiki
}
prepare() {
  SOURCE_DIR="source"
    WIKI_DIR="wiki"
     version="$(getVersion)"
      branch="${GITHUB_REF#refs/heads/}"
       owner="$OWNER"
        repo="$REPO"
        hash="$HASH"
}
copyToWiki() {
  echo "copying documentation from $SOURCE_DIR to $WIKI_DIR..."
  rm -rf "$WIKI_DIR/$version"
  cp -r "$SOURCE_DIR/documentation" "$WIKI_DIR/$version"
}
generateHome() {
  java "$SOURCE_DIR/documentation/GenerateHome.java" "$WIKI_DIR/Home.md" "$owner" "$repo" "$version" "$branch" "$hash" > "/tmp/Home.md"
  mv "/tmp/Home.md" "$WIKI_DIR/Home.md"
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
      #git commit -m "update wiki from version '$version' in branch '$branch'"
      #git push
      git status
      cat Home.md
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
