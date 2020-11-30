# Die beiden Punktestand-Ziele werden wieder entfernt.
scoreboard objectives remove PZKugelG.2Hor
scoreboard objectives remove PZKugelG.2Vert

# An der Stelle der Kugel-Mitte wird ein 14*14*14 Bereich mit grober Erde durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Mittelpunkt] run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:air replace minecraft:coarse_dirt

# Die Rüstungsständer in der Hand, als Drop oder als Objekt in der Welt werden entfernt.
clear @a[distance=..25] minecraft:armor_stand{kugelgenerator:"v2gegenstand"}
tag @e[type=minecraft:item,nbt={Item:{tag:{kugelgenerator:"v2gegenstand"} } }] add EtiKugelG.2Alle
kill @e[tag=EtiKugelG.2Alle]
