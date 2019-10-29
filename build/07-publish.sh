#!/usr/bin/env bash
set -ue
. 00-vars.sh
ls -l build/artifacts/DclareForMPS/DclareForMPS.zip
################################################################
if [[ $GITHUB_REF == master* ]]; then
  TAG="release $DclareForMPS_version"
  if [[ $GITHUB_REF != master ]]; then
    TAG="TAG for ${GITHUB_REF/master-}"
  fi
  echo "...publish to github as $TAG"
  if git rev-parse "$TAG" >/dev/null 2>&1; then
    echo "[ERROR] the tag $TAG already exists so I guess this version has already been released. Update buildParameters.sh!"
    exit 99
  fi

  echo "...to be implemented"
fi
