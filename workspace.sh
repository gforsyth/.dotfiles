#!/bin/sh

while true ; do
    python2 ~/.dotfiles/dzen-workspaces.py
    sleep 1
done | dzen2 -dock -x 850 -w 400 -ta r -fn '-*-clean-*-*-*-*-10-*-*-*-*-*-*-*' -xs "$1"
