#!/bin/bash

# Navigate to the directory where the files are located
cd $HOME/Desktop

# Use the find command to locate files with "nyamuk" in the filename and delete them
find . -type f -name "*nyamuk*" -delete

echo "Files containing 'nyamuk' in the filename have been deleted."
