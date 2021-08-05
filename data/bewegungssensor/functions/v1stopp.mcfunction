# Die Punkte-Ziele für jede Form der Bewegung werden entfernt.
scoreboard objectives remove PZBewS.1Gehen
scoreboard objectives remove PZBewS.1Plansch
scoreboard objectives remove PZBewS.1Schwim
scoreboard objectives remove PZBewS.1Sprint
scoreboard objectives remove PZBewS.1Schl
scoreboard objectives remove PZBewS.1Sprung

# Der Stock wird wieder aus dem Inventar und auf dem Boden gelöscht.
clear @a minecraft:stick{EigBewS.1Alle:true}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",tag:{EigBewS.1Alle:true} } }]

# Die Etiketten werden entfernt, falls sie noch vorhanden sind.
tag @a[tag=EtiBewS.1Titel] remove EtiBewS.1Titel
tag @a[tag=EtiBewS.1Bewegung] remove EtiBewS.1Bewegung
