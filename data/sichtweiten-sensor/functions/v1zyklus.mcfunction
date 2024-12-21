# Wenn der Spieler den Kompass ausgewählt hat, erhält er zur Erkennung ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigSichtWS.1Sensor:true}] run tag @s add EtiSichtWS.1Ausgewaehlt

# Die Tick-Variable wird hochgezählt und bei einer Sekunde wird sie wieder auf null gesetzt. Dabei wird dem Spieler jedesmal der wert auch auf null gesetzt, damit dieser in der aufrufenden Sensor-Funktion benutzt werden kann.
execute if score VarSichtWS.1Tick PZSichtWS.1Wert matches ..19 run scoreboard players add VarSichtWS.1Tick PZSichtWS.1Wert 1
execute if score VarSichtWS.1Tick PZSichtWS.1Wert matches 20.. run tag @a[tag=EtiSichtWS.1Ausgewaehlt,tag=EtiSichtWS.1Auswahl] remove EtiSichtWS.1Auswahl
execute as @a[tag=EtiSichtWS.1Ausgewaehlt,tag=!EtiSichtWS.1Auswahl] store result score @s PZSichtWS.1Wert run scoreboard players set VarSichtWS.1Tick PZSichtWS.1Wert 0

# Wenn die Tick-Variable auf null ist und die Spieler den Kompass ausgewählt haben, wird die Sensor-Funktion aufgerufen.
execute if score VarSichtWS.1Tick PZSichtWS.1Wert matches 0 as @a[tag=EtiSichtWS.1Ausgewaehlt] at @s rotated 0 0 run function sichtweiten-sensor:v1sensor

# Die Sichtweite wird mit Hilfe des Wertes des Spielers angezeigt.
execute as @a[tag=EtiSichtWS.1Ausgewaehlt] run title @s actionbar ["",{"text":"Sichtweite == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZSichtWS.1Wert"},"color":"dark_purple","bold":true}]

# Wenn der Kompass nicht mehr ausgewählt ist, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiSichtWS.1Ausgewaehlt,tag=EtiSichtWS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Kompass ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiSichtWS.1Ausgewaehlt,tag=!EtiSichtWS.1Auswahl] add EtiSichtWS.1Auswahl
tag @a[tag=!EtiSichtWS.1Ausgewaehlt,tag=EtiSichtWS.1Auswahl] remove EtiSichtWS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiSichtWS.1Ausgewaehlt] remove EtiSichtWS.1Ausgewaehlt
