#!/bin/bash

echo "::group:: ===$(basename "$0")==="

rm -rf /var/root/.cache
rm -rf /var/root/go
rm -rf /boot/*

echo "::endgroup::"