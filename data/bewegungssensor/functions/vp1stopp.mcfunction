# Die eventuell noch vorhandenen Etiketten werden entfernt.
tag @a[tag=EtiBewS.p1Oben] remove EtiBewS.p1Oben
tag @a[tag=EtiBewS.p1Auswahl] remove EtiBewS.p1Auswahl

# Der Stock wird aus dem Inventar und auf dem Boden entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigBewS.p1Alle:true}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigBewS.p1Alle:true}] run kill @s
