# Stream Writer 0.1

## What it does:
- Updates contents of specific text files to be used as Text Objects in streaming apps such as OBS & GameShow

## Requirements

- [Pashua](https://www.bluem.net/en/projects/pashua/) 

## Setup

1. Create Necessary Text Files
2. Choose Directory (Edit line 70 of "main.sh")
3. Ensure that the symlinks in the App bundle point the files in the "code" ƒ

## Input

- Player Names
- Player Scores

## Output

- p1_name.txt
- p1_score.txt
- p2_name.txt
- p2_score.txt

## Warning: 

- Very little input cleaning is done.
- Just make sure there isn't a player named "rm –rf" or "sudo killallhumans" or something.


# Usage

##  TBD

The ability to set the locations of the text files without editing the source has not been coded in yet (expect this in 0.3). For now, you can edit line 70 in 'main.sh' to point to the directory you'd like the text files to be created at.

# Known Bugs

- If StreamWriter gets stuck in a loop, and is unable to be closed via the usual methods, hit the Reset button first, then exit the app.

#	Version History

###	0.1
- Initial release

###	0.2 
- Added +/- buttons to increment/decrement scores
- Added "Swap Scores" button
- Added "Swap Both" button
- Added "Reset" button