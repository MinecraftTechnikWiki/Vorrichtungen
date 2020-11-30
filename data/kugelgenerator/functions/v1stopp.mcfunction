# Die beiden Punktestand-Ziel werden entfernt
scoreboard objectives remove PZKugelG.1Hor
scoreboard objectives remove PZKugelG.1Vert

# An der Position der Kugel, wird die gesamte grobe Erde durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Mittelpunkt] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:coarse_dirt

# Die Gegenstände wie auch die Rüstungsständer in der Welt werden entfernt.
clear @a[distance=..25] minecraft:armor_stand{kugelgenerator:"v1gegenstand"}
tag @e[type=minecraft:item,nbt={Item:{tag:{kugelgenerator:"v1gegenstand"} } }] add EtiKugelG.1Alle
kill @e[tag=EtiKugelG.1Alle]
