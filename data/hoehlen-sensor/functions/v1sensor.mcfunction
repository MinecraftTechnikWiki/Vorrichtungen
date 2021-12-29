# Es werden vier Markierer erzeugt, die anschließend auf die Oberfläche teleportiert wird.
summon minecraft:marker ~ ~ ~ {Tags:["EtiHoehlS.1Alle","EtiHoehlS.1Sensor"]}
summon minecraft:marker ~ ~ ~ {Tags:["EtiHoehlS.1Alle","EtiHoehlS.1Sensor"]}
summon minecraft:marker ~ ~ ~ {Tags:["EtiHoehlS.1Alle","EtiHoehlS.1Sensor"]}
summon minecraft:marker ~ ~ ~ {Tags:["EtiHoehlS.1Alle","EtiHoehlS.1Sensor"]}
spreadplayers ~ ~ 0 1 false @e[type=minecraft:marker,tag=EtiHoehlS.1Sensor,sort=nearest,limit=4]

# Der Y-Wert vom Spieler wird ausgelesen und in eine Variable gespeichert.
execute store result score VarHoehlS.1Y PZHoehlS.1Wert run data get entity @s Pos[1]

# Ebenfalls wird auch der Y-Wert der Markierer ausgelesen und in ihren Punktestand gespeichert. Anschließend wird der größte Y-Wert in die Delta-Variable gespeichert.
execute store result score VarHoehlS.1DeltaY PZHoehlS.1Wert as @e[type=minecraft:marker,tag=EtiHoehlS.1Sensor,sort=nearest,limit=4] store result score @s PZHoehlS.1Wert run data get entity @s Pos[1]
scoreboard players operation VarHoehlS.1DeltaY PZHoehlS.1Wert > @e[type=minecraft:marker,tag=EtiHoehlS.1Sensor,sort=nearest,limit=4] PZHoehlS.1Wert

# Die Markierer werden wieder entfernt.
kill @e[type=minecraft:marker,tag=EtiHoehlS.1Sensor,sort=nearest,limit=4]

# Das Etikett für die Höhle wird zuvor entfernt. Bevor es wieder vergeben wird, falls die Bedingungen stimmen.
tag @s[tag=EtiHoehlS.1Hoehle] remove EtiHoehlS.1Hoehle

# Befindet sich der Markierer vom Wert her über dem des Spielers, so muss sich dieser in einer Höhle befinden und bekommt das Etikett.
execute if score VarHoehlS.1DeltaY PZHoehlS.1Wert > VarHoehlS.1Y PZHoehlS.1Wert run tag @s add EtiHoehlS.1Hoehle
