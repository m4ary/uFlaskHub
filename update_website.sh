#!/bin/bash
set -e
# Check if the required arguments are provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <destination_directory>"
    exit 1
fi

# Read token and URL from the config file
CONFIG_FILE="update-config.txt"
if [ ! -f "$CONFIG_FILE" ]; then
    echo "Config file $CONFIG_FILE not found!"
    exit 1
fi

TOKEN_PART=$(head -n 1 "$CONFIG_FILE")
REPO_URL_WITHOUT_TOKEN=$(sed -n '2p' "$CONFIG_FILE")

# Construct the full URL with the token part
REPO_URL="https://$TOKEN_PART$REPO_URL_WITHOUT_TOKEN"

# Extract the repository name from the URL for the directory name
DIR_NAME=$(basename "$REPO_URL_WITHOUT_TOKEN" .git)

# Destination directory
DEST_DIR="$1"

# Check if directory exists
if [ ! -d "$DIR_NAME" ]; then
    # Clone the repository if the directory doesn't exist
    git clone "$REPO_URL"
else
    # Navigate to the directory and pull the latest changes
    cd "$DIR_NAME"
    git pull
    cd ..
fi

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy the contents to the specified destination directory
cp -r "$DIR_NAME/"* "$DEST_DIR"

