# Falls sich kein Block bei den Generatoren befindet, wird der jeweilige Block platziert
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Bronze] run setblock ~ ~ ~ minecraft:bricks keep
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Eisen] run setblock ~ ~ ~ minecraft:iron_block keep
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Gold] run setblock ~ ~ ~ minecraft:gold_block keep

# Jeden Tick wird der Wert aller Generatoren um eins erhöht
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiDropG.2Alle] PZDropG.2Zeit 1

# Wenn die Generatoren den Wert 20 erreichen erzeugen sie ihren jeweilgen Barren über sich, welcher ein wenig in die Höhe springt
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Bronze,scores={PZDropG.2Zeit=20}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:brick",Count:1b,tag:{dropgenerator:"v2gegenstand",display:{Name:'{"text":"Bronzebarren"}'} } },Motion:[0.0d,0.3d,0.0d],Tags:["EtiDropG.2Alle"] }
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Eisen,scores={PZDropG.2Zeit=20}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{dropgenerator:"v2gegenstand",display:{Name:'{"text":"Eisenbarren"}'} } },Motion:[0.0d,0.3d,0.0d],Tags:["EtiDropG.2Alle"] }
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Gold,scores={PZDropG.2Zeit=20}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{dropgenerator:"v2gegenstand",display:{Name:'{"text":"Goldbarren"}'} } },Motion:[0.0d,0.3d,0.0d],Tags:["EtiDropG.2Alle"] }

# Je nach Generatortyp wird die Zeit bei 200, 400 oder 800 wieder auf null zurückgesetzt
scoreboard players reset @e[type=minecraft:armor_stand,tag=EtiDropG.2Bronze,scores={PZDropG.2Zeit=200..}] PZDropG.2Zeit
scoreboard players reset @e[type=minecraft:armor_stand,tag=EtiDropG.2Eisen,scores={PZDropG.2Zeit=400..}] PZDropG.2Zeit
scoreboard players reset @e[type=minecraft:armor_stand,tag=EtiDropG.2Gold,scores={PZDropG.2Zeit=800..}] PZDropG.2Zeit
