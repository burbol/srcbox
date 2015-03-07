#!/bin/bash

# Define some global variables
setup_path="$(dirname `pwd`)"
srcbox_path="$setup_path/srcbox.sh"

# Set execute permissions
chmod +x $srcbox_path

# Create a symlink to the srcbox script
mkdir -p $HOME/bin
(cd $HOME/bin && exec ln -s -f $srcbox_path srcbox)

# Add symlink to the user's path
export PATH="$HOME/bin:$PATH"

echo "Please re-login to finalize SrcBox configuration."
echo

echo "SrcBox was successfully configured."
