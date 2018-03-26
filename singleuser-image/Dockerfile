FROM hcf/base-notebook

USER jovyan

RUN jupyter nbextension disable --sys-prefix create_assignment/main
RUN jupyter nbextension disable --sys-prefix formgrader/main --section=tree
RUN jupyter nbextension disable --sys-prefix assignment_list/main --section=tree
RUN jupyter serverextension disable --sys-prefix nbgrader.server_extensions.formgrader
RUN mkdir -p /home/jovyan/work/problemsets
ADD ./dot-jupyter /home/jovyan/.jupyter
