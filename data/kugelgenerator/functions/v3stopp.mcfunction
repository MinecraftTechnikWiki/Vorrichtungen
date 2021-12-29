# Die beiden Punktestand-Ziele werden entfernt.
scoreboard objectives remove PZKugelG.3Hor
scoreboard objectives remove PZKugelG.3Vert

tag @a[tag=EtiKugelG.3Auswahl] remove EtiKugelG.3Auswahl

# Die größte Kugel hat einen Radius von 24 Metern , deshalb wird bei der Stelle jeder Kugel dieser Bereich durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~-24 ~-24 ~-24 ~ ~24 ~ minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~ ~-24 ~ ~24 ~24 ~24 minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~-24 ~-24 ~24 ~ ~24 ~ minecraft:air replace minecraft:coarse_dirt
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.3Mittelpunkt] run fill ~ ~-24 ~ ~24 ~24 ~-24 minecraft:air replace minecraft:coarse_dirt

# Die Rüstungsständer als Gegenstand im Inventar, als Drop in der Welt oder als Objekt werden entfernt.
clear @a[distance=..25] minecraft:armor_stand{EigKugelG.3Alle:true}
tag @e[type=minecraft:item,nbt={Item:{tag:{EigKugelG.3Alle:true} } }] add EtiKugelG.3Alle
kill @e[tag=EtiKugelG.3Alle]
