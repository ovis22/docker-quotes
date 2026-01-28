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

    # Check if lolcat exists (our "rainbow check")
    lolcat_installed = subprocess.run(["which", "lolcat"], capture_output=True).returncode == 0

    try:
        if lolcat_installed:
            # The "Hacker" way: pipe figlet output to lolcat
            p1 = subprocess.Popen(["figlet", "-f", font_name, selected_phrase], stdout=subprocess.PIPE)
            subprocess.run(["lolcat"], stdin=p1.stdout)
            p1.stdout.close()
        else:
            # Fallback to standard figlet
            subprocess.run(["figlet", "-f", font_name, selected_phrase])
            
    except FileNotFoundError:
        print("Error: Essential tools missing!")
        sys.exit(1)
    
if __name__ == "__main__":
    main()