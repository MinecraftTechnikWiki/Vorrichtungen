# Das Punkte-Ziel für die Zeitmessung wird erstellt.
scoreboard objectives add PZDropG.2Tick dummy ["Dropgenerator.2: ",{text:"Ticks bis ein Barren erscheint",bold:true}]

# Spieler in einem Umkreis von 15 Metern erhalten für Kupfer-, Eisen- und Goldgenerator die jeweiligen Rüstungsständer in das Inventar und einen Rüstungsständer mit dem man die Generatoren wieder entfernen kann.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,NoGravity:true,Small:true,Tags:["EtiDropG.2Alle","EtiDropG.2Generator","EtiDropG.2Kupfer"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","auf dem Boden","um einen Kupfergenerator","zu kreieren"],minecraft:custom_name={text:"Kupfergenerator",color:"#8e402a",bold:true},minecraft:custom_data={EigDropG.2Alle:true}] 16

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,NoGravity:true,Small:true,Tags:["EtiDropG.2Alle","EtiDropG.2Generator","EtiDropG.2Eisen"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","auf dem Boden","um einen Eisengenerator","zu kreieren"],minecraft:custom_name={text:"Eisengenerator",color:"gray",bold:true},minecraft:custom_data={EigDropG.2Alle:true}] 16

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,NoGravity:true,Small:true,Tags:["EtiDropG.2Alle","EtiDropG.2Generator","EtiDropG.2Gold"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","auf dem Boden","um einen Goldgenerator","zu kreieren"],minecraft:custom_name={text:"Goldgenerator",color:"gold",bold:true},minecraft:custom_data={EigDropG.2Alle:true}] 16

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,NoGravity:true,Small:true,Tags:["EtiDropG.2Alle","EtiDropG.2Entfernen"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","neben einen Generator","um diesen zu entfernen"],minecraft:custom_name={text:"Generator entfernen",color:"red",bold:true},minecraft:custom_data={EigDropG.2Alle:true}] 16
