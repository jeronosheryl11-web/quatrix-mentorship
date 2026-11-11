#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Hello: $0 NAME" >&2
    exit 1
fi
echo "Hello, $1"
