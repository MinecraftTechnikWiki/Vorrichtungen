# Alle eventuell erhaltenen Fortschritte werden entfernt.
advancement revoke @a[advancements={dimensions-sensor:v2ende=true}] only dimensions-sensor:v2ende
advancement revoke @a[advancements={dimensions-sensor:v2oberwelt=true}] only dimensions-sensor:v2oberwelt
advancement revoke @a[advancements={dimensions-sensor:v2nether=true}] only dimensions-sensor:v2nether
advancement revoke @a[advancements={dimensions-sensor:v2dimension_geaendert=true}] only dimensions-sensor:v2dimension_geaendert

# Ein eventuell vorhandenes Etikett wird entfernt.
tag @a[tag=EtiDimS.2Auswahl] remove EtiDimS.2Auswahl

# Der Stock wird wieder entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigDimS.2Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird auch der Drop entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigDimS.2Alle:true}] run kill @s

# Der dauerhaft geladene Chunk wird deaktiviert.
forceload remove ~ ~
