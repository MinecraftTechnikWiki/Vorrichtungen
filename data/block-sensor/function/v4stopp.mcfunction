# Der Stock wird wieder entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigBlockS.4Alle:true}]

# Die Etiketten werden entfernt.
tag @a[tag=EtiBlockS.4Spieler] remove EtiBlockS.4Spieler
tag @a[tag=EtiBlockS.4BlockErfassen] remove EtiBlockS.4BlockErfassen

# Damit die Güterlore nichts droppt, wird ihr Inhalt gelöscht.
data remove entity @n[type=minecraft:chest_minecart,tag=EtiBlockS.4Sensor] Items

# Alle Objekte mit dem Etikett werden gelöscht.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBlockS.4Alle:true}] run kill @s
kill @e[tag=EtiBlockS.4Alle]
