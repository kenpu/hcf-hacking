#!/bin/bash

if [[ -z "$PROBLEMSETS" ]]
then
    echo "Missing PROBLEMSETS"
    exit 0
fi

if [[ -z "$WORK" ]]
then
    echo "Missing WORK"
    exit 0
fi

docker run --rm -it \
    -v $PROBLEMSETS:/home/jovyan/problemsets \
    -v $WORK:/home/jovyan/work \
    hcf/designer-notebook \
    /bin/bash
