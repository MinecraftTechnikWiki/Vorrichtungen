# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZObjZae.4Anz

# Der Inhalt des Datenspeichers wird entfernt.
data remove storage objekt-zaehler:v4daten "EigObjZae.4Felder"

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiObjZae.4Auswahl] remove EtiObjZae.4Auswahl

# Alle Gegenstände mit der speziellen Eigenschaft werden entfernt.
clear @a *[minecraft:custom_data~{EigObjZae.4Alle:true}]

# Falls manche Kreaturen beim Erzeugen mit einem Spawn-Ei Reiter mitgeliefert haben, werden diese in die Leere teleportiert.
execute as @e[tag=EtiObjZae.4Alle,nbt={Passengers:[{}]}] at @s run teleport @s ~ -256 ~

# Die gedroppten Gegenstände erhalten ein Etikett und alle Objekte mit dem Etikett werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigObjZae.4Alle:true}] run kill @s
kill @e[tag=EtiObjZae.4Alle]
