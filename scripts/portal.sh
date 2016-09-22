#!/bin/sh

WORKDIR=/home/work/open-falcon

mkdir $WORKDIR/portal
cd $WORKDIR/portal

virtualenv ./env
./env/bin/pip install -r pip_requirements.txt
