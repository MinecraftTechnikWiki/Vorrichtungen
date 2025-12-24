# Wenn der Spieler den Kompass ausgewählt hat, erhält er zur Erkennung ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigChunkS.1Sensor:true}] run tag @s add EtiChunkS.1Ausgewaehlt

# Spieler die das Etikett besitzen laden von sich aus die Sensor-Funktion.
execute as @a[tag=EtiChunkS.1Ausgewaehlt] at @s run function chunk-sensor:v1sensor

# Wenn der Kompass nicht mehr ausgewählt ist, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiChunkS.1Ausgewaehlt,tag=EtiChunkS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Kompass ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiChunkS.1Ausgewaehlt,tag=!EtiChunkS.1Auswahl] add EtiChunkS.1Auswahl
tag @a[tag=!EtiChunkS.1Ausgewaehlt,tag=EtiChunkS.1Auswahl] remove EtiChunkS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiChunkS.1Ausgewaehlt] remove EtiChunkS.1Ausgewaehlt
