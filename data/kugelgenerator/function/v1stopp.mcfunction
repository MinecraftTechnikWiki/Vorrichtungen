# Die beiden Punkte-Ziel werden entfernt
scoreboard objectives remove PZKugelG.1Hor
scoreboard objectives remove PZKugelG.1Vert

# An der Position der Kugel, wird die gesamte grobe Erde durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Mittelpunkt] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:coarse_dirt

# Die Gegenstände wie auch die Rüstungsständer in der Welt werden entfernt.
clear @a[distance=..25] minecraft:armor_stand[minecraft:custom_data~{EigKugelG.1Alle:true}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigKugelG.1Alle:true}] run kill @s
kill @e[tag=EtiKugelG.1Alle]
