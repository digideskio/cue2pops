#!/bin/bash
set -e

if [[ $# == 0 ]] || [[ ! -f $1 ]] ; then
    wine /opt/cue2pops/CUE2POPS_2_0.EXE
    exit
fi

IMAGE=$(winepath -w "$1")
yes | wine /opt/cue2pops/CUE2POPS_2_0.EXE "$IMAGE" "${@:2}"
