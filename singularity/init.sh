#!/usr/bin/env bash

source ${CONDA_DIR}/etc/profile.d/conda.sh && \
  conda activate $CONDA_PREFIX && \
  rserver \
    --www-port=$PORT \
    --rsession-which-r=$RSTUDIO_WHICH_R \
    --rsession-ld-library-path=$CONDA_PREFIX/lib \
    --auth-timeout-minutes=0 --auth-stay-signed-in-days=30 \
    --server-user $USER
