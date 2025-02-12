#!/bin/bash

set -e

echo "::group:: ===$(basename "$0")==="

if [ "$BUILD_TYPE" = "nvidia" ]; then
  apt-get install -y apt-repo-lakostis-kmodules apt-repo-lakostis && \
  apt-get update && \
  apt-get install -y kernel-modules-nvidia-open-6.12 nvidia_glx libnvoptix
fi

echo "::endgroup::"