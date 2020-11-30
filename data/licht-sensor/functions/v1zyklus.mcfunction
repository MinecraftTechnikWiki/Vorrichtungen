# Wenn der Spieler den Stock mit Verzauberungsschimmer ausgewählt hat, erhält er ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigLichS.1Sensor:true} } }] add EtiLichS.1Sensor

# Nur wenn der Spieler das Etikett besitzt wird an seiner Position die Beutetabelle ausgeschüttet. Dabei wird pro Lichtstufe die gleiche Anzahl an Drops erzeugt. Die Drops verschwinden aber sofort wieder, weil ihr Wert auf null gesetzt ist. Anschließend wird die Lichtstufe über der Schnellleiste ausgegeben.
execute as @a[tag=EtiLichS.1Sensor] at @s store result score @s PZLichS.1Stufe run loot spawn ~ ~ ~ loot licht-sensor:v1lichtstufe
execute as @a[tag=EtiLichS.1Sensor] run title @s actionbar ["",{"text":"Lichtstufe == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZLichS.1Stufe"},"color":"dark_purple","bold":true}]

# Alle Spieler die das Etikett besitzen, bekommen es entfernt.
tag @a[tag=EtiLichS.1Sensor] remove EtiLichS.1Sensor
