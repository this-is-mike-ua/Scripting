#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Correct usage: $0 <directory_route>"
    exit 1
elif [ $# -gt 1 ]; then
    echo "Error: Please provide only one directory route."
    exit 1
fi

cd $1
echo "Work directory: $(pwd)"

directory=("Imagenes" "Documentos" "Otros")

for direct in "${directory[@]}"; do
    if [ ! -d "$direct" ]; then
        mkdir "$direct"
    fi
    echo "Directory $direct created."
done

for file in *.jpg *.png *.jpeg; do
    if [ -f "$file" ]; then
        mv "$file" "Imagenes/"
        echo "Moved $file to Imagenes/"
    fi
done

for file in *.pdf *.docx *.txt; do
    if [ -f "$file" ]; then
        mv "$file" "Documentos/"
        echo "Moved $file to Documentos/"
    fi
done

for file in *; do
    if [ -f "$file" ]; then
        mv "$file" "Otros/"
        echo "Moved $file to Otros/"
    fi
done

for direct in "${directory[@]}"; do
    if [ -d "$direct" ]; then
        echo "$(ls -la "$direct" | wc -l) Files moves to $direct"
    fi
done