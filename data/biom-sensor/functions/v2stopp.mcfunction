# Der Stock wird aus dem Inventar aller Spieler entfernt.
clear @a minecraft:stick{EigBiomS.2Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigBiomS.2Alle:true} } }]
