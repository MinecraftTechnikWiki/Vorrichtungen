# Wenn der Spieler den Kompass ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigSichtWS.1Sensor:true} } }] add EtiSichtWS.1Ausgewaehlt

# Jeden Tick wird der Wert der Spieler um eins erhöht und bei Erreichen des Wertes von 20 wird dieser wieder auf null gesetzt.
scoreboard players add @a[scores={PZSichtWS.1Zeit=0..}] PZSichtWS.1Zeit 1
tag @a[tag=EtiSichtWS.1Ausgewaehlt,tag=EtiSichtWS.1Auswahl,scores={PZSichtWS.1Zeit=20..}] remove EtiSichtWS.1Auswahl
scoreboard players set @a[tag=EtiSichtWS.1Ausgewaehlt,tag=!EtiSichtWS.1Auswahl] PZSichtWS.1Zeit 0

# Spieler die das Etikett besitzen und den Wert null besitzen, laden von ihrer Position aus die Sensor-Funktion.
execute as @a[tag=EtiSichtWS.1Ausgewaehlt,scores={PZSichtWS.1Zeit=0}] at @s run function sichtweiten-sensor:v1sensor

# Die Sichtweite wird mit Hilfe des Wertes des Spielers angezeigt.
execute as @a[tag=EtiSichtWS.1Ausgewaehlt] run title @s actionbar ["",{"text":"Sichtweite == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZSichtWS.1Wert"},"color":"dark_purple","bold":true}]

# Wenn der Kompass nicht mehr ausgewählt ist, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiSichtWS.1Ausgewaehlt,tag=EtiSichtWS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Kompass ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiSichtWS.1Ausgewaehlt,tag=!EtiSichtWS.1Auswahl] add EtiSichtWS.1Auswahl
tag @a[tag=!EtiSichtWS.1Ausgewaehlt,tag=EtiSichtWS.1Auswahl] remove EtiSichtWS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiSichtWS.1Ausgewaehlt] remove EtiSichtWS.1Ausgewaehlt
