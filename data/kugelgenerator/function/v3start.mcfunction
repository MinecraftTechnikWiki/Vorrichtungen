# Es werden zwei Punkte-Ziele für die Horizontale und die Vertikale erstellt. Dabei funktioniert das erste auch als Auslöser für den Spieler.
scoreboard objectives add PZKugelG.3Hor trigger ["Kugelgenerator.3: ",{text:"Auslöser und horizontale Position",bold:true}]
scoreboard objectives add PZKugelG.3Vert dummy ["Kugelgenerator.3: ",{text:"Vertikale Position",bold:true}]

# Die Kugel-Größe wird auf drei gesetzt.
scoreboard players set VarKugelG.3Groesse PZKugelG.3Hor 3

# Spielern im Radius von 15 Metern wird der Kugelgenerator-Rüstungsständer in die Hand gegeben.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,NoGravity:true,Small:true,Tags:["EtiKugelG.3Alle","EtiKugelG.3Mittelpunkt","EtiKugelG.3Erstellen","EtiKugelG.3Generieren"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","um eine Kugel","generieren zu lassen"],minecraft:custom_name={text:"Kugelgenerator",color:"dark_purple",bold:true},minecraft:custom_data={EigKugelG.3Alle:true,EigKugelG.3Ausloeser:true}] 16

# Für die Option ob die generierte Kugel hohl oder ausgefüllt sein soll, wird ein Markierer erzeugt der Wahrheitswerte im Namen speichern kann.
summon minecraft:marker ~ ~1 ~ {CustomName:{text:"wahr",color:"green",bold:true},Tags:["EtiKugelG.3Alle","EtiKugelG.3Hohl"]}
