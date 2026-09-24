#!/bin/bash

if [ -f "$1" ]; then
 echo "File $1 exists."
fi
if [ -r "$1" ]; then
 echo "File $1 is readable."
fi
if [ -w "$1" ]; then
 echo "File $1 is writeable."
fi