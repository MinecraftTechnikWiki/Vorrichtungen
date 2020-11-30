# Wenn Spieler den verzauberten Stock auswählen, erhalten sie ein Etikett.
tag @a[distance=..25,nbt={SelectedItem:{id:"minecraft:stick",tag:{EigInvS.4Sensor:true} } }] add EtiInvS.4InventarSensor

# Wenn die Spieler das Etikett besitzen und dabei einen Gegenstand droppen, so wird dessen Stapelzahl in seinen Punktestand wie auch in eine Variable gespeichert.
execute at @a[distance=..25,tag=EtiInvS.4InventarSensor,scores={PZInvS.4Drop=1..}] as @e[distance=..2,type=minecraft:item,sort=nearest,limit=1] store result score @s PZInvS.4Drop store result score VarInvS.4DropStapel PZInvS.4Drop run data get entity @s Item.Count

# Danach wird versucht die ID des gedroppten Gegenstands in den NBT-Speicher zu speichern. Falls die ID bereits dort gespeichert ist, wird der Befehl fehlschlagen und dies wird per Variable ebenfalls gespeichert.
execute at @a[distance=..25,tag=EtiInvS.4InventarSensor,scores={PZInvS.4Drop=1..}] store success score VarInvS.4Ungleich PZInvS.4Drop run data modify storage inventar-sensor:v4daten "EigInvS.4SucheDrop" set from entity @e[distance=..2,type=minecraft:item,scores={PZInvS.4Drop=1..},sort=nearest,limit=1] Item

# Der fallen gelassene Drop wird von den Eigenschaften so geändert, dass er sofort wieder vom Spieler aufgehoben wird.
execute at @a[distance=..25,tag=EtiInvS.4InventarSensor,scores={PZInvS.4Drop=1..}] run data merge entity @e[distance=..2,type=minecraft:item,sort=nearest,limit=1] {PickupDelay:0s}

# Nur wenn der fallen gelassene Drop nicht schon bereits im NBT-Speicher vorlag, wird in einem Umkreis von 25 Blöcken bei allen Spielern die Inventar-Funktion aufgerufen, wenn sie den Stock ausgewählt haben.
execute if score VarInvS.4Ungleich PZInvS.4Drop matches 1 as @a[distance=..25,tag=EtiInvS.4InventarSensor] run function inventar-sensor:v4inventar

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiInvS.4InventarSensor] remove EtiInvS.4InventarSensor

# Falls man etwas gedroppt hat, wird der Punktestand wieder auf null gesetzt.
scoreboard players set @a[scores={PZInvS.4Drop=1..}] PZInvS.4Drop 0
