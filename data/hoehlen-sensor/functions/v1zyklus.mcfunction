# Wenn der Spieler den Stock ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigHoehlS.1Sensor:true} } }] add EtiHoehlS.1Ausgewaehlt

# Jede Sekunde wird bei allen Spielern der Punktestand wieder auf null gesetzt, ebenso die Tick-Variable.
execute if score VarHoehlS.1Tick PZHoehlS.1Wert matches ..19 run scoreboard players add VarHoehlS.1Tick PZHoehlS.1Wert 1
execute if score VarHoehlS.1Tick PZHoehlS.1Wert matches 20.. run tag @a[tag=EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl] remove EtiHoehlS.1Auswahl
execute as @a[tag=EtiHoehlS.1Ausgewaehlt,tag=!EtiHoehlS.1Auswahl] store result score @s PZHoehlS.1Wert run scoreboard players set VarHoehlS.1Tick PZHoehlS.1Wert 0

# Jede Sekunde wird geprüft ob der Spieler den Stock ausgewählt hat, nur dann wird die Sensor-Funktion geladen.
execute if score VarHoehlS.1Tick PZHoehlS.1Wert matches 0 as @a[tag=EtiHoehlS.1Ausgewaehlt] at @s run function hoehlen-sensor:v1sensor

# Abhängig davon ob der Spieler sich an der Oberfläche oder in einer Höhle befindet, erhält die entsprechende Meldung mit Wahrheitswert und Delta-Y.
execute as @a[tag=EtiHoehlS.1Ausgewaehlt,scores={PZHoehlS.1Wert=1..}] run title @s actionbar ["",{"text":"Höhle == ","bold":true},{"text":"wahr","color":"green","bold":true}," ",{"text":"Delta-Y == ","bold":true},{"score":{"name":"@s","objective":"PZHoehlS.1Wert"},"color":"blue","bold":true}]
execute as @a[tag=EtiHoehlS.1Ausgewaehlt,scores={PZHoehlS.1Wert=..0}] run title @s actionbar ["",{"text":"Höhle == ","bold":true},{"text":"falsch","color":"red","bold":true}," ",{"text":"Delta-Y == ","bold":true},{"score":{"name":"@s","objective":"PZHoehlS.1Wert"},"color":"blue","bold":true}]

# Wenn der Stock nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Stock ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiHoehlS.1Ausgewaehlt,tag=!EtiHoehlS.1Auswahl] add EtiHoehlS.1Auswahl
tag @a[tag=!EtiHoehlS.1Ausgewaehlt,tag=EtiHoehlS.1Auswahl] remove EtiHoehlS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiHoehlS.1Ausgewaehlt] remove EtiHoehlS.1Ausgewaehlt
