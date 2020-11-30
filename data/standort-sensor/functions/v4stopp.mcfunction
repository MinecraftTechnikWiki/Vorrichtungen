# Die Rüstungsständer im Inventar werden entfernt.
clear @a minecraft:armor_stand{EigStaOS.4Alle:true}

# Die Rüstungsständer als Drop wie auch als Objekt werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigStaOS.4Alle:true} } }] add EtiStaOS.4Alle
kill @e[tag=EtiStaOS.4Alle]
