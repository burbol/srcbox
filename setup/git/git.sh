#!/bin/bash

# Define some global variables
git_root=`dirname $0`
git_linux="$git_root/linux.sh"
git_macos="$git_root/macos.sh"

# Check for supported operating systems and run specific installers
if [ `uname -s` == "Linux" ]; then
  echo "Linux operating system found."
  bash $git_linux
  exit
elif [ `uname -s` == "Darwin" ]; then
  echo "Mac operating system found."
  bash $git_macos
  exit
else
  echo "Unknown operating system found."
  echo "Please install git manually."
  exit 1
fi
