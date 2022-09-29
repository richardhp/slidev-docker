#!/bin/sh
for FILE in `ls /tmp/slides | sort -g`; do echo "$FILE"; done
pwd
ls
./node_modules/.bin/slidev --open
