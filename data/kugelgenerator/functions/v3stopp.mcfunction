# Die beiden Punktestand-Ziele werden entfernt.
scoreboard objectives remove PZKugelG.3Hor
scoreboard objectives remove PZKugelG.3Vert

# Die größte Kugel hat einen Radius von 23 Metern , deshalb wird bei der Stelle jeder Kugel dieser Bereich durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~-23 ~-23 ~-23 ~ ~23 ~ minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~ ~-23 ~ ~23 ~23 ~23 minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~-23 ~-23 ~23 ~ ~23 ~ minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~ ~-23 ~ ~23 ~23 ~-23 minecraft:air replace minecraft:coarse_dirt

# Die Rüstungsständer als Gegenstand im Inventar, als Drop in der Welt oder als Objekt werden entfernt.
clear @a[distance=..25] minecraft:armor_stand{kugelgenerator:"v3gegenstand"}
tag @e[type=minecraft:item,nbt={Item:{tag:{kugelgenerator:"v3gegenstand"} } }] add EtiKugelG.3Alle
kill @e[tag=EtiKugelG.3Alle]
