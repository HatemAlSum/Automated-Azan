#!/usr/bin/env bash
virtualenv environment
export PYTHONPATH=
./environment/bin/pip install -r requirements.txt
source environment/bin/activate
