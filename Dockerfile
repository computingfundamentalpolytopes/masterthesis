# Dockerfile based on [https://github.com/sagemath/sage-binder-env]
FROM sagemath/sagemath:8.9

RUN sage -pip install jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}