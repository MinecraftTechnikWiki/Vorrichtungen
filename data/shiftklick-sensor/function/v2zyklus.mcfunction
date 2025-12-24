# Wenn der Spieler den Stock ausgewählt hat, erhält er zur Erkennung ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigShklS.2Sensor:true}] run tag @s add EtiShklS.2Ausgewaehlt

# Spieler die das Etikett besitzen, erhalten eine Schnellleisten-Nachricht, die ausgibt ob man Shift gedrückt hält oder nicht.
title @a[tag=EtiShklS.2Ausgewaehlt,predicate=shiftklick-sensor:v2shift] actionbar ["",{text:"Shift halten == ",bold:true},{text:"wahr",color:"green",bold:true}]
title @a[tag=EtiShklS.2Ausgewaehlt,predicate=!shiftklick-sensor:v2shift] actionbar ["",{text:"Shift halten == ",bold:true},{text:"falsch",color:"red",bold:true}]

# Wenn der Stock nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiShklS.2Ausgewaehlt,tag=EtiShklS.2Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Stock ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett entsprechend gegeben oder entfernt.
tag @a[tag=EtiShklS.2Ausgewaehlt,tag=!EtiShklS.2Auswahl] add EtiShklS.2Auswahl
tag @a[tag=!EtiShklS.2Ausgewaehlt,tag=EtiShklS.2Auswahl] remove EtiShklS.2Auswahl

# Wenn der Spieler gerade erst Shift gedrückt oder gerade losgelassen hat, wird ihm eine Chat-Nachricht ausgegeben.
tellraw @a[tag=EtiShklS.2Auswahl,tag=!EtiShklS.2Shift,predicate=shiftklick-sensor:v2shift] ["Shiftklick-Sensor.2:\n",{text:"Shiftklick == ",bold:true},{text:"wahr",color:"green",bold:true}]
tellraw @a[tag=EtiShklS.2Auswahl,tag=EtiShklS.2Shift,predicate=!shiftklick-sensor:v2shift] ["Shiftklick-Sensor.2:\n",{text:"Shiftklick == ",bold:true},{text:"falsch",color:"red",bold:true}]

# Wenn der Spieler Shift klickt oder loslässt wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiShklS.2Auswahl,tag=!EtiShklS.2Shift,predicate=shiftklick-sensor:v2shift] add EtiShklS.2Shift
tag @a[tag=EtiShklS.2Auswahl,tag=EtiShklS.2Shift,predicate=!shiftklick-sensor:v2shift] remove EtiShklS.2Shift

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiShklS.2Ausgewaehlt] remove EtiShklS.2Ausgewaehlt
