# Das noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiDimS.3Auswahl] remove EtiDimS.3Auswahl

# Der Stock wird wieder entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigDimS.3Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird auch der Drop entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigDimS.3Alle:true}] run kill @s

# Der dauerhaft geladene Chunk wird deaktiviert.
forceload remove ~ ~
