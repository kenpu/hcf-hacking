.PHONY: all run shell

IMAGE                = hcf/designer-notebook
OPT                  = --rm -it -p 8001:8001

all:
	docker build -t $(IMAGE) .

run:
	docker run $(OPT) \
		-v problemsets:/home/jovyan/problemsets \
		-v exchange:/home/jovyan/problemsets/exchange \
		-v source:/home/jovyan/problemsets/source \
		-v $(PWD)/config:/etc/jupyter \
		-v $(PWD)/dot-jupyter:/home/jovyan/.jupyter \
		$(IMAGE)

shell:
	docker run --name designer $(OPT) $(IMAGE) /bin/bash

debug:
	docker run $(OPT) -v $(PWD)/config:/etc/jupyter -v $(PWD)/dot-jupyter:/home/jovyan/.jupyter $(IMAGE)
