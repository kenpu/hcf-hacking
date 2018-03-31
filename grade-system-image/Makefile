.PHONY: all run shell

IMAGE = hcf/grading-system
OPT = --rm -it \
	  -p 8002:8002 \
	  -v $(PWD)/config:/etc/jupyter \
	  -v $(PWD)/bin:/home/jovyan/bin \
	  -v problemsets:/home/jovyan/problemsets \
	  -v source:/home/jovyan/problemsets/source \
	  -v exchange:/home/jovyan/exchange \
	  -v problemsets-jack:/home/jovyan/users/jack \
	  -v problemsets-mary:/home/jovyan/users/mary

all:
	docker build -t $(IMAGE) .

run:
	docker run $(OPT) $(IMAGE) /bin/bash

