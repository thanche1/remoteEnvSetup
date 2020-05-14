#! /bin/bash
chmod +x miniconda.sh
~/miniconda.sh -b -f -p '~/miniconda'
eval "$(~/miniconda/bin/conda shell.bash hook)"
echo 'export PATH=~/miniconda/bin:$PATH' >> ~/.bashrc
conda init
source .bashrc
tar -zxf testEnvironmentModules.tar.gz
conda create -n env1 --clone root
source activate env1
pip install -r testEnvironmentModules/requirements.txt --no-index --find-links testEnvironmentModules
# conda create -n testEnv1 --clone root
# source activate testEnv1
# pip install robotframework
# robotframework --version