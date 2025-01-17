# Note to Shelf
This code is a command-line tool for taking and managing notes from the terminal. Users are able to add, see the list, search for keywords, and clear notes. Each new note taken has a time stamp and date for better organization.

## Requirements
Bash shell

File Handling

Date Command

## Features
Add notes (with timestamps) that are stored in a separate text file. 

List all notes, showing them and their timestamps.

Search for notes using keywords (not case sensative).

Clear all notes from the text file.

Handles errors for invalid inputs or empty files.

Exit codes for both success and failure.

## How it works
When adding notes, the script appends said note to the `notes.txt` file with a timestamp.

When listing the notes, the script will read and output the notes of `notes.txt` file if it's not empty.

When searching for notes, the script will search for inputted keyword in the `notes.txt` file and output any matching notes.

When clearing the notes, the script will clear the `notes.txt` file.

## How to use it
1. Load script and terminal through VS code

2. Enter terminal

3. To use in terminal you will have to use the **bash** command

4. Follow it up with **note.sh**

5. Command should look like **bash note.sh [argument]**

6. You will have to use one of the follow **add|list|search|clear** 

7. The final command should look like the following: **bash note.sh add**

8. Enter the command into the terminal

## End of README
This `README.md` is a detailed guide on the features, behavior, and requirements for the note-taking tool `note.sh`. 
