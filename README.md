Set of simple shells scripts to build x64 version of Emacs 25 for msys2 environment.
=======================

Based on instructions of bburns.km from https://emacs.stackexchange.com/a/19202 which in turn is based on work of Chris Zheng (emacsbinw64 project). I have created those when one day sourceforge site wasn't reachable from my home network and suspecting the worst I have decided to make my own Emacs build environment for Windows.

How to use 
--------------
* Install [msys2](https://msys2.github.io/)
* Run MingW-w64 shell (not the standard msys2 shell)
* Install git with pacman -S git
* Clone this repository
* Run ./emacs-build-prepare.sh to install necessary libraries and tools (necessary only the first time)
* Run ./emacs-build-compile.sh to pull latest Emacs git repository and build Emacs.
* Run ./emacs-build-install.sh to install built Emacs to /c/emacs/emacs-25
* Run ./emacs-build-make-realse.sh to create a release zip file for emacs, which you can take to all your other windows computers. The file can be found in /c/emacs/ directory.

You can customize the directory where Emacs is installed in emacs-build-settings.sh file.

License
--------------
This file is part of GNU Emacs.

GNU Emacs is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

GNU Emacs is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with GNU Emacs. If not, see http://www.gnu.org/licenses/ .
