# Ein Rüstungsständer wird erstellt, auf dem eine Güterlore platz findet.
summon minecraft:armor_stand ~ ~1 ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiDrSen.4Alle"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Tags:["EtiDrSen.4Alle","EtiDrSen.4Sensor"]}]}

# Spieler im Umkreis von 25 Blöcken bekommen zwei Stöcke, welche für das Erfassen der droppenden Blöcke und Objekte benutzt werden können.
give @a[distance=..25] minecraft:stick{EigDrSen.4Alle:true,EigDrSen.4Block:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Droppt Block?","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um anzuzeigen zu lassen ob der"','"Block Drops hinterlassen kann"'] } }
give @a[distance=..25] minecraft:stick{EigDrSen.4Alle:true,EigDrSen.4Kreatur:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Droppt Kreatur?","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um anzuzeigen zu lassen ob die"','"Kreatur Drops hinterlassen kann"'] } }
