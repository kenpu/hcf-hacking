FROM hcf/base-notebook

USER root
RUN apt-get update
RUN apt-get install rsync

USER jovyan
COPY ./config/*.py /etc/jupyter/
RUN jupyter nbextension disable --sys-prefix assignment_list/main --section=tree
RUN mkdir -p /home/jovyan/work/problemsets
