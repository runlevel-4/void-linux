#!/bin/bash

# install wget
echo "Installing wget...\n"
xbps-install -Sy wget

# download obsidian release from github
echo "Downloading Obsidian from GitHub...\n"
wget "https://github.com/obsidianmd/obsidian-releases/releases/download/v1.15.0/obsidian-1.15.0.tar.gz"

# extract the archive
echo "Extracting the Obsidian archive...\n"
tar -xf obsidian-1.15.0.tar.gz

# copy the files to their destinations
echo "Copying the Obsidian files to the /usr/lib/...\n"
cp --recursive obsidian-1.15.0 /usr/lib

# create the obsidian binary symlink
echo "Making Obsidian symlink in /usr/bin/...\n"
ln -s /usr/lib/obsidian-1.15.0/obsidian /usr/bin
