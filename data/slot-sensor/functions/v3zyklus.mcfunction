# Den Slot den Spieler im Umkreis von 25 Blöcken auswählen, wird in der Titel-Nachricht angezeigt. Dort werden die ID und der aktuelle Slot gezeigt.
execute as @a[distance=..25] run title @s actionbar ["",{"text":"ID == ","color":"gray","bold":true},{"entity":"@s","nbt":"SelectedItem.id","color":"dark_purple","bold":true},{"text":" Slot == ","color":"gray","bold":true},{"entity":"@s","nbt":"SelectedItemSlot","color":"dark_purple","bold":true}]

# Alle Spieler im Umkreis von 25 Blöcken rufen die Sensor-Funktion auf.
execute as @a[distance=..25] run function slot-sensor:v3sensor
