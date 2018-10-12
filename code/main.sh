#!/bin/bash

# INFO --- - --- - --- - --- - --- - --- - --- - ---

# Requirements: Cocoa Dialog, Pashua
# Setup: Create Necessary Text Files, Choose Directory
# Input: Names & Scores of Players
# Output: p1_name.txt, p1_score.txt, p2_name.txt, p2_score.txt
# What it does: Updates contents of specific text files to be used as Text Objects in streaming apps such as OBS & GameShow
# Warning: Very little input cleaning is done. Just make sure there isn't a player named "rm –rf" or "sudo killallhumans" or something.

# VERSION HISTORY --- - --- - --- - --- - --- - --- - --- 

# 0.1 --- - --- - --- - --- - --- - --- - --- - --- INITIAL RELEASE
# - X Player Names
# - X Player Scores
# - X Refresh Button
# - X Save Button

# 0.2 --- - --- - --- - --- - --- - --- - --- - --- SCORES
# - X Add Swap Scores Button
# - X Add +/- Scores Buttons
# - X Add Reset Button

# 0.3 --- - --- - --- - --- - --- - --- - --- - --- ROUND/GAME NAMES
# - X Add Field: Round Name.
# - X Add Field: Game Name.
# - X Add Button: Casuals.

# 0.5 --- - --- - --- - --- - --- - --- - --- - --- ADDING SETTINGS
# - X Settings: Create Settings Dialog.
# - X Settings: Allow user to choose & select which folder text files will be created in.
# - X Settings: Allow user to rename text files.

# TODOS 0.6 --- - --- - --- - --- - --- - --- - --- - --- ERROR CHECKING
# - Checking for filename/dir errors
# - Add "Default" Buttons to Settings Text Files

# TODOS 1.0 --- - --- - --- - --- - --- - --- - --- - --- PLAYER NAME CACHING
# - Write Player Names to a cached file
# - create function to populate combobox with Player names from list for autocomplete
# - Settings: Create Settings to disable/delete caching, choose cached file, open cached file

# TODOS 2.0 --- - --- - --- - --- - --- - --- - --- - --- API INTEGRATION

# - Use Bracket (Smash, BurningMeter, Challonge) API to read player names for tourney, then write it to playername cache.
# - Check for changes periodically to account for Late Adds
# - Settings: Add settings for bracket, stream & other links.
# - Panel: Commentator Names & Twitters
# - Event Name & Game

# PROGRESS --- - --- - --- - --- - --- - --- - --- - ---

# 2017-11-30	Creation

# --- - --- - --- - --- - --- - --- - --- - --- INITIALIZE PASHUA & COCOADIALOG

MYDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CD="$HOME/Applications/CocoaDialog.app/Contents/MacOS/CocoaDialog"
#DATEC=$(date +"%Y-%m-%dT%H%M")
DATEC=$(date +"%Y-%m-%d")
THEDATE=$DATEC

# APPNAME is the name of the App
APPNAME="Stream Writer 0.5"

# --- - --- - --- - --- - --- - --- - --- - --- READ SETTINGS

# --- - --- - --- - --- - --- - --- - --- - --- VARIABLES

# Change this to the path you want the textfiles in
#TEXTFILEDIR="$HOME/Dropbox/Projects/Streaming/Setup/Text"

# --- - --- - --- - --- - --- - --- - --- - --- INCLUDES

# Include pashua.sh to be able to use the 2 functions defined in that file
source "$MYDIR/pashua.sh"

# --- - --- - --- - --- - --- - --- - --- - --- FUNCTIONS

#cleanup() {
#
#}

pashua_start() {
	if [ -d '/Volumes/Pashua/Pashua.app' ]
	then
		# Looks like the Pashua disk image is mounted. Run from there.
		customLocation='$HOME/Applications/Pashua'
	else
		# Search for Pashua in the standard locations
		customLocation=''
	fi
	pashua_run "$1" "$customLocation"
}

pashua_newline_convert() {
	input="$1"
	awk 1 ORS='[return]' "$input"
	return
}

#continuemodal() {
#	# Import source of config continue
#	# xxx Todo Convert $input into Pashua readable format
#	#input=$(cat $1)
#	title="$1"
#	input="$2"
#	source "$MYDIR/pashua_config_continue.sh"
#	pashua_start "$pashua_config_continue"
#}

mainmodal() {
	title="$1"
	source "$MYDIR/pashua_config_main.sh"
	pashua_start "$pashua_config_main"
}

settingsmodal() {
	title="$1"
	input="$2"
	source "$MYDIR/pashua_config_settings.sh"
	pashua_start "$pashua_config_settings"
	settings_write $gamenamefile $p1namefile $p1scorefile $p2namefile $p2scorefile $roundnamefile $textfiledir
	main
}

settings_read() {
## xxx If settings file doesn't exist
## Write Default
#	configfile='$HOME/.stream_writer.conf'
	configfile="$MYDIR/stream_writer.conf"
#	configfile_secured='/tmp/stream_writer_temp.conf'

	# check if the file contains something we don't want
	if egrep -q -v '^#|^[^ ]*=[^;]*' "$configfile"; then
		echo "Config file is unclean, cleaning it..." >&2
		# filter the original to a new file
		egrep '^#|^[^ ]*=[^;&]*'  "$configfile" > "$configfile_secured"
		configfile="$configfile_secured"
	fi

	# now source it, either the original or the filtered variant
	source "$configfile"

	echo "Reading Settings file at: $configfile"
	
	echo -e "\n…Done Reading Settings.\n"

	echo -e "\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"
}

settings_write() {
	configfile2="$MYDIR/stream_writer.conf"

	echo "settings_write not ready yet"
	touch "$configfile2"
	echo "GAMENAMEFILE=\"$1\"" > "$configfile2"
	echo "P1NAMEFILE=\"$2\"" >> "$configfile2"
	echo "P1SCOREFILE=\"$3\"" >> "$configfile2"
	echo "P2NAMEFILE=\"$4\"" >> "$configfile2"
	echo "P2SCOREFILE=\"$5\"" >> "$configfile2"
	echo "ROUNDNAMEFILE=\"$6\"" >> "$configfile2"
	echo "TEXTFILEDIR=\"$7\"" >> "$configfile2"
}

textfile_read() {
# xxx If settings file doesn't exist
# Write Default
	textfile_secured='/tmp/stream_writer.cfg'

	# check if the file contains something we don't want
#	if egrep -q -v '^#|^[^ ]*=[^;]*' "$TEXTFILEDIR"; then
#		echo "Config file is unclean, cleaning it..." >&2
#		# filter the original to a new file
#		egrep '^#|^[^ ]*=[^;&]*'  "$TEXTFILEDIR" > "$textfile_secured"
#		textfile="$textfile_secured"
#	fi

	echo "Reading Textfiles at: $TEXTFILEDIR"
	P1NAME=`cat "$TEXTFILEDIR/$P1NAMEFILE"`
	P2NAME=`cat "$TEXTFILEDIR/$P2NAMEFILE"`
	P1SCORE=`cat "$TEXTFILEDIR/$P1SCOREFILE"`
	P2SCORE=`cat "$TEXTFILEDIR/$P2SCOREFILE"`
	ROUNDNAME=`cat "$TEXTFILEDIR/$ROUNDNAMEFILE"`
	GAMENAME=`cat "$TEXTFILEDIR/$GAMENAMEFILE"`
	
	echo -e "\n…Done Reading Textfiles.\n"

	echo -e "\n--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"
	
}

textfile_write() {
	echo "$1" > "$TEXTFILEDIR/$P1NAMEFILE"
	echo "$2" > "$TEXTFILEDIR/$P2NAMEFILE"
	echo "$3" > "$TEXTFILEDIR/$P1SCOREFILE"
	echo "$4" > "$TEXTFILEDIR/$P2SCOREFILE"
	echo "$5" > "$TEXTFILEDIR/$ROUNDNAMEFILE"
	echo "$6" > "$TEXTFILEDIR/$GAMENAMEFILE"
}

initialize() {
	# reset pashua variables
	db=0
	cb=0
	sb=0
	swapplayers=0
	swapscores=0
	swapboth=0
	casuals=0
	reset=0
	p1scoreup=0
	p1scoredown=0
	p2scoreup=0
	p2scoredown=0
	settings_read 
	textfile_read 

}

main() {

	# --- - --- - --- - --- - --- - --- - --- - --- INITIALIZE

	initialize

	# --- - --- - --- - --- - --- - --- - --- - --- SHOW MAIN GUI

	mainmodal "$APPNAME"

	#--- - --- - --- - --- - --- - --- - --- - --- ECHO PASHUA VARS
	echo " --- - --- - --- "
	echo -e "Textfile variables:\n"
	echo "  P1NAME = $P1NAME"
	echo "  P2NAME = $P2NAME"
	echo "  P1SCORE = $P1SCORE"
	echo "  P2SCORE = $P2SCORE"
	echo "  ROUNDNAME = $ROUNDNAME"
	echo "  GAMENAME = $GAMENAME"

	echo " --- - --- - --- "
	echo -e "Pashua variables:\n"
	echo "  p1name = $p1name"
	echo "  p2name = $p2name"
	echo "  p1score = $p1score"
	echo "  p2score = $p2score"
	echo "  gamename = $gamename"
	echo " --- - --- - --- "
	#echo "  filepath = $filepath"
	#echo "  settingspath = $settingspath"
	#echo " --- - --- - --- "
	#echo "  cb = $cb"
	#echo "  sb = $sb"
	#echo "  db = $db"
	#echo -e " --- - --- - --- \n"


	#--- - --- - --- - --- - --- - --- - --- - ---
	# P1 SCORE +1
	if [ $p1scoreup == 1 ]; then
		echo "ｐ１ｓｃｏｒｅ　↑"
		(( p1score++ ))
		textfile_write "$p1name" "$p2name" "$p1score" "$p2score" "$roundname" "$gamename"
		main
	fi 

	#--- - --- - --- - --- - --- - --- - --- - ---
	# P1 SCORE -1
	if [ $p1scoredown == 1 ]; then
		echo "ｐ１ｓｃｏｒｅ　↓"
		(( p1score-- ))
		textfile_write "$p1name" "$p2name" "$p1score" "$p2score" "$roundname" "$gamename"
		main
	fi 

	#--- - --- - --- - --- - --- - --- - --- - ---
	# P2 SCORE +1
	if [ $p2scoreup == 1 ]; then
		echo "ｐ１ｓｃｏｒｅ　↑"
		(( p2score++ ))
		textfile_write "$p1name" "$p2name" "$p1score" "$p2score" "$roundname" "$gamename"
		main
	fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# P2 SCORE -1
	if [ $p2scoredown == 1 ]; then
		(( p2score-- ))
		textfile_write "$p1name" "$p2name" "$p1score" "$p2score" "$roundname" "$gamename"
		main
	fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# SWAP PLAYERS
	if [ $swapplayers == 1 ]; then
		echo "ｓｗａｐ　ｐｌａｙｅｒｓ"
		textfile_write "$p2name" "$p1name" "$p1score" "$p2score" "$roundname" "$gamename"
		main
	fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# SWAP SCORES
	if [ $swapscores == 1 ]; then
		echo "ｓｗａｐ ｓｃｏｒｅｓ"
		textfile_write "$p1name" "$p2name" "$p2score" "$p1score" "$roundname" "$gamename"
		main
	fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# SWAP BOTH
	if [ $swapboth == 1 ]; then
		echo "ｓｗａｐ ｂｏｔｈ"
		textfile_write "$p2name" "$p1name" "$p2score" "$p1score" "$roundname" "$gamename"
		main
	fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# CASUALS
	if [ $casuals == 1 ]; then
		echo "ｃａｓｕａｌｓ"
		textfile_write "" "" "" "" "Casuals" "$gamename"
		main
	fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# RESET
	if [ $reset == 1 ]; then
		echo "ｒｅｓｅｔ"
		textfile_write "Player 1" "Player 2" "0" "0" "$roundname" "$gamename"
		main
	fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# CANCEL

	#if [ $cb == 1 ]; then
	#	echo "ｐｒｏｇｒａｍ　ｔｅｒｍｉｎａｔｅｄ"
	#	exit
	#fi 
	#--- - --- - --- - --- - --- - --- - --- - ---
	# SETTINGS

	if [ $sb == 1 ]; then
		echo "ｏｐｅｎｉｎｇ　ｓｅｔｔｉｎｇｓ"
		settingsmodal "Settings"
		exit
	fi 
	# --- - --- - --- - --- - --- - --- - --- - --- WRITE TEXTFILES
	# DEFAULT

	if [ $db == 1 ]; then
		echo "ｄｅｆａｕｌｔ　ｂｕｔｔｏｎ"
		textfile_write "$p1name" "$p2name" "$p1score" "$p2score" "$roundname" "$gamename"
		main
	fi 
}

main

# --- - --- - --- - --- - --- - --- - --- - --- CLEAN UP & EXIT