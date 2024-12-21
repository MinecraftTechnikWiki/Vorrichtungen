# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZEntfS.1Wert

# Das Etikett zur Auswahl des Kompasses, wird wieder entfernt, falls es noch vorhanden war.
tag @a[tag=EtiEntfS.1Auswahl] remove EtiEntfS.1Auswahl

# Der Kompass wird aus dem Inventar entfernt.
clear @a minecraft:compass[minecraft:custom_data~{EigEntfS.1Alle:true}]

# Falls der Kompass auf dem Boden geworfen wurde, wird der Drop entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigEntfS.1Alle:true}] run kill @s

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~
