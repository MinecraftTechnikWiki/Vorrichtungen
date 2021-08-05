# Das Punkte-Ziel wird entfernt und somit auch alle Variablen.
scoreboard objectives remove PZObjZae.2Ausl

# Das Etikett das der Spieler beim Auswählen des Stocks bekommen hatte, wird entfernt.
tag @a[tag=EtiObjZae.2Auswahl] remove EtiObjZae.2Auswahl

# Die Gegenstände die der Spieler bekommen hatte, werden aus dem Inventar wieder entfernt.
clear @a minecraft:stick{EigObjZae.2Alle:true}
clear @a minecraft:piglin_spawn_egg{EigObjZae.2Alle:true}

# Falls die Gegenstände gedroppt wurde, erhalten sie ein bestimmtes Etikett, das alle Objekte besitzen und diese werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigObjZae.2Alle:true} } }] add EtiObjZae.2Alle
kill @e[tag=EtiObjZae.2Alle]
