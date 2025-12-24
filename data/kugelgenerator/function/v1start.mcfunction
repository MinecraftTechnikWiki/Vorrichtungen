# Es werden zwei Punkte-Ziele für die Horizontale und Vertikale erstellt.
scoreboard objectives add PZKugelG.1Hor dummy ["Kugelgenerator.1: ",{text:"Horizontale Position",bold:true}]
scoreboard objectives add PZKugelG.1Vert dummy ["Kugelgenerator.1: ",{text:"Vertikale Position",bold:true}]

# Spielern in einem Umkreis von 15 Metern werden 16 Rüstungsständer in die Hand gegeben.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,NoGravity:true,Small:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Mittelpunkt","EtiKugelG.1Erstellen","EtiKugelG.1Generieren"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","um eine Kugel","generieren zu lassen"],minecraft:custom_name={text:"Kugelgenerator",color:"dark_purple",bold:true},minecraft:custom_data={EigKugelG.1Alle:true}] 16
