#!/bin/bash

# virtualenv is already installed
curl -sSL https://install.python-poetry.org | python3 -
virtualenv .venv
. .venv/bin/activate
poetry install
docker-compose -f tests/spark/docker-compose.yml up -d