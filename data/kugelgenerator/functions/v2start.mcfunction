# Eswerden zwei Punktestand-Ziele für die Horizontale und die vertikale erstellt, wobei das erstere gleichzeitig auch als Auslöser für den Spieler dient.
scoreboard objectives add PZKugelG.2Hor trigger ["Kugelgenerator.2: ",{"text":"Auslöser und horizontale Position","bold":true}]
scoreboard objectives add PZKugelG.2Vert dummy ["Kugelgenerator.2: ",{"text":"Vertikale Position","bold":true}]

scoreboard players set VarKugelG.2Groesse PZKugelG.2Hor 3

# Spieler in einem Umkreis von 15 Metern erhalten einen Rüstungsständer den sie für das Generieren einer Kugel platzieren können.
give @a[distance=..15] minecraft:armor_stand{EigKugelG.2Alle:true,EigKugelG.2Ausloeser:true,display:{Name:'{"text":"Kugelgenerator","color":"dark_purple","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Kugel"','"generieren zu lassen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Mittelpunkt","EtiKugelG.2Erstellen","EtiKugelG.2Generieren"]} } 16
