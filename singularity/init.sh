#!/usr/bin/env bash

source /opt/mambaforge/etc/profile.d/conda.sh && \
  conda activate $CONDA_PREFIX && \
  rserver \
    --www-port=$PORT \
    --rsession-which-r=$RSTUDIO_WHICH_R \
    --rsession-ld-library-path=$CONDA_PREFIX/lib \
    --auth-timeout-minutes=0 --auth-stay-signed-in-days=30 \
    --auth-none=0  --auth-pam-helper-path=pam-helper

