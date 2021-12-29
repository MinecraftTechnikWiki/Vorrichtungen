# Falls sich kein Block bei den Generatoren befindet, wird der jeweilige Block platziert.
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Kupfer] run setblock ~ ~ ~ minecraft:copper_block keep
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Eisen] run setblock ~ ~ ~ minecraft:iron_block keep
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Gold] run setblock ~ ~ ~ minecraft:gold_block keep

# Jeden Tick wird der Wert aller Generatoren um eins erhöht.
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiDropG.2Generator] PZDropG.2Tick 1

# Wenn die Generatoren den Wert 20 erreichen erzeugen sie ihren jeweilgen Barren über sich, welcher ein wenig in die Höhe springt.
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Kupfer,scores={PZDropG.2Tick=20}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:copper_ingot",Count:1b,tag:{EigDropG.2Alle:true} },Motion:[0.0d,0.3d,0.0d],Tags:["EtiDropG.2Alle"] }
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Eisen,scores={PZDropG.2Tick=20}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{EigDropG.2Alle:true} },Motion:[0.0d,0.3d,0.0d],Tags:["EtiDropG.2Alle"] }
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Gold,scores={PZDropG.2Tick=20}] run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{EigDropG.2Alle:true} },Motion:[0.0d,0.3d,0.0d],Tags:["EtiDropG.2Alle"] }

# Je nach Generatortyp wird die Zeit bei 200, 400 oder 800 wieder auf null zurückgesetzt.
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiDropG.2Kupfer,scores={PZDropG.2Tick=200..}] PZDropG.2Tick 0
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiDropG.2Eisen,scores={PZDropG.2Tick=400..}] PZDropG.2Tick 0
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiDropG.2Gold,scores={PZDropG.2Tick=800..}] PZDropG.2Tick 0

# Wenn der Entfernen-Rüstungsständer neben einen Generator gesetzt wurde, werden diese entfernt.
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Entfernen] at @e[distance=..2,type=minecraft:armor_stand,tag=EtiDropG.2Generator] run setblock ~ ~ ~ minecraft:air replace
execute at @e[type=minecraft:armor_stand,tag=EtiDropG.2Entfernen] run kill @e[distance=..2,tag=EtiDropG.2Alle,sort=nearest,limit=4]
