#!/bin/bash
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 Folder Extension" >&2
    exit 1
fi
fi
if [ ! -d "$1" ]; then
    echo "Error: $1 is not a folder" >&2
    exit 1
fi
count=$(find "$1" -maxdepth 1 -type f | wc -l)
echo "There are $count files in $1"