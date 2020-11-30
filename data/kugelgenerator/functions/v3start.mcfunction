# Es werden zwei Punktestand-Ziele für die Horizontale und die Vertikale erstellt. Dabei funktioniert das erste auch als Auslöser für den Spieler.
scoreboard objectives add PZKugelG.3Hor trigger ["Kugelgenerator.3: ",{"text":"Auslöser und horizontale Position","bold":true}]
scoreboard objectives add PZKugelG.3Vert dummy ["Kugelgenerator.3: ",{"text":"Vertikale Position","bold":true}]

# Die Kugel-Größe wird auf drei gesetzt.
scoreboard players set VarKugelG.3Groesse PZKugelG.3Hor 3

# Spielern im Radius von 25 Metern wird der Kugelgenerator-Rüstungsständer in die Hand gegeben.
give @a[distance=..25] minecraft:armor_stand{kugelgenerator:"v3gegenstand",display:{Lore:['"Platziere den Rüstungsständer"','"um eine Kugel"','"generieren zu lassen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKugelG.3Alle","EtiKugelG.3Mittelpunkt","EtiKugelG.3Erstellen"]} } 16

# Für die Option ob die generierte Kugel hohl oder ausgefüllt sein soll, wird ein Rüstungsständer erzeugt der Wahrheitswerte im Namen speichern kann.
summon minecraft:armor_stand ~ ~1 ~ {Small:true,Marker:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiKugelG.3Alle","EtiKugelG.3Hohl"]}
