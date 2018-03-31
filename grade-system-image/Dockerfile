FROM hcf/base-notebook

USER root
RUN apt-get update
RUN apt-get install -y tree less

USER jovyan
RUN mkdir -p /home/jovyan/problemsets
RUN mkdir -p /home/jovyan/problemsets/source
RUN mkdir -p /home/jovyan/exchange
RUN mkdir -p /home/jovyan/users
RUN chmod ugo+rw /home/jovyan/exchange
