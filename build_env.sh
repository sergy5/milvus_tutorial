#!/bin/bash

set -e

# Проверка, что ОС не Windows
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
    echo "Error: This script can only be run on Linux systems"
    exit 1
fi

# Создание виртуального окружения, если его нет
[[ -d .venv ]] || python3 -m venv .venv

# Активация и установка зависимостей
source .venv/bin/activate
python3 -m pip install --upgrade pip
pip install uv
uv pip install -r requirements.txt
