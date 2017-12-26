#!/usr/bin/env bash
declare -a versions
versions=("1.2.1" "1.2.0" "1.1.0" "1.0.0")

for version in ${versions[@]}; do
	docker build -t wplib/wpcli:${version} --build-arg WPCLI_VERSION=${version} ./
done

cp -i wp /usr/local/bin/wp
chmod a+x /usr/local/bin/wp

