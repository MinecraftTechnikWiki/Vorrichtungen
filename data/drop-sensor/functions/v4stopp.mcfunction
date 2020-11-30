# Die Stöcke werden wieder entfernt.
clear @a minecraft:stick{EigDrSen.4Alle:true}

# Das Etikett wird entfernt.
tag @a[tag=EtiDrSen.4Erfassen] remove EtiDrSen.4Erfassen

# Damit die Güterlore nichts droppt, wird ihr Inhalt gelöscht.
data remove entity @e[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor,sort=nearest,limit=1] Items

# Alle Objekte mit dem Etikett werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigDrSen.4Alle:true} } }] add EtiDrSen.4Alle
kill @e[tag=EtiDrSen.4Alle]
