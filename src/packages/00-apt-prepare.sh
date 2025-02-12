#!/bin/bash

echo "::group:: ===$(basename "$0")==="

apt-get update && apt-get -y dist-upgrade

echo "::endgroup::"