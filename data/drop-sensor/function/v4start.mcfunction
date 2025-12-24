# Ein Rüstungsständer wird erstellt, auf dem eine Güterlore Platz findet.
summon minecraft:armor_stand ~ ~1 ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiDrSen.4Alle"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Tags:["EtiDrSen.4Alle","EtiDrSen.4Sensor"]}]}

# Spieler im Umkreis von 25 Blöcken bekommen zwei Stöcke, welche für das Erfassen der droppenden Blöcke und Objekte benutzt werden können.
give @a[distance=..25] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um anzuzeigen zu lassen ob der","Block Drops hinterlassen kann"],minecraft:custom_name={text:"Droppt Block?",color:"dark_purple",bold:true},minecraft:custom_data={EigDrSen.4Alle:true,EigDrSen.4Block:true},minecraft:enchantment_glint_override=true]

give @a[distance=..25] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um anzuzeigen zu lassen ob die","Kreatur Drops hinterlassen kann"],minecraft:custom_name={text:"Droppt Kreatur?",color:"dark_purple",bold:true},minecraft:custom_data={EigDrSen.4Alle:true,EigDrSen.4Objekt:true},minecraft:enchantment_glint_override=true]
