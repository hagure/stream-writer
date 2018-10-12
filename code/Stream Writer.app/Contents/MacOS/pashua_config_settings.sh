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
# Player 1 Name Field
p1namefile.type = textfield
p1namefile.default = "$P1NAMEFILE"
p1namefile.label = Player 1 Name Textfile
#p1namefile.y = 0
#p1namefile.x = 0

# Player 1 Score Field
p1scorefile.type = textfield
p1scorefile.default = "$P1SCOREFILE"
p1scorefile.label = Player 1 Score Textfile
#p1scorefile.y = 0
#p1scorefile.x = 0

# Player 2 Name Field
p2namefile.type = textfield
p2namefile.default = "$P2NAMEFILE"
p2namefile.label = Player 2 Name Textfile
p2namefile.y = 169
p2namefile.x = 350

# Player 2 Score Field
p2scorefile.type = textfield
p2scorefile.default = "$P2SCOREFILE"
p2scorefile.label = Player 2 Score Textfile
p2scorefile.y = 107
p2scorefile.x = 350


# Game Name Field
gamenamefile.type = textfield
gamenamefile.default = "$GAMENAMEFILE"
gamenamefile.label = Game Name Textfile
#gamenamefile.y = 0
#gamenamefile.x = 0

# Round Name Field
roundnamefile.type = textfield
roundnamefile.default = "$ROUNDNAMEFILE"
roundnamefile.label = Round Name Textfile
roundnamefile.y = 45
roundnamefile.x = 350

# Player 1 Name Button
p1namefiledefault.type = button
p1namefiledefault.label = Default
p1namefiledefault.x = 200
p1namefiledefault.y = 166

# Player 1 Score Button
p1scorefiledefault.type = button
p1scorefiledefault.label = Default
p1scorefiledefault.x = 200
p1scorefiledefault.y = 103

# Game Name Button
gamenamefiledefault.type = button
gamenamefiledefault.label = Default
gamenamefiledefault.x = 200
gamenamefiledefault.y = 41

# Player 2 Name Button
p2namefiledefault.type = button
p2namefiledefault.label = Default
p2namefiledefault.x = 550
p2namefiledefault.y = 166

# Player 2 Score Button
p2scorefiledefault.type = button
p2scorefiledefault.label = Default
p2scorefiledefault.x = 550
p2scorefiledefault.y = 103

# Round Name Button
roundnamefiledefault.type = button
roundnamefiledefault.label = Default
roundnamefiledefault.x = 550
roundnamefiledefault.y = 41



# Add a cancel button with default label
cb.type = cancelbutton

db.type = defaultbutton
"