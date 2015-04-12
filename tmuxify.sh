#!/bin/bash
# Source: https://wiki.archlinux.org/index.php/Tmux#Template_script_to_run_program_in_new_session_resp._attach_to_existing_oneo


export LANG=de_DE.UTF-8

#PID=$(pidof $1)
# Fix for multiple Instances
PID=$(pgrep -U $(whoami) $1)

if [ -z "$PID" ]; then
    tmux new-session -d -s main ;
    tmux new-window -t main -n $1 "$*" ;
fi
    tmux attach-session -d -t main ;
    tmux select-window -t $1 ;
exit 0
