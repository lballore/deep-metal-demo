#!/bin/bash

set -euo pipefail

flake8 --config ./backend/.flake8 ./backend

mypy --ignore-missing-imports ./backend

coverage run -m --source ./backend pytest -v ./backend/test_*.py
coverage report -m
