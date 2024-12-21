# Die Punkte-Ziele für x-, y- und z-Koordinate, sowie für die Rotationen werden entfernt.
scoreboard objectives remove PZBewS.2X
scoreboard objectives remove PZBewS.2Y
scoreboard objectives remove PZBewS.2Z
scoreboard objectives remove PZBewS.2Ric
scoreboard objectives remove PZBewS.2Nei

# Das Etikett wird entfernt, falls es noch vorhanden war.
tag @a[tag=EtiBewS.2Auswahl] remove EtiBewS.2Auswahl

# Der Stock wird wieder aus dem Inventar und auf dem Boden gelöscht.
clear @a minecraft:stick[minecraft:custom_data~{EigBewS.2Alle:true}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBewS.2Alle:true}] run kill @s
