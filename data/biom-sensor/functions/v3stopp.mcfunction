# Das eventuell vorhandene Etikett wird entfernt.
tag @a[tag=EtiBiomS.3Auswahl] remove EtiBiomS.3Auswahl

# Der Stock wird aus dem Inventar aller Spieler entfernt.
clear @a minecraft:stick{EigBiomS.3Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigBiomS.3Alle:true} } }]

# Der Chunk wird entladen.
forceload remove ~ ~