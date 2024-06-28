#!/usr/bin/env sh
set -e
MIRROR=https://github.com/istio/istio/releases/download

dl()
{
    local ver=$1
    local os=$2
    local archive=$3
    local url=$MIRROR/$ver/istio-${ver}-${os}.${archive}.sha256
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $os $(curl -sSLf $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux-amd64 tar.gz
    dl $ver linux-arm64 tar.gz
    dl $ver linux-armv7 tar.gz
    dl $ver osx tar.gz
    dl $ver osx-arm64 tar.gz
    dl $ver win zip
}

dl_ver ${1:-1.22.2}
