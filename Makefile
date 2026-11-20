.PHONY: help setup lint

help:  ## Affiche les commandes disponibles
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  make %-10s %s\n", $$1, $$2}'

setup:  ## Crée l'environnement Python et installe les outils qualité
	python3 -m venv .venv
	.venv/bin/pip install --upgrade pip pre-commit ruff pytest
	.venv/bin/pre-commit install

lint:  ## Vérifie la qualité du code
	.venv/bin/ruff check .
	.venv/bin/ruff format --check .
