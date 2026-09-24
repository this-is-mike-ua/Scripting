#!/bin/bash
source directorys.env

for name in "${names[@]}"; do
  if [ -d "$name" ]; then
    rm -rf "$name"
    echo "Directory '$name' removed."
  else
    echo "Directory '$name' does not exist."
  fi
done