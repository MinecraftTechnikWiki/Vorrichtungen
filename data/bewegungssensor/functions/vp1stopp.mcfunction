# Der Stock wird aus dem Inventar und auf dem Boden entfernt.
clear @a minecraft:stick{EigBewS.p1Alle:true}
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",tag:{EigBewS.p1Alle:true} } }]

# Die eventuell noch vorhandenen Etiketten werden entfernt.
tag @a[tag=EtiBewS.p1Oben] remove EtiBewS.p1Oben
tag @a[tag=EtiBewS.p1Titel] remove EtiBewS.p1Titel
