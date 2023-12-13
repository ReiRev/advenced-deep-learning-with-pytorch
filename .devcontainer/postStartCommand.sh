#!/bin/bash

echo "Starting Jupyter notebook..."
tmux new-session -d -s jupyter_session -n jupyter_window
tmux send-keys -t jupyter_session:jupyter_window "jupyter notebook --no-browser --port=8080 --allow-root --NotebookApp.token='' --NotebookApp.password='' -y" Enter
