#!/bin/bash

echo "Please provide a path"
read path

echo "Please enter a depth you want to go"
read depth

echo "All files at $path"

du -d $depth -all -h $path