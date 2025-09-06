#!/bin/bash

DDTERM_ID="$1"
DDTERM="$2"
CURRENT_WORKSPACE=$(swaymsg -t get_tree | jq '.nodes | .[] | select(.current_workspace) | .current_workspace')
create_ddterm() {
  bash -c "$DDTERM" &
  swaymsg "[app_id=\"$DDTERM_ID\"] move workspace $CURRENT_WORKSPACE"
}

exists=$(swaymsg -t get_tree | jq "..| select(.app_id? == \"$DDTERM_ID\")")
if [ -z "$exists" ]; then
  create_ddterm $CURRENT_WORKSPACE
fi
DDTERM_WORKSPACE=$(swaymsg -t get_workspaces | jq ".[] | select(.floating_nodes?.[].app_id == \"$DDTERM_ID\") | .name")

if [ "$CURRENT_WORKSPACE" != "$DDTERM_WORKSPACE" ]; then
  swaymsg "[app_id=$DDTERM_ID] move workspace $CURRENT_WORKSPACE"
  swaymsg "[app_id=$DDTERM_ID] focus"
else
  swaymsg "[app_id=$DDTERM_ID] move workspace >_"
fi
