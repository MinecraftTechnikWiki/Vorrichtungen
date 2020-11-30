# Der Stock wird wieder entfernt.
clear @a minecraft:stick{EigBlockS.4Alle:true}

# Die Etiketten werden entfernt.
tag @a[tag=EtiBlockS.4Spieler] remove EtiBlockS.4Spieler
tag @a[tag=EtiBlockS.4BlockErfassen] remove EtiBlockS.4BlockErfassen

# Damit die Güterlore nichts droppt, wird ihr Inhalt gelöscht.
data remove entity @e[type=minecraft:chest_minecart,tag=EtiBlockS.4Sensor,sort=nearest,limit=1] Items

# Alle Objekte mit dem Etikett werden gelöscht.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigBlockS.4Alle:true} } }] add EtiBlockS.4Alle
kill @e[tag=EtiBlockS.4Alle]
