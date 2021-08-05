# Das noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiDimS.3Auswahl] remove EtiDimS.3Auswahl

# Der Stock wird wieder entfernt.
clear @a minecraft:stick{EigDimS.3Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird auch der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigDimS.3Alle:true} } }]

# Der dauerhaft geladene Chunk wird deaktiviert.
forceload remove ~ ~
