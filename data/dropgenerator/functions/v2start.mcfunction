# Das Punktestand-Ziel für die Zeitmessung wird erstellt
scoreboard objectives add PZDropG.2Zeit dummy ["Dropgenerator.2: ",{"text":"Zeit bis ein Barren erscheint","bold":true}]

# Spieler in einem Umkreis von 15 Metern erhalten für Bronze-, Eisen- und Goldgenerator die jeweiligen Rüstungsständer in das Inventar
give @a[distance=..15] minecraft:armor_stand{dropgenerator:"v2gegenstand",display:{Name:'{"text":"Bronze","color":"dark_red","bold":true}',Lore:['"Platziere den Rüstungsständer"','"auf dem Boden"','"um einen Bronzegenerator"','"zu kreieren"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiDropG.2Alle","EtiDropG.2Bronze"]} } 16
give @a[distance=..15] minecraft:armor_stand{dropgenerator:"v2gegenstand",display:{Name:'{"text":"Eisen","color":"gray","bold":true}',Lore:['"Platziere den Rüstungsständer"','"auf dem Boden"','"um einen Bronzegenerator"','"zu kreieren"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiDropG.2Alle","EtiDropG.2Eisen"]} } 16
give @a[distance=..15] minecraft:armor_stand{dropgenerator:"v2gegenstand",display:{Name:'{"text":"Gold","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"auf dem Boden"','"um einen Bronzegenerator"','"zu kreieren"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiDropG.2Alle","EtiDropG.2Gold"]} } 16
