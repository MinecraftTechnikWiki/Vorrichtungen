# Die geänderten Titel-Zeiten werden für alle Spieler im Umkreis von 25 Blöcken wieder zurück gesetzt.
title @a[distance=..25] reset

# Im Inventar vorhandene Rüstungsständer werden entfernt.
clear @a minecraft:armor_stand{EigBlWS.3Alle:true}

# Rüstungsständer als Objekt in der Welt oder als Drop werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigBlWS.3Alle:true} } }] add EtiBlWS.3Alle
kill @e[tag=EtiBlWS.3Alle]
