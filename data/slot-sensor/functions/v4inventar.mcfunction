# Die Slot-Anzahl wird zurückgesetzt und das Inventar vom Spieler wird in den NBT-Speicher kopiert.
scoreboard players set @s PZSlotS.4Slots 0
data modify storage slot-sensor:v4daten "EigSlotS.4Inventar" set from entity @s Inventory

# Die Slot-Funktion wird aufgerufen.
function slot-sensor:v4slots

# Dem Spieler wird die ID des ausgewählten Gegenstands wie auch die Anzahl der Slots, die dieser Gegenstand einnimmt in einer Titel-Nachricht angezeigt.
title @s actionbar ["",{"text":"ID == ","color":"gray","bold":true},{"entity":"@s","nbt":"SelectedItem.id","color":"dark_purple","bold":true},{"text":" belegt Slots == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZSlotS.4Slots"},"color":"dark_purple","bold":true}]
