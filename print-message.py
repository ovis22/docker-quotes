#!/usr/bin/env python3
import os
import random
import subprocess
import sys

def main():
    # Default values
    font_name = os.getenv("FONT_NAME", "standard")
    quotes_env = os.getenv("QUOTES", "No quotes provided")

    # Split quotes by semicolon into a list and remove whitespace
    phrases = [q.strip() for q in quotes_env.split(";") if q.strip()]

    # Check for available phrases
    if not phrases:
        print ("Error: No quotes found.")
        sys.exit(1)

    # Randomly select a phrase
    selected_phrase = random.choice(phrases)

    # Print debug info 
    print(f"DEBUG: Font={font_name}")
    print(f"DEBUG: Selected Quote={selected_phrase}")

    # Generate ASCII art using figlet
    try:
        subprocess.run(["figlet", "-f", font_name, selected_phrase], check=True)
    except FileNotFoundError:
        print("Error: figlet not found. Install it first.")
        sys.exit(1)
    
if __name__ == "__main__":
    main()