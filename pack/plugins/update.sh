#!/usr/bin/sh

find -maxdepth 2 -mindepth 2 -exec echo '{}' \; -and -exec git -C '{}' pull \;
