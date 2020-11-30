# Alle eventuell erhaltenen Fortschritte werden entfernt.
advancement revoke @a[advancements={dimensions-sensor:v2ende=true}] only dimensions-sensor:v2ende
advancement revoke @a[advancements={dimensions-sensor:v2oberwelt=true}] only dimensions-sensor:v2oberwelt
advancement revoke @a[advancements={dimensions-sensor:v2nether=true}] only dimensions-sensor:v2nether
advancement revoke @a[advancements={dimensions-sensor:v2dimension_geaendert=true}] only dimensions-sensor:v2dimension_geaendert

# Der Stock wird wieder entfernt.
clear @a minecraft:stick{EigDimS.2Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird auch der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigDimS.2Alle:true} } }]

# Der dauerhaft geladene Chunk wird deaktiviert.
forceload remove ~ ~
