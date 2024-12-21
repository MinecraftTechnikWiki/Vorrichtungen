# Das Punkte-Ziel wird entfernt und somit auch alle Variablen.
scoreboard objectives remove PZObjZae.2Ausl

# Das Etikett das der Spieler beim Auswählen des Stocks bekommen hatte, wird entfernt.
tag @a[tag=EtiObjZae.2Auswahl] remove EtiObjZae.2Auswahl

# Die Gegenstände die der Spieler bekommen hatte, werden aus dem Inventar wieder entfernt.
clear @a *[minecraft:custom_data~{EigObjZae.2Alle:true}]

# Falls die Gegenstände gedroppt wurde, erhalten sie ein bestimmtes Etikett, das alle Objekte besitzen und diese werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigObjZae.2Alle:true}] run kill @s
kill @e[tag=EtiObjZae.2Alle]
