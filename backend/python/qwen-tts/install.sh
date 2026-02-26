#!/bin/bash
set -e

EXTRA_PIP_INSTALL_FLAGS="--no-build-isolation"

backend_dir=$(dirname $0)
if [ -d $backend_dir/common ]; then
    source $backend_dir/common/libbackend.sh
else
    source $backend_dir/../common/libbackend.sh
fi

# Enable portable Python and set version (matching qwen-asr)
PORTABLE_PYTHON="true"
PYTHON_VERSION="3.12"
PYTHON_PATCH="12"
PY_STANDALONE_TAG="20251120"

# Ensure uv is in PATH
export PATH="$HOME/.local/bin:$PATH"

installRequirements
