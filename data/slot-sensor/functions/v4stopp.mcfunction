# Das Punkte-Ziel wird wieder entfernt.
scoreboard objectives remove PZSlotS.4Slots

# Die Eigenschaften des Datenspeichers werden gelöscht.
data remove storage slot-sensor:v4daten "EigSlotS.4Inventar"
data remove storage slot-sensor:v4daten "EigSlotS.4Slot"

# Alle Gegenstände mit der entsprechenden Eigenschaft werden gelöscht.
clear @a *[minecraft:custom_data~{EigSlotS.4Alle:true}]

# Falls die Gegenstände gedroppt wurden, werden sie ebenfalls gelöscht.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSlotS.4Alle:true}] run kill @s
