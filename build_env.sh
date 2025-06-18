#!/bin/bash

set -e

[[ -d .venv ]] || python3.11 -m venv .venv
source .venv/bin/activate
pip install uv
uv pip install -r requirements.txt
