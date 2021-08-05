# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZObjZae.4Anz

# Der Inhalt des NBT-Speichers wird entfernt.
data remove storage objekt-zaehler:v4daten "EigObjZae.4Felder"

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiObjZae.4Auswahl] remove EtiObjZae.4Auswahl

# Alle Gegenstände mit der speziellen Eigenschaft werden entfernt.
clear @a minecraft:stick{EigObjZae.4Alle:true}
clear @a minecraft:piglin_spawn_egg{EigObjZae.4Alle:true}
clear @a minecraft:hoglin_spawn_egg{EigObjZae.4Alle:true}
clear @a minecraft:strider_spawn_egg{EigObjZae.4Alle:true}
clear @a minecraft:zombified_piglin_spawn_egg{EigObjZae.4Alle:true}
clear @a minecraft:zoglin_spawn_egg{EigObjZae.4Alle:true}
clear @a minecraft:piglin_brute_spawn_egg{EigObjZae.4Alle:true}

# Das Schild an der Position der Partikelwolke wird entfernt.
execute at @e[tag=EtiObjZae.4Schild] run setblock ~ ~ ~ minecraft:air replace

# Falls manche Kreaturen beim erzeugen mit einem Spoawn-Ei Reiter mitgeliefert haben, werden diese in die Leere teleportiert.
execute as @e[tag=EtiObjZae.4Alle,nbt={Passengers:[{}]}] at @s run teleport @s ~ -256 ~

# Die gedroppten Gegenstände erhalten ein Etikett und alle Objekte mit dem Etikett werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigObjZae.4Alle:true} } }] add EtiObjZae.4Alle
kill @e[tag=EtiObjZae.4Alle]
