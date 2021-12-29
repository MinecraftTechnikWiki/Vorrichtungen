# Die beiden Punktestand-Ziele werden wieder entfernt.
scoreboard objectives remove PZKugelG.2Hor
scoreboard objectives remove PZKugelG.2Vert

tag @a[tag=EtiKugelG.2Auswahl] remove EtiKugelG.2Auswahl

# An der Stelle der Kugel-Mitte wird ein 14*14*14 Bereich mit grober Erde durch Luft ersetzt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Mittelpunkt] run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 minecraft:air replace minecraft:coarse_dirt

# Die Rüstungsständer in der Hand, als Drop oder als Objekt in der Welt werden entfernt.
clear @a[distance=..25] minecraft:armor_stand{EigKugelG.2Alle:true}
tag @e[type=minecraft:item,nbt={Item:{tag:{EigKugelG.2Alle:true} } }] add EtiKugelG.2Alle
kill @e[tag=EtiKugelG.2Alle]
