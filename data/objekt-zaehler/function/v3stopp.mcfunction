# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZObjZae.3Anz

# Die beiden Teams werden entfernt.
team remove TMObjZae.3Team1
team remove TMObjZae.3Team2

# Das Etikett für die Auswahl des Stockes, das eventuell noch vorhanden sein kann, wird entfernt.
tag @a[tag=EtiObjZae.3Auswahl] remove EtiObjZae.3Auswahl

# Die Gegenstände die im Inventar vorhanden sind, werden entfernt.
clear @a *[minecraft:custom_data~{EigObjZae.3Alle:true}]

# Falls Gegenstände auf den Boden geworfen wurden, werden sie markiert und anschließend werden alle Objekte mit dem Etikett entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigObjZae.3Alle:true}] run kill @s
kill @e[tag=EtiObjZae.3Alle]
