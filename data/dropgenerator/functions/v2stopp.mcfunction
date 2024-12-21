# Das Punkte-Ziel wird wieder gelöscht.
scoreboard objectives remove PZDropG.2Tick

# Gegenstände von und für die Generatoren werden aus dem Inventar der Spieler gelöscht.
clear @a *[minecraft:custom_data~{EigDropG.2Alle:true}]

# Wenn sich an der Stelle der Generatoren ein Block befindet, wird dieser durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Generator] unless block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:air replace

# Barren die auf dem Boden liegen und Generatoren werden gelöscht.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigDropG.2Alle:true}] run kill @s
kill @e[tag=EtiDropG.2Alle]
