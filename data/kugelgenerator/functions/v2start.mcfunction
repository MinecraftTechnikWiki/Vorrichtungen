# Eswerden zwei Punktestand-Ziele für die Horizontale und die vertikale erstellt, wobei das erstere gleichzeitig auch als Auslöser für den Spieler dient.
scoreboard objectives add PZKugelG.2Hor trigger ["Kugelgenerator.2: ",{"text":"Auslöser und horizontale Position","bold":true}]
scoreboard objectives add PZKugelG.2Vert dummy ["Kugelgenerator.2: ",{"text":"Vertikale Position","bold":true}]

# Spieler in einem Umkreis von 25 Metern erhalten einen Rüstungsständer den sie für das Generieren einer Kugel platzieren können.
give @a[distance=..25] minecraft:armor_stand{kugelgenerator:"v2gegenstand",display:{Lore:['"Platziere den Rüstungsständer"','"um eine Kugel"','"generieren zu lassen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Mittelpunkt","EtiKugelG.2Erstellen"]} } 16
scoreboard players set VarKugelG.2Groesse PZKugelG.2Hor 3
