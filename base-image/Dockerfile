FROM jupyter/scipy-notebook:de0cd8011b9e

USER jovyan
RUN conda install --yes -c conda-forge \
    jupyterhub==0.8.1 \
    nbgrader \
    nose
