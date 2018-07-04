pashua_config_main="

# Set window title
*.title = "$1"
*.autosavekey = stream-writer
*.transparency = .7

# Player 1 Name
p1name.type = combobox
#p1name.label = Player 1
p1name.placeholder = Player 1
p1name.default = $P1NAME
p1name.option = $P1NAME
p1name.completion = 2
p1name.mandatory = 1
p1name.width = 220
p1name.tooltip = Player 1 Name
p1name.x = 5
p1name.y = 20

# Player 2 Name
p2name.type = combobox
#p2name.label = Player 2
p2name.placeholder = Player 2
p2name.default = $P2NAME
p2name.option = $P2NAME
p2name.completion = 2
p2name.mandatory = 1
p2name.width = 220
p2name.tooltip = Player 2 Name
p2name.x = 553
p2name.y = 20

# Swap Players Button
swapplayers.type = button
swapplayers.label = <- SWAP PLAYERS ->
swapplayers.x = 300
swapplayers.y = 0

# Swap Scores Button
swapscores.type = button
swapscores.label = <- SWAP  SCORES -> 
swapscores.x = 300
swapscores.y = 40

# Swap Both Button
swapboth.type = button
swapboth.label = <- SWAP      BOTH -> 
swapboth.x = 300
swapboth.y = 20

# Player 1 Score
p1score.type = textfield
p1score.default = $P1SCORE
p1score.mandatory = 1
p1score.width = 30
p1score.tooltip = Player 1 Score
p1score.x = 245
p1score.y = 23

# Player 1 Score + Button
p1scoreup.type = button
p1scoreup.label = +
p1scoreup.x = 215
p1scoreup.y = 40

# Player 1 Score - Button
p1scoredown.type = button
p1scoredown.label = -
p1scoredown.x = 215
p1scoredown.y = 0

# Player 2 Score
p2score.type = textfield
p2score.default = $P2SCORE
p2score.mandatory = 1
p2score.width = 30
p2score.tooltip = Player 2 Score
p2score.x = 500
p2score.y = 23

# Player 2 Score + Button
p2scoreup.type = button
p2scoreup.label = +
p2scoreup.x = 465
p2scoreup.y = 40

# Player 2 Score - Button
p2scoredown.type = button
p2scoredown.label = -
p2scoredown.x = 465
p2scoredown.y = 0

# Reset Button
reset.type = button
reset.label = Reset
reset.x = 650
reset.y = 0

# Spacer for OK Button
spacer.type = text
spacer.text = 
spacer.x = 600
spacer.y = 30

# Buttons
#sb.type = button
#sb.label = Settings
#cb.type = cancelbutton
db.type = defaultbutton

"