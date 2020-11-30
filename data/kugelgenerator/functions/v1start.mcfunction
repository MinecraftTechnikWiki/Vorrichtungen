# Es werden zwei Punktestand-Ziele für die Horizontale und Vertikale erstellt.
scoreboard objectives add PZKugelG.1Hor dummy ["Kugelgenerator.1: ",{"text":"Horizontale Position","bold":true}]
scoreboard objectives add PZKugelG.1Vert dummy ["Kugelgenerator.1: ",{"text":"Vertikale Position","bold":true}]

# Spielern in einem Umkreis von 25 Metern werden 16 Rüstungsständer in die Hand gegeben.
give @a[distance=..25] minecraft:armor_stand{kugelgenerator:"v1gegenstand",display:{Lore:['"Platziere den Rüstungsständer"','"um eine Kugel"','"generieren zu lassen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Mittelpunkt","EtiKugelG.1Erstellen"]} } 16
