#!/bin/bash

# Log the current mode for debugging purposes
echo "DEBUG: App Mode=$APP_MODE"

# Check the APP_MODE environment variable is set to 'python'
if [ "$APP_MODE" == "python" ]; then
    echo "DEBUG: Running PYTHON version"
    # Use exec to replace the shell process with Python
    python3 print-message.py
else
    # Default to BASH version for any other value (including empty)
    echo "DEBUG: Running BASH version"
    # Use exec to replace the shell process with the bash script
    ./print-message.sh
fi

