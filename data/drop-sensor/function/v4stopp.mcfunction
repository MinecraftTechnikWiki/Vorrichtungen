# Die Stöcke werden wieder entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigDrSen.4Alle:true}]

# Das Etikett wird entfernt.
tag @a[tag=EtiDrSen.4Erfassen] remove EtiDrSen.4Erfassen

# Damit die Güterlore nichts droppt, wird ihr Inhalt gelöscht.
data remove entity @n[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor] Items

# Alle Objekte mit dem Etikett werden gelöscht.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigDrSen.4Alle:true}] run kill @s
kill @e[tag=EtiDrSen.4Alle]
