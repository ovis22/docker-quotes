#!/bin/bash
# Define an array of catchphrases
PHRASES=("Ze wazne sa tylko te dni ktorych jeszcze nie znamy" "I nawet kiedy bede sam" "Nie zmienie sie, to nie moj swiat" "Chociaz dokola wszyscy juz posneli")

# Randomly select a phrase
RANDOM_INDEX=$(( RANDOM % ${#PHRASES[@]} ))
SELECTED_PHRASE=${PHRASES[$RANDOM_INDEX]}

# Print the messages with figlet
figlet -w 200 -f starwars "$SELECTED_PHRASE"