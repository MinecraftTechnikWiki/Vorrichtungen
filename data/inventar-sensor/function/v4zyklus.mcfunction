# Wenn Spieler den magischen Stock auswählen, erhalten sie ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigInvS.4Sensor:true}] run tag @s add EtiInvS.4Ausgewaehlt

# Wenn Spieler das Etikett besitzen und dabei einen Gegenstand droppen, so wird dessen Stapelzahl in den Punktestand des Spielers und auch in eine Variable gespeichert.
execute at @a[tag=EtiInvS.4Ausgewaehlt,scores={PZInvS.4Drop=1..}] as @n[distance=..2,type=minecraft:item] store result score @s PZInvS.4Drop store result score VarInvS.4DropStapel PZInvS.4Drop run data get entity @s Item.count

# Danach wird versucht die ID des gedroppten Gegenstands in den Datenspeicher zu speichern. Falls die ID bereits dort gespeichert ist, wird der Befehl fehlschlagen und das Ergebnis davon wird in eine Variable gespeichert.
execute at @a[tag=EtiInvS.4Ausgewaehlt,scores={PZInvS.4Drop=1..}] store success score VarInvS.4Ungleich PZInvS.4Drop run data modify storage inventar-sensor:v4daten "EigInvS.4SucheDrop" set from entity @n[distance=..2,type=minecraft:item,scores={PZInvS.4Drop=1..}] Item

# Der fallen gelassene Drop wird von den Eigenschaften so geändert, dass er sofort wieder vom Spieler aufgehoben wird.
execute at @a[tag=EtiInvS.4Ausgewaehlt,scores={PZInvS.4Drop=1..}] run data merge entity @n[distance=..2,type=minecraft:item] {PickupDelay:0s}

# Nur wenn der fallen gelassene Drop nicht schon bereits im Datenspeicher in Form von Daten vorlag, wird bei allen Spielern die Sensor-Funktion aufgerufen, wenn sie den Stock ausgewählt haben.
execute if score VarInvS.4Ungleich PZInvS.4Drop matches 1 as @a[tag=EtiInvS.4Ausgewaehlt] run function inventar-sensor:v4sensor

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiInvS.4Ausgewaehlt] remove EtiInvS.4Ausgewaehlt

# Falls man etwas gedroppt hat, wird der Punktestand wieder auf null gesetzt.
scoreboard players set @a[scores={PZInvS.4Drop=1..}] PZInvS.4Drop 0
