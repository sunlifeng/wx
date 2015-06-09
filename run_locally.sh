#!/bin/bash
set -e # exit if any command fails
[ -d virtenv ] || virtualenv virtenv # create a virtual env to install new modules
source virtenv/bin/activate # activate your virtual env
python setup.py install # install dependencies into virtual env, needed by web2py
export PYTHONPATH=$PWD/libs/ # where web2py should look for gluon
python wsgi/web2py/web2py.py # start web2py

