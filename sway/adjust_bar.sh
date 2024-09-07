#!/bin/bash

while true
do
  current_workspace=$(swaymsg -t get_workspaces | jq '.[] | select(.focused==true) | .name')
  jq_string=".nodes[] | recurse(.nodes[]?) | select(.type==\"workspace\" and .name==$current_workspace) | .nodes[] | .fullscreen_mode"
  anyfullscreen=$(swaymsg -t get_tree | jq "$jq_string")
  echo $current_workspace
  echo $jq_string
  echo $anyfullscreen
  if [[ $anyfullscreen -eq 1 ]]; then
    swaymsg bar mode invisible;
  else
    swaymsg bar mode overlay;
  fi
  sleep 1 
done
