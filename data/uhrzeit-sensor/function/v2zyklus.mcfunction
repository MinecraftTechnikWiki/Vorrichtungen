# Wenn der Spieler den Stock ausgewählt hat, erhält er zur Erkennung ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigUhrzeitS.2Sensor:true}] run tag @s add EtiUhrzeitS.2Ausgewaehlt

# Spieler die das Etikett besitzen, erhalten über der Schnellleiste die Uhrzeit.
title @a[tag=EtiUhrzeitS.2Ausgewaehlt] actionbar ["",{text:"H:M:S == ",color:"gray",bold:true},{storage:"uhrzeit-sensor:v2daten",nbt:'"EigUhrzeitS.2Zeit"[0]',color:"red",bold:true},{text:":",color:"gray",bold:true},{storage:"uhrzeit-sensor:v2daten",nbt:'"EigUhrzeitS.2Zeit"[1]',color:"dark_green",bold:true},{text:":",color:"gray",bold:true},{storage:"uhrzeit-sensor:v2daten",nbt:'"EigUhrzeitS.2Zeit"[2]',color:"blue",bold:true}]

# Wenn der Stock nicht mehr ausgewählt ist, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiUhrzeitS.2Ausgewaehlt,tag=EtiUhrzeitS.2Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Stock ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiUhrzeitS.2Ausgewaehlt,tag=!EtiUhrzeitS.2Auswahl] add EtiUhrzeitS.2Auswahl
tag @a[tag=!EtiUhrzeitS.2Ausgewaehlt,tag=EtiUhrzeitS.2Auswahl] remove EtiUhrzeitS.2Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiUhrzeitS.2Ausgewaehlt] remove EtiUhrzeitS.2Ausgewaehlt
