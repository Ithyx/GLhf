# GLhf
[![Actions Status](https://github.com/Ithyx/GLhf/workflows/Linux/badge.svg)](https://github.com/Ithyx/GLhf/actions?workflow=Linux)
[![Actions Status](https://github.com/Ithyx/GLhf/workflows/Windows/badge.svg)](https://github.com/Ithyx/GLhf/actions?workflow=Windows)
[![Actions Status](https://github.com/Ithyx/GLhf/workflows/OSX/badge.svg)](https://github.com/Ithyx/GLhf/actions?workflow=OSX)
## What ?
GLhf is an cross-platform OpenGL project template using CMake and using continuous integration with Github actions.

For now, the scripts I have written use [Google's Ninja](https://ninja-build.org/), but using [CMake](https://cmake.org/) you can generate a variety of other formats.

## How ?
To use this template, all you have to do is clone the repo, and install the required platform specific dependencies (glfw is included in this repo):
* Linux 			      			(`debian install commands`):
  * Ninja           (`$ sudo apt-get install ninja-build -y`)
  * xorg-dev        (`$ sudo apt-get install xorg-dev -y`)
  * freeglut3-dev   (`$ sudo apt-get install freeglut3-dev -y`)
  * CMake           (`$ sudo apt-get install cmake -y`)

* OSX               (`homebrew install commands`)
  * Ninja           (`$ brew install ninja`)
  * CMake           (`$ brew install CMake`)
   
* Windows           (`chocolatey install commands`)
  * Bash            (if you have git for windows, bash should be installed, but to put it in your Path, you can `choco install git.install --params "/GitAndUnixToolsOnPath"`)
  * Ninja           (`choco install ninja`)
  * CMake           (`choco install cmake`)
  * GLWF            (`choco install glfw3`)  
  After that, if you want to simply build debug and release, execute (in bash):
  ```bash
  $ ./BuildTests.sh
  ```
  and build executables should be in `build/${CONFIG}/bin`.
  If you want to build and run only one configuration, simply run (again, in bash) :
  ```bash
  $ ./BuildRun [Release/Debug]
  ```
