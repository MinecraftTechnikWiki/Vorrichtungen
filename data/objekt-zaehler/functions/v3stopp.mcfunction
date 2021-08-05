# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZObjZae.3Anz

# Die beiden Teams werden entfernt.
team remove TMObjZae.3Team1
team remove TMObjZae.3Team2

# Das Etikett für die Auswahl des Stockes, das eventuell noch vorhanden sein kann, wird entfernt.
tag @a[tag=EtiObjZae.3Auswahl] remove EtiObjZae.3Auswahl

# Die Gegenstände die im Inventar vorhanden sind, werden entfernt.
clear @a minecraft:stick{EigObjZae.3Alle:true}
clear @a minecraft:armor_stand{EigObjZae.3Alle:true}
clear @a minecraft:piglin_spawn_egg{EigObjZae.3Alle:true}

# Falls Gegenstände auf den Boden geworfen wurden, werden sie markiert und anschließend werden alle Objekte mit dem Etikett entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigObjZae.3Alle:true} } }] add EtiObjZae.3Alle
kill @e[tag=EtiObjZae.3Alle]
