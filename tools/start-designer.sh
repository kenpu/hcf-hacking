#!/bin/bash

if [[ -z "$1" ]]
then
    cmd=""
else
    cmd="/bin/bash"
fi

docker run --rm -it \
    -p 8001:8001 \
    -v designer-problemsets:/home/jovyan/problemsets \
    -v grade-exchange:/home/jovyan/exchange \
    hcf/designer-notebook
