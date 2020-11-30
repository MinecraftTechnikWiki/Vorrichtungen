# Das Punkte-Ziel wird gelöscht.
scoreboard objectives remove PZSlotS.3Slot

# Die Gegenstände mit der speziellen Eigenschaft werden gelöscht.
clear @a minecraft:observer{EigSlotS.3Alle:true}
clear @a minecraft:redstone{EigSlotS.3Alle:true}
clear @a minecraft:glass{EigSlotS.3Alle:true}
clear @a minecraft:quartz_slab{EigSlotS.3Alle:true}

# Falls die Gegenstände gedroppt wurden, werden sie ebenfalls gelöscht.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigSlotS.3Alle:true} } }]
