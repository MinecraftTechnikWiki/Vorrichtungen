# Das eventuell vorhandene Etikett wird entfernt.
tag @a[tag=EtiBiomS.3Auswahl] remove EtiBiomS.3Auswahl

# Der Stock wird aus dem Inventar aller Spieler entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigBiomS.3Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBiomS.3Alle:true}] run kill @s

# Der Chunk wird entladen.
forceload remove ~ ~
