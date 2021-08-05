# Die Kugel-Zonen werden um fünf Grad gedreht und erzeugt dabei Partikel.
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

# Die Kubus-Zonen werden jeweils um 90° gedreht und erzeugen dabei in einer längs gezogenen Bahn Partikel.
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kubus] at @s run teleport @s ~ ~ ~ ~90 0
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kubus,y_rotation=-135..135] unless entity @s[y_rotation=-45..45] at @s run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 0 0 2 0.1 10 force @a[distance=..25]
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kubus,y_rotation=135..45] unless entity @s[y_rotation=-135..-45] at @s run particle minecraft:totem_of_undying ^ ^0.5 ^5.5 2 0 0 0.1 10 force @a[distance=..25]

# Von der Position von Kugel-Zonen wird die Anzahl der Objekte in einem Radius von fünf Blöcken von der Mitte aus gezählt.
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] at @s store result score @s PZObjZae.3Anz if entity @e[distance=..5,tag=!EtiObjZae.3Zone]

# Von der Position von Kubus-Zonen wird die Anzahl der Objekte in einem Kubus-Bereich ermittelt.
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kubus] at @s positioned ~-5 ~ ~-5 store result score @s PZObjZae.3Anz if entity @e[dx=10,dy=5,dz=10,tag=!EtiObjZae.3Zone]

# Wenn Spieler den Stock ausgewählt haben, wird ein Etikett vergeben.
tag @a[nbt={SelectedItem:{tag:{EigObjZae.3Sensor:true} } }] add EtiObjZae.3Ausgewaehlt

# Wenn mindestens ein Spieler den Stock ausgewählt hat, wird die Gesamtzahl der Piglins ermittelt.
execute if entity @p[tag=EtiObjZae.3Ausgewaehlt] store result score VarObjZae.3Anzahl PZObjZae.3Anz if entity @e[type=minecraft:piglin,tag=EtiObjZae.3Objekt]

# Befindet sich ein Spieler der den Stock ausgewählt hat, in keiner Zone, so wird die Gesamtzahl der Piglins in einer Titel-Nachricht über der Schnellleiste angezeigt.
execute as @a[tag=EtiObjZae.3Ausgewaehlt] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] positioned ~-5 ~ ~-5 unless entity @e[dx=10,dy=5,dz=10,type=minecraft:armor_stand,tag=EtiObjZae.3Kubus] run title @s actionbar ["",{"text":"anzahl == ","color":"gray","bold":true},{"score":{"name":"VarObjZae.3Anzahl","objective":"PZObjZae.3Anz"},"color":"dark_purple","bold":true}]

# Befinden sich Spieler in einer Kugel-Zone, so wird die Anzahl der Objekte innerhalb der Kugel-Zone in einer Titel-Nachricht angezeigt.
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] at @s run title @a[distance=..5,tag=!EtiObjZae.3Ausgewaehlt] actionbar ["",{"text":"in zone == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.3Anz"},"color":"dark_purple","bold":true}]

# Befinden sich Spieler in einer Kubus-Zone, so wird die Anzahl der Objekte innerhalb der Kubus-Zone in einer Titel-Nachricht angezeigt.
execute as @e[type=minecraft:armor_stand,tag=EtiObjZae.3Kubus] at @s positioned ~-5 ~ ~-5 run title @a[dx=10,dy=5,dz=10,tag=!EtiObjZae.3Ausgewaehlt] actionbar ["",{"text":"in zone == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.3Anz"},"color":"dark_purple","bold":true}]

# Haben die Spieler den Stock ausgewählt und befinden sich in einer Zone, so wird die Zählen-Funktion durch sie aufgerufen.
execute as @a[tag=EtiObjZae.3Ausgewaehlt] at @s if entity @e[distance=..15,type=minecraft:armor_stand,tag=EtiObjZae.3Zone] run function objekt-zaehler:v3zaehlen

# Wenn man gerade den Stock nicht mehr ausgewählt hat, wird die Titel-Nachricht geräumt.
title @a[tag=!EtiObjZae.3Ausgewaehlt,tag=EtiObjZae.3Auswahl] actionbar [""]

# Wählt man den Stock gerade erst aus, so erhält man ein Etikett, das auch erst dann wieder entfernt wird, wenn man dne Stock gerade nicht mehr auswählt.
tag @a[tag=EtiObjZae.3Ausgewaehlt,tag=!EtiObjZae.3Auswahl] add EtiObjZae.3Auswahl
tag @a[tag=!EtiObjZae.3Ausgewaehlt,tag=EtiObjZae.3Auswahl] remove EtiObjZae.3Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiObjZae.3Ausgewaehlt] remove EtiObjZae.3Ausgewaehlt
