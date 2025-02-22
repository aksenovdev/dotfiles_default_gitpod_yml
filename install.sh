#!/usr/bin/env bash

set -eu;

_source_dir="$(readlink -f "$0")" && _source_dir="${_source_dir%/*}";
cp -f "$_source_dir/.gitpod.yml" "$GITPOD_REPO_ROOT/.gitpod.yml";
