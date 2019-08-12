#!/usr/bin/env bash

generated_warning() {
	cat <<-EOH
		#
		# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
		#
		# PLEASE DO NOT EDIT IT DIRECTLY.
		#
	EOH
}

LATEST_VERSION=5.3

VERSIONS="
5.1
5.2
5.3
"

for version in ${VERSIONS}; do
    rm -rf ${version}
    mkdir -p ${version}

    generated_warning > ${version}/Dockerfile
    sed -e 's!%%LUA_VERSION%%!'"${version}"'!' Dockerfile.template >> ${version}/Dockerfile

    generated_warning > ${version}/lua-entrypoint
    cat lua-entrypoint >> ${version}/lua-entrypoint
done

# Latest version
rm -rf Dockerfile
cp Dockerfile.template Dockerfile

generated_warning > Dockerfile
sed -e 's!%%LUA_VERSION%%!'"${LATEST_VERSION}"'!' Dockerfile.template >> Dockerfile