# Der Y-Wert vom Spieler wird ausgelesen und in eine Variable gespeichert.
execute store result score VarHoehlS.1Y PZHoehlS.1Wert run data get entity @s Pos[1]

# Es wird ein Markierer auf der Oberfläche erzeugt. Anschließend wird sein Y-Wert in den Punktestand des Spielers gespeichert.
execute positioned over world_surface run summon minecraft:marker ~ ~ ~ {Tags:["EtiHoehlS.1Alle","EtiHoehlS.1Sensor"]}
execute store result score @s PZHoehlS.1Wert run data get entity @n[type=minecraft:marker,tag=EtiHoehlS.1Sensor] Pos[1]

# Um Delta-Y auszurechnen, wird der Y-Wert der Oberfläche minus den Y-Wert des Spielers gerechnet.
scoreboard players operation @s PZHoehlS.1Wert -= VarHoehlS.1Y PZHoehlS.1Wert

# Der Markierer wird wieder entfernt.
kill @n[type=minecraft:marker,tag=EtiHoehlS.1Sensor]
