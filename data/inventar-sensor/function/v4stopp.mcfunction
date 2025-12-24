# Das Punkte-Ziel wird wieder entfernt.
scoreboard objectives remove PZInvS.4Drop

# Alle Eigenschaften des Datenspeichers werden gelöscht.
data remove storage inventar-sensor:v4daten "EigInvS.4ID"
data remove storage inventar-sensor:v4daten "EigInvS.4Stapel"
data remove storage inventar-sensor:v4daten "EigInvS.4SucheDrop"
data remove storage inventar-sensor:v4daten "EigInvS.4Drop"
data remove storage inventar-sensor:v4daten "EigInvS.4Inventar"

# Alle Gegenstände mit der Eigenschaft werden entfernt.
clear @a *[minecraft:custom_data~{EigInvS.4Alle:true}]

# Falls Gegenstände auf dem Boden liegen werden sie ebenfalls gelöscht.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigInvS.4Alle:true}] run kill @s
