#!/usr/bin/sh

find $PWD -maxdepth 2 -mindepth 2 -exec git -C '{}' pull \;
