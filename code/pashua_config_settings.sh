# masterdir
# exportdir
# serverip
# serveruser
# serverpath
# 

pashua_config_settings="
# Set window title
*.title = "$1"

textfiledir.type = openbrowser
textfiledir.label = Please choose the directory where you want the text files read by OBS to be stored.
#textfiledir.rely = 20
textfiledir.default = "$TEXTFILEDIR"
textfiledir.filetype = directory
textfiledir.width = 700
textfiledir.placeholder = path/to/textfile/directory

-

p1namefile.type = textfield
p1namefile.default = "$P1NAMEFILE"
p1namefile.label = Player 1 Name Textfile
#p1namefile.y = 0
#p1namefile.x = 0

p1scorefile.type = textfield
p1scorefile.default = "$P1SCOREFILE"
p1scorefile.label = Player 1 Score Textfile
#p1scorefile.y = 0
#p1scorefile.x = 0

p2namefile.type = textfield
p2namefile.default = "$P2NAMEFILE"
p2namefile.label = Player 2 Name Textfile
#p2namefile.y = 0
#p2namefile.x = 250

p2scorefile.type = textfield
p2scorefile.default = "$P2SCOREFILE"
p2scorefile.label = Player 2 Score Textfile
#p2scorefile.y = 0
#p2scorefile.x = 0

gamenamefile.type = textfield
gamenamefile.default = "$GAMENAMEFILE"
gamenamefile.label = Game Name Textfile
#gamenamefile.y = 0
#gamenamefile.x = 0

roundnamefile.type = textfield
roundnamefile.default = "$ROUNDNAMEFILE"
roundnamefile.label = Round Name Textfile
#roundnamefile.y = 0
#roundnamefile.x = 0

# Add a cancel button with default label
cb.type = cancelbutton

db.type = defaultbutton
"