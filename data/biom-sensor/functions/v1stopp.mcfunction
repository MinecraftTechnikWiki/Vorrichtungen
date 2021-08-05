# Der Fortschritt wird entfernt.
advancement revoke @a[advancements={biom-sensor:v1biom_leere=true}] only biom-sensor:v1biom_leere

tag @a[tag=EtiBiomS.1Auswahl] remove EtiBiomS.1Auswahl

# Der Stock wird entfernt.
clear @a minecraft:stick{EigBiomS.1Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigBiomS.1Alle:true} } }]
