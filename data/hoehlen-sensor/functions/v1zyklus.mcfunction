# Wenn der Spieler den Stock ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigHoehlS.1Sensor:true} } }] add EtiHoehlS.1Ausgewaehlt

# Jeden Tick wird der Wert der Spieler um eins erhöht und bei Erreichen des Wertes von 20 wird dieser wieder auf null gesetzt.
scoreboard players add @a[scores={PZHoehlS.1Wert=0..}] PZHoehlS.1Wert 1
tag @a[tag=EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl,scores={PZHoehlS.1Wert=20..}] remove EtiHoehlS.1Auswahl
scoreboard players set @a[tag=EtiHoehlS.1Ausgewaehlt,tag=!EtiHoehlS.1Auswahl] PZHoehlS.1Wert 0

# Wenn der Spieler den stock ausgewählt hat und gerade den Wert null besitzt, wird die Sensor-Funktion geladen.
execute as @a[tag=EtiHoehlS.1Ausgewaehlt,scores={PZHoehlS.1Wert=0}] at @s align xz run function hoehlen-sensor:v1sensor

# Abhängig davon ob der Spieler das Höhlen-Etikett besitzt, erhält die entsprechende Nachricht mit Wahrheitswert.
execute as @a[tag=EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Hoehle] run title @s actionbar ["",{"text":"höhle == ","bold":true},{"text":"wahr","color":"green","bold":true}]
execute as @a[tag=EtiHoehlS.1Ausgewaehlt,tag=!EtiHoehlS.1Hoehle] run title @s actionbar ["",{"text":"höhle == ","bold":true},{"text":"falsch","color":"red","bold":true}]

# Wenn der Stock nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Stock ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiHoehlS.1Ausgewaehlt,tag=!EtiHoehlS.1Auswahl] add EtiHoehlS.1Auswahl
tag @a[tag=!EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl] remove EtiHoehlS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiHoehlS.1Ausgewaehlt] remove EtiHoehlS.1Ausgewaehlt
