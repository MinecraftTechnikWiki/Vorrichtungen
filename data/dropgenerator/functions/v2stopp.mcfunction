# Das Punkte-Ziel wird wieder gelöscht.
scoreboard objectives remove PZDropG.2Tick

# Gegenstände von und für die Generatoren werden aus dem Inventar gelöscht der Spieler gelöscht.
clear @a minecraft:armor_stand{EigDropG.2Alle:true}
clear @a minecraft:copper_ingot{EigDropG.2Alle:true}
clear @a minecraft:iron_ingot{EigDropG.2Alle:true}
clear @a minecraft:gold_ingot{EigDropG.2Alle:true}

# Wenn sich an der Stelle der Generatoren ein Block befindet, wird dieser durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Generator] unless block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:air replace

# Barren die auf dem Boden liegen und Generatoren werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigDropG.2Alle:true} } }] add EtiDropG.2Alle
kill @e[tag=EtiDropG.2Alle]
