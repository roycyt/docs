SERVER_PORT := 8888

.DEFAULT_GOAL := serve

.PHONY: venv
venv:
	@python3.9 -m venv venv
	@venv/bin/python -m ensurepip -U
	@venv/bin/pip install -U pip-tools

.PHONY: compile
compile:
	@venv/bin/pip-compile -q requirements.in

.PHONY: sync
sync: compile
	@venv/bin/pip-sync -q requirements.txt

.PHONY: serve
serve: sync
	@venv/bin/mkdocs serve -a 0.0.0.0:$(SERVER_PORT)
