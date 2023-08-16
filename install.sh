#!/bin/bash

# Adapted from INSTALL.md.
# Run from within the virtual environment on the GPU Cluster.

pip install torch==1.10.0+cu111 torchvision==0.11.0+cu111 torchaudio==0.10.0 -f https://download.pytorch.org/whl/torch_stable.html # CUDA 11.1 with torch 1.10 worked for mvd
pip install tensorboard
pip install numpy
pip install PyYAML
pip install pandas
pip install h5py
pip install joblib
pip install scipy
pip install tqdm

# the non-maxima suppression is written in C++, needs compiling:
python ./Downstream/Temporal-Action-Localization/libs/utils/setup.py install # no --user flag when using a venv
