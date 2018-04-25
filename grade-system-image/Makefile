.PHONY: all run shell

IMAGE = hcf/grading-system
OPT = --rm -it \
	  -p 8002:8002 \
	  -v $(PWD)/config:/etc/jupyter \
	  -v $(PWD)/bin:/home/jovyan/bin \
	  -v $(DESIGNER_PROBLEMSETS):/home/jovyan/problemsets \
	  -v $(DESIGNER_SOURCE):/home/jovyan/problemsets/source \
	  -v $(EXCHANGE):/home/jovyan/exchange \
	  -v $(USER_HOME)-jack:/home/jovyan/users/jack

all:
	docker build -t $(IMAGE) .

run:
	docker run $(OPT) $(IMAGE) /bin/bash

