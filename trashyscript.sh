#!/usr/bin/env bash

# Get the absolute path of the file or directory
item=$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")

# Check if the item exists
if [ ! -e "$item" ]; then
    echo "Error: $item does not exist."
    exit 1
fi

# Get the current date and time
datetime=$(date +%Y%m%d%H%M%S)

# Create a unique name for the item in the Trash
basename=$(basename "$item")
if [[ "$OSTYPE" == "darwin"* ]]; then
  # MacOS
  trashitem="$HOME/.Trash/$basename.$datetime"
else
  # Assume Linux
  trashitem="$HOME/.local/share/Trash/files/$basename.$datetime"
fi

# Move the item to the Trash
mv "$item" "$trashitem"

echo "$item has been moved to the Trash."
