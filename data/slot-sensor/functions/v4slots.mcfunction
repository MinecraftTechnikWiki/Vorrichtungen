# Die ID des ersten Inventar-Slots wird kopiert und anschließend wird der erste Slot des Inventars gelöscht, sodass alle anderen aufrücken.
data modify storage slot-sensor:v4daten "EigSlotS.4Slot" set from storage slot-sensor:v4daten "EigSlotS.4Inventar"[0].id
data remove storage slot-sensor:v4daten "EigSlotS.4Inventar"[0]

# Der ausgewählte Gegenstand vom Spieler wird mit dem aktuell kopierten Slot verglichen, in dem er in diesen kopiert wird, falls das gelingt, war es ein anderer Gegenstand, ansonsten ist es der gesuchte. Dies wird in einer Variable gespeichert.
execute store success score PZSlotS.4Ungleich PZSlotS.4Slots run data modify storage slot-sensor:v4daten "EigSlotS.4Slot" set from entity @s SelectedItem.id

# Wenn der Gegenstand der gesuchte ist, dann wird die Anzahl der Slots, die dieser Gegenstand belegt um eins erhöht.
execute unless score PZSlotS.4Ungleich PZSlotS.4Slots matches 1 run scoreboard players add @s PZSlotS.4Slots 1

# Solange das Inventar nicht leer ist, wird die Slot-Funktion erneut aufgerufen.
execute if data storage slot-sensor:v4daten {EigSlotS.4Inventar:[{}]} run function slot-sensor:v4slots
