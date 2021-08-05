# Die Rüstungsständer werden um 90° gedreht.
execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor] at @s run teleport @s ~ ~ ~ ~90 0

# Der Rüstungsständer erhält immer dann das Etikett, wenn er in Richtung des Äquators schaut.
execute as @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run tag @s add EtiStaOS.4Aequator

# Die Rauch- und Totem-Partikel werden im entsprechenden Abstand zum Rüstungsständer erzuegt. Je nach Blickrichtung wird eine andere Partikel-Ausrichtung geladen.
execute at @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Aussen,tag=EtiStaOS.4Aequator] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^5.5 0 0 2 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Aussen,tag=!EtiStaOS.4Aequator] run particle minecraft:campfire_cosy_smoke ^ ^0.5 ^5.5 2 0 0 0 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Innen,tag=EtiStaOS.4Aequator] run particle minecraft:totem_of_undying ^ ^0.5 ^10.5 0 0 5 0.1 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Innen,tag=!EtiStaOS.4Aequator] run particle minecraft:totem_of_undying ^ ^0.5 ^10.5 5 0 0 0.1 10 force @a[distance=..25]

# Das Etikett wird wieder entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Aequator] remove EtiStaOS.4Aequator

# Wenn der Spieler sich innerhalb des grünen Kubuses aufhält, ohne im grauen Kubus zu stehen, erhält er eine positive Rückmeldung, ansonsten eine negative.
execute at @e[type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Innen] positioned ~-10 ~ ~-10 as @a[dx=20,dy=5,dz=20] at @s positioned ~-5 ~-5 ~-5 unless entity @e[dx=10,dy=5,dz=10,type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Aussen,sort=nearest,limit=1] run title @s actionbar ["",{"text":"Kubus(grün) UND (NICHT Kubus(grau)) == ","bold":true},{"text":"wahr","color":"green","bold":true}]
execute as @a[distance=..50] at @s positioned ~-10 ~-5 ~-10 unless entity @e[dx=20,dy=5,dz=20,type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Innen] run title @s actionbar ["",{"text":"Kubus(grün) UND (NICHT Kubus(grau)) == ","bold":true},{"text":"falsch","color":"red","bold":true}]
execute as @a[distance=..50] at @s positioned ~-5 ~-5 ~-5 if entity @e[dx=10,dy=5,dz=10,type=minecraft:armor_stand,tag=EtiStaOS.4Sensor,tag=EtiStaOS.4Aussen] run title @s actionbar ["",{"text":"Kubus(grün) UND (NICHT Kubus(grau)) == ","bold":true},{"text":"falsch","color":"red","bold":true}]
