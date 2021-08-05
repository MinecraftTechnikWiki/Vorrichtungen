# Wenn der Spieler den Stock mit Verzauberungsschimmer ausgewählt hat, erhält er ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigLichS.1Sensor:true} } }] add EtiLichS.1Ausgewaehlt

# Nur wenn der Spieler das Etikett besitzt wird an seiner Position die Beutetabelle ausgeschüttet. Dabei wird pro Lichtstufe die gleiche Anzahl an Drops erzeugt. Die Drops verschwinden aber sofort wieder, weil ihr Wert auf null gesetzt ist. Anschließend wird die Lichtstufe über der Schnellleiste ausgegeben.
execute as @a[tag=EtiLichS.1Ausgewaehlt] at @s store result score @s PZLichS.1Stufe run loot spawn ~ ~ ~ loot licht-sensor:v1lichtstufe
execute as @a[tag=EtiLichS.1Ausgewaehlt] run title @s actionbar ["",{"text":"Lichtstufe == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZLichS.1Stufe"},"color":"dark_purple","bold":true}]

title @a[tag=!EtiLichS.1Ausgewaehlt,tag=EtiLichS.1Auswahl] actionbar [""]
tag @a[tag=EtiLichS.1Ausgewaehlt,tag=!EtiLichS.1Auswahl] add EtiLichS.1Auswahl
tag @a[tag=!EtiLichS.1Ausgewaehlt,tag=EtiLichS.1Auswahl] remove EtiLichS.1Auswahl

# Alle Spieler die das Etikett besitzen, bekommen es entfernt.
tag @a[tag=EtiLichS.1Ausgewaehlt] remove EtiLichS.1Ausgewaehlt
