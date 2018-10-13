# Stream Writer 0.5.5

## What it does:
- Updates contents of specific text files to be used as Text Objects in streaming apps such as OBS & GameShow. 

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
- round_name.txt
- game_name.txt

## Warning: 

- Very little input cleaning is done.
- Just make sure there isn't a player named "rm –rf" or "sudo killallhumans" or something.


# Setup

# Usage

Use it pretty much like Panel Writer.


# Known Bugs

- If StreamWriter gets stuck in a loop, and is unable to be closed via the usual methods, hit the Reset button first, then exit the app.
- Settings Panel is a bit buggy.

#	Version History

#	0.1
- Initial release

#	0.2 
- Added +/- buttons to increment/decrement scores
- Added "Swap Scores" button
- Added "Swap Both" button
- Added "Reset" button

# 	0.3:  Round/Game Names
- Added Field: Round Name.
- Added Field: Game Name.
- Added Button: Casuals.

# 	0.5: Adding Settings
- Settings: Create Settings Dialog.
- Settings: Allow user to choose & select which folder text files will be created in.
- Settings: Allow user to rename text files.

# 	0.5.5: Settings Defaults
- Added: "Default" Buttons to Settings Text Files

