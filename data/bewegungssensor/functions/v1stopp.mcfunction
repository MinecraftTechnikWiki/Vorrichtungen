# Die Punkte-Ziele für jede Form der Bewegung werden entfernt.
scoreboard objectives remove PZBewS.1Gehen
scoreboard objectives remove PZBewS.1Plansch
scoreboard objectives remove PZBewS.1Schwim
scoreboard objectives remove PZBewS.1Sprint
scoreboard objectives remove PZBewS.1Schl
scoreboard objectives remove PZBewS.1Sprung

# Das Etikett wird entfernt, falls es noch vorhanden war.
tag @a[tag=EtiBewS.1Auswahl] remove EtiBewS.1Auswahl

# Der Stock wird wieder aus dem Inventar und auf dem Boden gelöscht.
clear @a minecraft:stick[minecraft:custom_data~{EigBewS.1Alle:true}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBewS.1Alle:true}] run kill @s
