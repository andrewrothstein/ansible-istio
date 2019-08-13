#!/usr/bin/env sh
VER=1.2.4
MIRROR=https://github.com/istio/istio/releases/download/$VER

dl()
{
    OS=$1
    ARCHIVE=$2
    URL=$MIRROR/istio-$VER-$OS.$ARCHIVE.sha256
    printf "    # %s\n" $URL
    printf "    %s: sha256:%s\n" $OS `curl -sSL $URL | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl linux tar.gz
dl osx tar.gz
dl win zip

