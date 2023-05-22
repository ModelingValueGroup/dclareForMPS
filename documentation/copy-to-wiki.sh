#!/usr/bin/env bash

# This script copies the documentation from the current branch to the wiki

set -euo pipefail

echo "Copying documentation to wiki..."
date > wiki/test.md
