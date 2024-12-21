# Wenn Spieler den Stock ausgewählt haben, erhalten sie ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigObjZae.4Sensor:true}] run tag @s add EtiObjZae.4Ausgewaehlt

# Wenn Spieler den Stock gerade erst ausgewählt haben, wird die Sensor-Funktion geladen.
execute as @a[tag=EtiObjZae.4Ausgewaehlt,tag=!EtiObjZae.4Auswahl] at @s run function objekt-zaehler:v4sensor

# Wenn Spieler gerade erst den Stock auswählen erhalten sie ein weiteres Etikett, das erst dann wieder entfernt wird, wenn sie den Stock gerade nicht mehr ausgewählt haben.
tag @a[tag=EtiObjZae.4Ausgewaehlt,tag=!EtiObjZae.4Auswahl] add EtiObjZae.4Auswahl
tag @a[tag=!EtiObjZae.4Ausgewaehlt,tag=EtiObjZae.4Auswahl] remove EtiObjZae.4Auswahl

# Das Etikett wird wieder entfernt, sodass nur dann vorhanden ist, wenn der Stock ausgewählt wurde.
tag @a[tag=EtiObjZae.4Ausgewaehlt] remove EtiObjZae.4Ausgewaehlt
