#!/bin/bash

mkdir ../build
mkdir ../build/Release
cd ../build/Release && cmake ../.. -G"Ninja" -DCMAKE_BUILD_TYPE=Release && ninja