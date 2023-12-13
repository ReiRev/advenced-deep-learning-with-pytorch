#!/bin/bash

echo "Installing Python dependencies..."
pip install --use-deprecated=legacy-resolver -r requirements.txt || true

echo "Reinstalling PyTorch..."
pip3 install numpy --pre torch torchvision torchaudio --force-reinstall --index-url https://download.pytorch.org/whl/nightly/cu118 || true

echo "Configuring Git..."
git config --global --add safe.directory /workspace

echo "Installing pre-commit hooks..."
pre-commit install
