# Das Punktestand-Ziel wird wieder gelöscht
scoreboard objectives remove PZDropG.2Zeit

# Wenn sich an der Stelle der Generatoren ein Block befindet, wird dieser durch Luft ersetzt
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Alle] unless block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:air replace

# Barren die auf dem Boden liegen und Generatoren werden gelöscht
tag @e[type=minecraft:item,nbt={Item:{tag:{dropgenerator:"v2gegenstand"} } }] add EtiDropG.2Alle
kill @e[tag=EtiDropG.2Alle]

# Gegenstände von und für die Generatoren werden aus dem Inventar gelöscht der Spieler gelöscht
clear @a minecraft:armor_stand{dropgenerator:"v2gegenstand"}
clear @a minecraft:brick{dropgenerator:"v2gegenstand"}
clear @a minecraft:iron_ingot{dropgenerator:"v2gegenstand"}
clear @a minecraft:gold_ingot{dropgenerator:"v2gegenstand"}
