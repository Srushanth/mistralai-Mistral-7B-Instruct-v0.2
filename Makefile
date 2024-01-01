# Upgrade pip
upgrade-pip:
	python -m pip install --upgrade pip

# Install requirements
install:
	pip install -r ./requirements.txt

# Format code
format: 
	black *.py

# Lint code
lint:
	pylint --disable=R,C ./src/streamer.py

# Testing
# TODO
test: 
	echo "test"

# Create vertual environment using existing Python kernel
venv-python:
	python -m venv .venv

# Create virtual environment using conda
venv-conda:
	conda create -p .venv python==3.11 -y

# Activate virtual environment
activate-conda:
	conda activate .venv/

# Perform pip upgrade, install requirements, linting and testing
all: upgrade-pip install lint test
