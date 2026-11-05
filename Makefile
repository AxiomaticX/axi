.DEFAULT_GOAL := help

.PHONY: help clean distclean

help:
	@printf '%s\n' \
		'make clean      Remove caches, temporary files, and build output' \
		'make distclean  Also remove local environments and dependencies'

clean:
	@printf '%s\n' 'Cleaning caches and build output...'
	@find . \( -name .git -o -name .venv -o -name .tox -o -name .nox -o -name node_modules \) -prune -o \
		-type d \( -name __pycache__ -o -name .pytest_cache -o -name .ruff_cache -o -name .mypy_cache -o -name .hypothesis -o -name '*.egg-info' \) \
		-prune -exec rm -rf {} +
	@find . \( -name .git -o -name .venv -o -name .tox -o -name .nox -o -name node_modules \) -prune -o \
		-type f \( -name '*.py[co]' -o -name .DS_Store -o -name '*.swp' -o -name '*.swo' -o -name '*~' \) -exec rm -f {} +
	@rm -rf build dist _site htmlcov .coverage .coverage.*

distclean: clean
	@printf '%s\n' 'Removing local environments and dependencies...'
	@rm -rf .venv .tox .nox node_modules
