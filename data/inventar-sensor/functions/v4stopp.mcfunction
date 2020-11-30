# Das Punkte-Ziel wird wieder entfernt.
scoreboard objectives remove PZInvS.4Drop

# Alle Eigenschaften des NBT-Speichers werden gelöscht.
data remove storage inventar-sensor:v4daten "EigInvS.4ID"
data remove storage inventar-sensor:v4daten "EigInvS.4Stapel"
data remove storage inventar-sensor:v4daten "EigInvS.4SucheDrop"
data remove storage inventar-sensor:v4daten "EigInvS.4Drop"
data remove storage inventar-sensor:v4daten "EigInvS.4Inventar"

# Alle Gegenstände mit der Eigenschaft werden entfernt.
clear @a minecraft:stick{EigInvS.4Alle:true}
clear @a minecraft:mossy_stone_brick_wall{EigInvS.4Alle:true}
clear @a minecraft:stone_bricks{EigInvS.4Alle:true}
clear @a minecraft:wither_rose{EigInvS.4Alle:true}
clear @a minecraft:red_mushroom_block{EigInvS.4Alle:true}
clear @a minecraft:lily_pad{EigInvS.4Alle:true}

# Falls Gegenstände auf dem Boden liegen werden sie ebenfalls gelöscht.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigInvS.4Alle:true} } }]
