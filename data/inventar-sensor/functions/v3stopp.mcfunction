# Die Punkte-Ziele werden wieder entfernt.
scoreboard objectives remove PZInvS.3Ruest
scoreboard objectives remove PZInvS.3Schnell
scoreboard objectives remove PZInvS.3Slots

# Der Fortschritt für das Ändern des Inventars wird wieder genommen.
advancement revoke @a[advancements={inventar-sensor:v3inventar_geaendert=true}] only inventar-sensor:v3inventar_geaendert

# Alle Gegenstände mit der bestimmten Eigenschaft werden wieder entfernt.
clear @a *[minecraft:custom_data~{EigInvS.3Alle:true}]

# Falls man Gegenstände gedroppt hat, werden sie ebenfalls entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigInvS.3Alle:true}] run kill @s
