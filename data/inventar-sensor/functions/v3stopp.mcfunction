# Die Punkte-Ziele werden wieder entfernt.
scoreboard objectives remove PZInvS.3Ruest
scoreboard objectives remove PZInvS.3Schnell
scoreboard objectives remove PZInvS.3Slots

# Der Fortschritt für das Ändern des Inventars wird wieder genommen.
advancement revoke @a[advancements={inventar-sensor:v3inventar=true}] only inventar-sensor:v3inventar

# Alle Gegenstände mit der bestimmten Eigenschaft werden wieder entfernt.
clear @a minecraft:chiseled_quartz_block{EigInvS.3Alle:true}
clear @a minecraft:golden_chestplate{EigInvS.3Alle:true}
clear @a minecraft:stone_bricks{EigInvS.3Alle:true}
clear @a minecraft:red_nether_brick_stairs{EigInvS.3Alle:true}
clear @a minecraft:oak_boat{EigInvS.3Alle:true}
clear @a minecraft:cactus{EigInvS.3Alle:true}
clear @a minecraft:shield{EigInvS.3Alle:true}

# Falls man Gegenstände gedroppt hat, werden sie ebenfalls entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigInvS.3Alle:true} } }]
