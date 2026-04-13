#!/bin/sh

addr=127.0.0.1
port=41380
pdir=./target

miniserve \
    --port $port \
    --interfaces "${addr}" \
    "${pdir}"
