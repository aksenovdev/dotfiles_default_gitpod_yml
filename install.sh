#!/usr/bin/env bash

set -eu;

_source_dir="$(readlink -f "$0")" && _source_dir="${_source_dir%/*}";
for _file in 'gitpod.yml'; do {
    _file_final="${_file}";
    if test -e "$_source_dir/$_file_final" && test ! -e "$GITPOD_REPO_ROOT/$_file_final"; then {
        cp -f "$_source_dir/$_file" "$GITPOD_REPO_ROOT/$_file_final";
        # if ! grep "/$_file_final" "$GITPOD_REPO_ROOT/.gitignore" 1>/dev/null; then {
        #     printf "/$_file_final\n" >> "$GITPOD_REPO_ROOT/.gitignore";
        #     _gitignore_modified=true;
        # } fi
    } fi
} done

# if test "${_gitignore_modified:-}" == true; then {
#     git add "$GITPOD_REPO_ROOT/.gitignore";
# } fi
