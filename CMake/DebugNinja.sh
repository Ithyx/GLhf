#!/bin/bash

mkdir ../build
mkdir ../build/Debug
cd ../build/Debug && cmake ../.. -G"Ninja" -DCMAKE_BUILD_TYPE=Debug && ninja