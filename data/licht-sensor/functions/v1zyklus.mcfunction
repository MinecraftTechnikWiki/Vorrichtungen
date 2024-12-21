# Wenn der Spieler den Stock mit Verzauberungsschimmer ausgewählt hat, erhält er ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigLichS.1Sensor:true}] run tag @s add EtiLichS.1Ausgewaehlt

# Nur wenn der Spieler das Etikett besitzt wird an seiner Position die Beutetabelle ausgeschüttet. Dabei wird pro Lichtstufe die gleiche Anzahl an Drops erzeugt. Die Drops verschwinden aber sofort wieder, weil sie Luft sind. Anschließend wird die Lichtstufe über der Schnellleiste ausgegeben.
execute as @a[tag=EtiLichS.1Ausgewaehlt] at @s store result score @s PZLichS.1Stufe run loot spawn ~ ~ ~ loot licht-sensor:v1lichtstufe
execute as @a[tag=EtiLichS.1Ausgewaehlt] run title @s actionbar ["",{"text":"Lichtstufe == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZLichS.1Stufe"},"color":"dark_purple","bold":true}]

# Der Text über der Schnellleiste wird wieder geleert, wenn der Stock nicht mehr ausgewählt wird.
title @a[tag=!EtiLichS.1Ausgewaehlt,tag=EtiLichS.1Auswahl] actionbar [""]

# Das Auswahl-Etikett wird vergeben oder entfernt um im selben Tick festzustellen ob der Stock aus- oder abgewählt wurde.
tag @a[tag=EtiLichS.1Ausgewaehlt,tag=!EtiLichS.1Auswahl] add EtiLichS.1Auswahl
tag @a[tag=!EtiLichS.1Ausgewaehlt,tag=EtiLichS.1Auswahl] remove EtiLichS.1Auswahl

# Alle Spieler die das Etikett besitzen, bekommen es entfernt.
tag @a[tag=EtiLichS.1Ausgewaehlt] remove EtiLichS.1Ausgewaehlt
