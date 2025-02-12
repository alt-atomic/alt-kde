#!/bin/bash

echo "::group:: ===$(basename "$0")==="

apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* && mkdir /var/lib/apt/lists/partial

echo "::endgroup::"