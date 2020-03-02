#!/bin/bash

tmux send-keys -t 0:PIM.2 'clear; curl wttr.in?0' C-m

tmux send-keys -t 0:PIM.3 'clear ; cal' C-m

