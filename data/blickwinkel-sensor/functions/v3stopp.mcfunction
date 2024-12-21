# Die geänderten Titel-Zeiten werden für alle Spieler im Umkreis von 25 Blöcken wieder zurück gesetzt.
title @a[distance=..25] reset

# Im Inventar vorhandene Rüstungsständer werden entfernt.
clear @a minecraft:armor_stand[minecraft:custom_data~{EigBlWS.3Alle:true}]

# Rüstungsständer als Objekt in der Welt oder als Drop werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBlWS.3Alle:true}] run kill @s
kill @e[tag=EtiBlWS.3Alle]
