# Das Punkte-Ziel wird gelöscht.
scoreboard objectives remove PZSlotS.3Slot

# Die Gegenstände mit der speziellen Eigenschaft werden gelöscht.
clear @a *[minecraft:custom_data~{EigSlotS.3Alle:true}]

# Falls die Gegenstände gedroppt wurden, werden sie ebenfalls gelöscht.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSlotS.3Alle:true}] run kill @s
