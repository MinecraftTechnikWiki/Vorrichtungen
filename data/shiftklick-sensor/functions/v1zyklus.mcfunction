# Wenn der Spieler den Stock ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigShklS.1Sensor:true} } }] add EtiShklS.1Ausgewaehlt

# Da Spieler nicht von Anfang einen Wert besitzen wird ihnen der Wert auf null addiert, sodass sie einen besitzen und solche die vorher schon einen Wert besaßen, dieser sich nicht ändert.
scoreboard players add @a[tag=EtiShklS.1Ausgewaehlt,tag=!EtiShklS.1Auswahl] PZShklS.1Shift 0

# Spieler die das Etikett besitzen, erhalten eine Schnellleisten-Nachricht, die ausgibt ob man Shift gedrückt hält oder nicht.
title @a[tag=EtiShklS.1Ausgewaehlt,scores={PZShklS.1Shift=1..}] actionbar ["",{"text":"Shift halten == ","bold":true},{"text":"wahr","color":"green","bold":true}]
title @a[tag=EtiShklS.1Ausgewaehlt,scores={PZShklS.1Shift=0}] actionbar ["",{"text":"Shift halten == ","bold":true},{"text":"falsch","color":"red","bold":true}]

# Wenn der Stock nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiShklS.1Ausgewaehlt,tag=EtiShklS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Stock ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett entsprechend gegeben oder entfernt.
tag @a[tag=EtiShklS.1Ausgewaehlt,tag=!EtiShklS.1Auswahl] add EtiShklS.1Auswahl
tag @a[tag=!EtiShklS.1Ausgewaehlt,tag=EtiShklS.1Auswahl] remove EtiShklS.1Auswahl

# Wenn der Spieler gerade erst Shift gedrückt oder gerade losgelassen hat, wird ihm eine Chat-Nachricht ausgegeben.
tellraw @a[tag=EtiShklS.1Auswahl,tag=!EtiShklS.1Shift,scores={PZShklS.1Shift=1..}] ["Shiftklick-Sensor.1:\n",{"text":"Shiftklick == ","bold":true},{"text":"wahr","color":"green","bold":true}]
tellraw @a[tag=EtiShklS.1Auswahl,tag=EtiShklS.1Shift,scores={PZShklS.1Shift=0}] ["Shiftklick-Sensor.1:\n",{"text":"Shiftklick == ","bold":true},{"text":"falsch","color":"red","bold":true}]

# Wenn der Spieler Shift klickt oder loslässt wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiShklS.1Auswahl,tag=!EtiShklS.1Shift,scores={PZShklS.1Shift=1..}] add EtiShklS.1Shift
tag @a[tag=EtiShklS.1Auswahl,tag=EtiShklS.1Shift,scores={PZShklS.1Shift=0}] remove EtiShklS.1Shift

# Der Punkte-Wert der Spieler wird auf null gesetzt, wenn sie Shift geklickt haben.
scoreboard players set @a[scores={PZShklS.1Shift=1..}] PZShklS.1Shift 0

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiShklS.1Ausgewaehlt] remove EtiShklS.1Ausgewaehlt
