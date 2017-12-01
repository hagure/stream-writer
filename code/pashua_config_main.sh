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
p1name.y = 0

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
p2name.x = 550
p2name.y = 0

# Swap Button
reset.type = button
reset.label = <- SWAP PLAYERS ->
reset.x = 300
reset.y = 0

# Player 1 Score
p1score.type = textfield
p1score.default = $P1SCORE
p1score.mandatory = 1
p1score.width = 30
p1score.tooltip = Player 1 Score
p1score.x = 245
p1score.y = 3

# Player 2 Score
p2score.type = textfield
p2score.default = $P2SCORE
p2score.mandatory = 1
p2score.width = 30
p2score.tooltip = Player 2 Score
p2score.x = 500
p2score.y = 3

# Spacer for OK Button
spacer.type = text
spacer.text = 
spacer.x = 600
spacer.y = 10

# Buttons
#sb.type = button
#sb.label = Settings
#cb.type = cancelbutton
db.type = defaultbutton

"