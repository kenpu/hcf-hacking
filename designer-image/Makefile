.PHONY: all run shell

IMAGE = hcf/designer-notebook
OPT = --rm -it -p 8888:8888

all:
	docker build -t $(IMAGE) .

run:
	docker run $(OPT) $(IMAGE)

shell:
	docker run $(OPT) $(IMAGE) /bin/bash
