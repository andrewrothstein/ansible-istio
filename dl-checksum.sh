#!/usr/bin/env sh
VER=${1:-1.3.5}
MIRROR=https://github.com/istio/istio/releases/download/$VER

dl()
{
    local os=$1
    local archive=$2
    local url=$MIRROR/istio-$VER-${os}.${archive}.sha256
    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $os `curl -sSL $url | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl linux tar.gz
dl osx tar.gz
dl win zip

