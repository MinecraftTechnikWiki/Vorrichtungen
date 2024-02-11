# Der Fortschritt wird entfernt.
advancement revoke @a[advancements={biom-sensor:v2biom_leere=true}] only biom-sensor:v2biom_leere

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiBiomS.2Auswahl] remove EtiBiomS.2Auswahl

# Der Stock wird entfernt.
clear @a minecraft:stick{EigBiomS.2Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigBiomS.2Alle:true} } }]

# Der Chunk wird entladen.
forceload remove ~ ~