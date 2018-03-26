FROM hcf/base-notebook
COPY ./config/nbgrader_config.py /etc/jupyter/nbgrader_config.py

USER jovyan
RUN mkdir -p /home/jovyan/work/problemsets
RUN mkdir -p /etc/jupyter/nbgrader_exchange
