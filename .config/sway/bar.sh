#!/usr/bin/env sh

swaymsg -m -t subscribe '["window"]' | jq --raw-output --unbuffered .container.name
