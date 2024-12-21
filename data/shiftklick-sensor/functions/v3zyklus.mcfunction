# Wenn der Spieler den Stock ausgewählt hat, erhält er zur Erkennung ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigShklS.3Sensor:true}] run tag @s add EtiShklS.3Ausgewaehlt

# Spieler die das Etikett besitzen, erhalten eine Schnellleisten-Nachricht, die ausgibt ob man Shift gedrückt hält oder nicht.
title @a[tag=EtiShklS.3Ausgewaehlt,advancements={shiftklick-sensor:v3shift=true}] actionbar ["",{"text":"Shiftklick == ","bold":true},{"text":"wahr","color":"green","bold":true}]
title @a[tag=EtiShklS.3Ausgewaehlt,advancements={shiftklick-sensor:v3shift=false}] actionbar ["",{"text":"Shiftklick == ","bold":true},{"text":"falsch","color":"red","bold":true}]

# Wenn der Stock nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiShklS.3Ausgewaehlt,tag=EtiShklS.3Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Stock ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett entsprechend gegeben oder entfernt.
tag @a[tag=EtiShklS.3Ausgewaehlt,tag=!EtiShklS.3Auswahl] add EtiShklS.3Auswahl
tag @a[tag=!EtiShklS.3Ausgewaehlt,tag=EtiShklS.3Auswahl] remove EtiShklS.3Auswahl

# Wenn der Spieler gerade erst Shift gedrückt oder gerade losgelassen hat, wird ihm eine Chat-Nachricht ausgegeben.
tellraw @a[tag=EtiShklS.3Auswahl,tag=!EtiShklS.3Shift,advancements={shiftklick-sensor:v3shift=true}] ["Shiftklick-Sensor.3:\n",{"text":"Shiftklick == ","bold":true},{"text":"wahr","color":"green","bold":true}]
tellraw @a[tag=EtiShklS.3Auswahl,tag=EtiShklS.3Shift,advancements={shiftklick-sensor:v3shift=false}] ["Shiftklick-Sensor.3:\n",{"text":"Shiftklick == ","bold":true},{"text":"falsch","color":"red","bold":true}]

# Wenn der Spieler Shift klickt oder loslässt wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiShklS.3Auswahl,tag=!EtiShklS.3Shift,advancements={shiftklick-sensor:v3shift=true}] add EtiShklS.3Shift
tag @a[tag=EtiShklS.3Auswahl,tag=EtiShklS.3Shift,advancements={shiftklick-sensor:v3shift=false}] remove EtiShklS.3Shift

# Der Fortschritt wird wieder entfernt, damit er nur dann wieder vorhanden ist, wenn man wieder Shift geklickt hat.
advancement revoke @a[advancements={shiftklick-sensor:v3shift=true}] only shiftklick-sensor:v3shift

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiShklS.3Ausgewaehlt] remove EtiShklS.3Ausgewaehlt
