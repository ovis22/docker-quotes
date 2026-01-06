#!/bin/bash

# Default values
FONT_NAME=${FONT_NAME:-"standard"}
QUOTES=${QUOTES:-"No quotes provided"}

# Split quotes by semicolon into an array
IFS=';' read -ra PHRASES <<< "$QUOTES"

# Check for available phrases
if [ ${#PHRASES[@]} -eq 0 ]; then
    echo "Error: No quotes found."
    exit 1
fi

# Randomly select a phrase
RANDOM_INDEX=$(( RANDOM % ${#PHRASES[@]} ))
SELECTED_PHRASE="${PHRASES[$RANDOM_INDEX]}"

# Print debug info
echo "DEBUG: Font=$FONT_NAME"
echo "DEBUG: Selected Quote=$SELECTED_PHRASE"

# Generate ASCII art
figlet -f "$FONT_NAME" "$SELECTED_PHRASE"