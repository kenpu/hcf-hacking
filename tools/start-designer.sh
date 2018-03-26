#!/bin/bash

docker run --rm -it -p 8001:8001 -v jupyterhub-designer:/home/jovyan/work hcf/designer-notebook
