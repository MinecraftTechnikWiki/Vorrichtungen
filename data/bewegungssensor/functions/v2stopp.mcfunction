# Die Punkte-Ziele für x-, y- und z-Koordinate, sowie für die Rotationen werden entfernt.
scoreboard objectives remove PZBewS.2X
scoreboard objectives remove PZBewS.2Y
scoreboard objectives remove PZBewS.2Z
scoreboard objectives remove PZBewS.2Ric
scoreboard objectives remove PZBewS.2Nei

# Der Stock wird wieder aus dem Inventar und auf dem Boden gelöscht.
clear @a minecraft:stick{EigBewS.2Alle:true}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",tag:{EigBewS.2Alle:true} } }]

# Die Etiketten werden entfernt, falls sie noch vorhanden sind.
tag @a[tag=EtiBewS.2Titel] remove EtiBewS.2Titel
tag @a[tag=EtiBewS.2Bewegung] remove EtiBewS.2Bewegung
