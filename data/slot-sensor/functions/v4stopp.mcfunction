# Das Punkte-Ziel wird wieder entfernt.
scoreboard objectives remove PZSlotS.4Slots

# Die Eigenschaften des NBT-Speichers werden gelöscht.
data remove storage slot-sensor:v4daten "EigSlotS.4Inventar"
data remove storage slot-sensor:v4daten "EigSlotS.4Slot"

# Alle Gegenstände mit der entsprechenden Eigenschaft werden gelöscht.
clear @a minecraft:ink_sac{EigSlotS.4Alle:true}
clear @a minecraft:green_dye{EigSlotS.4Alle:true}
clear @a minecraft:egg{EigSlotS.4Alle:true}
clear @a minecraft:glowstone_dust{EigSlotS.4Alle:true}
clear @a minecraft:lava_bucket{EigSlotS.4Alle:true}

# Falls die Gegenstände gedroppt wurden, werden sie ebenfalls gelöscht.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigSlotS.4Alle:true} } }]
