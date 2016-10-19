PROJECT := twisted-tutorial
VENV_BIN := $(PWD)/env/bin
PYTHON := $(VENV_BIN)/python
CC := /usr/bin/gcc

all: prereqs

prereqs:
	virtualenv env --prompt="{$(PROJECT)}"
	$(VENV_BIN)/pip install --upgrade pip
	CC=$(CC) $(VENV_BIN)/pip install -r requirements.txt
	

env:
	virtualenv env
	$(VENV_BIN)/easy_intall -U distribute
	$(VENV_BIN)/pip install --upgrade pip
	$(VENV_BIN)/pip install -r requirements.txt
	$(PYTHON) setup.py develop



