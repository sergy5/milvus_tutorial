#!/bin/bash

set -e

[[ -d .venv ]] || python -m venv .venv
source .venv/Scripts/activate
python -m pip install --upgrade pip
pip install uv
uv pip install -r requirements.txt
