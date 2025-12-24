# Die Punkte-Ziele für jede Form der zurückgelegten Strecke werden entfernt.
scoreboard objectives remove PZGeschwS.1Gehen
scoreboard objectives remove PZGeschwS.1Sprinten
scoreboard objectives remove PZGeschwS.1Schleichen
scoreboard objectives remove PZGeschwS.1Waten
scoreboard objectives remove PZGeschwS.1Tauchen
scoreboard objectives remove PZGeschwS.1Schwimmen
scoreboard objectives remove PZGeschwS.1Klettern
scoreboard objectives remove PZGeschwS.1Fallen
scoreboard objectives remove PZGeschwS.1Fliegen
scoreboard objectives remove PZGeschwS.1Lore
scoreboard objectives remove PZGeschwS.1Boot
scoreboard objectives remove PZGeschwS.1Pferd
scoreboard objectives remove PZGeschwS.1Schwein
scoreboard objectives remove PZGeschwS.1Schreiter
scoreboard objectives remove PZGeschwS.1Elytren
scoreboard objectives remove PZGeschwS.1Ghast
scoreboard objectives remove PZGeschwS.1Nautilus

# Das Etikett wird entfernt, falls es noch vorhanden war.
tag @a[tag=EtiGeschwS.1Auswahl] remove EtiGeschwS.1Auswahl

# Der Stock wird wieder aus dem Inventar und auf dem Boden gelöscht.
clear @a minecraft:stick[minecraft:custom_data~{EigGeschwS.1Alle:true}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigGeschwS.1Alle:true}] run kill @s
