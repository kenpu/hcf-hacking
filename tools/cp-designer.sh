#!/bin/bash

user=$1

if [[ -z "$user" ]]
then
    echo 'Usage <user>'
    exit
fi

docker run \
    --rm -it \
    -v jupyterhub-user-$user:/home/user/work \
    -v jupyterhub-designer:/home/jovyan/work \
    hcf/designer-notebook \
    /bin/bash

