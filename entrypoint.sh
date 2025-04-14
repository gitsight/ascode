#!/bin/sh
set -eu

unset GOROOT
unset GOPATH

cd $GITHUB_WORKSPACE
/bin/ascode run --plugin-dir "$PLUGIN_DIR" "$INPUT_FILE" --to-hcl "$INPUT_HCL"
