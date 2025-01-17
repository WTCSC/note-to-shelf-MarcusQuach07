#!/bin/bash

# File where notes are stored
TXT = "test_note.sh"

# Function to add a note
function add() {
    # first argument that will only appear in this function
    local note = "$1"

    # If note is empty then
    if [[ -z "$note"]]; then
    # Print error message
        echo "Error: Note cannot be empty."
        #Exits saying error
        exit 1
    # Ends if statement
    fi
    # Gets current time, date, and note to add to note.txt
    local time = $(date + "%Y-%m-%d %H:%M:%S")
    # Adds time,date, and note to the note txt file
    echo "$time - $note" >> "$TXT"
    #Successfully added note
    echo "Note Added"
}

function list() {
    # Checks if note.txt has content or if it exists
    if [[ ! -s "$TXT" || ! -f "$TXT" ]]; then
        # If not, print error message
        echo "No notes found."
        # Exits with error
        exit 1
    # Exits if statement
    fi
    # If note.txt has content and exists, print the content
    cat "$TXT"
}
# Function to search notes
function search() {|
    # Check if note.txt exists then
    if [[ ! -f "TXT"]]; then
    # if it doesnt exists then error message occurs
        echo "Error: No notes found."
        #Exits with error
        exit 1
    # Ends if statement
    fi

    # Gets the search word from the first argument
    local search_word = "$1"
    # Checks if search word exists
    if [[ -z "$search_word"]]; then
    # If it doesnt exist then error message occurs
        echo "Error: Search word cannot be empty."
        #Exits with error
        exit 1
    # Ends if statement
    fi 

    # Searches for the search word in the note.txt file
    grep -i "$search_word" "$TXT" || echo "No notes found."
}

# Adds a function to clear notes.txt file
function clear() {
    # Empties notes.txt
    > "$TXT"
    # Prints notes cleared
    echo "Notes cleared."
}

# Main statements to process command-line inputs
case "$1" in
    # calls add function if command is "add"
    add) add "$2" ;;
    # calls list function if command is "list"
    list) list ;;
    # calls search function if command is "search"
    search) search "$2" ;;
    # calls clear function if command is "clear"
    clear) clear ;;
    # Error for invalid commands
    *)
    # Echos invalid command and gives options
        echo "Invalid command. Usage: $0 {add|list|search|clear} [arguments]"
        exit 1
        ;;
esac