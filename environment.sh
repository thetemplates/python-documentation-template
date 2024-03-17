#!/bin/bash

: << 'comment'
The set up herein is in line with the Dockerfile set up.  Both use the same
requirements.txt file to create an environment.
comment

# The environment in focus
prefix=/opt/miniconda3/envs/transcribe

: << 'delete'
  Delete the existing <transcribe> environment
delete
conda remove -y --prefix $prefix --all

: << 'rebuild'
  Rebuild environment <transcribe> via environment.yml
rebuild
conda env create -f environment.yml -p $prefix