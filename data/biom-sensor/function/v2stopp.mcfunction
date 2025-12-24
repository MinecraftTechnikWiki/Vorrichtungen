# Der Fortschritt wird entfernt.
advancement revoke @a[advancements={biom-sensor:v2biom_leere=true}] only biom-sensor:v2biom_leere

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiBiomS.2Auswahl] remove EtiBiomS.2Auswahl

# Der Stock wird entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigBiomS.2Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBiomS.2Alle:true}] run kill @s

# Der Chunk wird entladen.
forceload remove ~ ~
