pashua_config_main="

# Set window title
*.title = "$1"
*.autosavekey = stream-writer
*.transparency = .7

# Round Name
roundname.type = combobox
#roundname.label = Round Name
roundname.placeholder = Round Name
roundname.default = $ROUNDNAME
roundname.option = $ROUNDNAME
roundname.option = Winner's Round 
roundname.option = Loser's Round 
roundname.option = Winner's Finals
roundname.option = Loser's Quarter-Finals
roundname.option = Loser's Semi-Finals
roundname.option = Loser's Finals
roundname.option = Grand Finals

roundname.completion = 2
roundname.width = 170
roundname.tooltip = Round Name
roundname.x = 305
roundname.y = 0

# Player 1 Name
p1name.type = combobox
#p1name.label = Player 1
p1name.placeholder = Player 1
p1name.default = $P1NAME
p1name.option = $P1NAME
p1name.completion = 2
p1name.width = 220
p1name.tooltip = Player 1 Name
p1name.x = 5
p1name.y = 40

# Game Name
gamename.type = combobox
#gamename.label = Game Name
gamename.placeholder = Game Name
gamename.default = $GAMENAME
gamename.option = $GAMENAME
gamename.option = Vampire Savior
gamename.option = Super Turbo
gamename.option = Capcom vs. SNK 2
gamename.completion = 2
gamename.width = 220
gamename.tooltip = Game Name
gamename.x = 5
gamename.y = 0


# Player 2 Name
p2name.type = combobox
#p2name.label = Player 2
p2name.placeholder = Player 2
p2name.default = $P2NAME
p2name.option = $P2NAME
p2name.completion = 2
p2name.width = 220
p2name.tooltip = Player 2 Name
p2name.x = 553
p2name.y = 40

# Swap Players Button
swapplayers.type = button
swapplayers.label = <- SWAP PLAYERS ->
swapplayers.x = 300
swapplayers.y = 20

# Swap Both Button
swapboth.type = button
swapboth.label = <- SWAP      BOTH -> 
swapboth.x = 300
swapboth.y = 40

# Swap Scores Button
swapscores.type = button
swapscores.label = <- SWAP  SCORES -> 
swapscores.x = 300
swapscores.y = 60


# Player 1 Score
p1score.type = textfield
p1score.default = $P1SCORE
p1score.width = 30
p1score.tooltip = Player 1 Score
p1score.x = 245
p1score.y = 43

# Player 1 Score + Button
p1scoreup.type = button
p1scoreup.label = +
p1scoreup.x = 215
p1scoreup.y = 60

# Player 1 Score - Button
p1scoredown.type = button
p1scoredown.label = -
p1scoredown.x = 215
p1scoredown.y = 20

# Player 2 Score
p2score.type = textfield
p2score.default = $P2SCORE
p2score.width = 30
p2score.tooltip = Player 2 Score
p2score.x = 500
p2score.y = 43

# Player 2 Score + Button
p2scoreup.type = button
p2scoreup.label = +
p2scoreup.x = 465
p2scoreup.y = 60

# Player 2 Score - Button
p2scoredown.type = button
p2scoredown.label = -
p2scoredown.x = 465
p2scoredown.y = 20

# Casuals Button
casuals.type = button
casuals.label = Casuals
casuals.x = 550
casuals.y = 0

# Reset Button
reset.type = button
reset.label = Reset
reset.x = 680
reset.y = 0

# Spacer for OK Button
spacer.type = text
spacer.text = 
spacer.x = 565
spacer.y = 30

# Settings Button
sb.type = button
sb.label = Settings
sb.x = 770
sb.y = 60

# Default Button
#cb.type = cancelbutton
db.type = defaultbutton

"