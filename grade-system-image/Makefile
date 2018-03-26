.PHONY: all run shell

IMAGE = hcf/grading-system
OPT = --rm -it 

all:
	docker build -t $(IMAGE) .

run:
	docker run $(OPT) $(IMAGE)

shell:
	docker run $(OPT) $(IMAGE) /bin/bash
