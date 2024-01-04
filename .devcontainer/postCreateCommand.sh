#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

echo "Installing dependencies..."
apt update && \
    apt install -y \
    wget \
    build-essential \
    git \
    git-lfs \
    curl \
    tmux \
    ca-certificates \
    python-is-python3 \
    python3-pip

echo "Configuring Git..."
git config --global --add safe.directory /workspaces/advenced-deep-learning-with-pytorch

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing pre-commit..."
pip install pre-commit
pre-commit install

echo "Installing PyTorch..."
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

echo "Installing requirements..."
pip3 install -r requirements.txt
