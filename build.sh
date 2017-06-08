#!/usr/bin/env bash
declare -a versions
versions=("1.2.1" "1.2.0" "1.1.9")

for version in ${versions[@]}; do
  docker build -t wplib/wpcli:${version} ./
done