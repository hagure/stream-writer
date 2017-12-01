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
textfiledir.label = Please choose the textfile directory where images will be copied to.
#textfiledir.rely = 20
textfiledir.default = "$MASTERDIR"
textfiledir.filetype = directory
textfiledir.width = 700
textfiledir.placeholder = path/to/textfile/image/directory

-

exportdir.type = openbrowser
exportdir.label = Please choose the directory where data & optimized images will be exported to.
#exportdir.rely = 20
exportdir.default = "$EXPORTDIR"
exportdir.filetype = directory
exportdir.width = 700
exportdir.placeholder = path/to/export/directory/

-

serverip.type = textfield
serverip.default = 50.56.36.22
serverip.label = Server IP
#serverip.y = 0
#serverip.x = 0

# Choose Which Actions to Run
serveruser.type = textfield
serveruser.default = jshin
serveruser.label = Server User
#serveruser.y = 0
#serveruser.x = 0

# Choose Which Actions to Run
serverpath.type = textfield
serverpath.default = feeds/urapidflow/import/images
serverpath.label = Server Path
#serverpath.y = 0
#serverpath.x = 0

# Add a cancel button with default label
cb.type = cancelbutton

db.type = defaultbutton
"