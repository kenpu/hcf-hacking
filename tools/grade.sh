#!/bin/bash

if [[ -z "$1" ]]
then
    echo "Usage <user>"
    exit 0
else
    name=$1
fi

a=`docker volume ls | grep user-${name} | wc -l`

if [[ $a == "0" ]]
then
    echo "User $name is not found."
    exit 0
fi

docker run --rm -it -v designer-problemsets:/home/jovyan/designer-problemsets:ro \
    -v user-${name}:/home/jovyan/problemsets \
    hcf/grading-system \
    echo "hello"
