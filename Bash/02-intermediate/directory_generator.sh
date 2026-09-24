#!/bin/bash
source directorys.env


for name in "${names[@]}"; do
  if [ -d "$name" ]; then
    echo "Directory '$name' already exists."
  else
    mkdir -p "$name"
    echo "Directory '$name' created."
  fi
done