#!/bin/bash

# format input
input="${1,,}"
input="${input^}"

# check if config is valid
if [ "$input" != "Release" ]; then
    if [ "$input" != "Debug" ]; then
        echo "No valid configuration name was given! ('Release' or 'Debug')"
        echo "Usage: $0 <configuration>"
        exit 1
    fi
fi

# execute valid build and run it
cd CMake && ./"$input"Ninja.sh
../build/"$input"/bin/GLhf