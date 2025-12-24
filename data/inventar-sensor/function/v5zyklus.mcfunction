# Wenn Spieler einen der fünf Behälter platzieren, erhalten sie ein Etikett.
tag @a[scores={PZInvS.5Werfer=1..}] add EtiInvS.5Block
tag @a[scores={PZInvS.5Truhe=1..}] add EtiInvS.5Block
tag @a[scores={PZInvS.5Ofen=1..}] add EtiInvS.5Block
tag @a[scores={PZInvS.5Shulker=1..}] add EtiInvS.5Block
tag @a[scores={PZInvS.5Fass=1..}] add EtiInvS.5Block

# Besitzen sie das Etikett, so erhalten sie die Nachricht, dass sie einen Behhälter geöffnet haben.
tellraw @a[tag=EtiInvS.5Block] ["Inventar-Sensor.5:\n",{text:"Inventar geöffnet() == ",color:"gray",bold:true},{text:"wahr",color:"green",bold:true}]

# Damit später auch beim Platzieren von Behältern die Funktion dazu geladen wird, erhalten Spieler ebenfalls das Etikett dafür.
tag @a[advancements={inventar-sensor:v5behaelter_platziert=true}] add EtiInvS.5Block

# Wenn Spieler das Etikett besitzen, wird von deren Position in Augenhöhe in Blickrichtung die Sensor-Funktion geladen.
execute as @a[tag=EtiInvS.5Block] at @s anchored eyes positioned ^ ^ ^0.5 run function inventar-sensor:v5sensor

# Spieler die den Fortschritt besitzen, bekommen ihn entfernt.
advancement revoke @a[advancements={inventar-sensor:v5behaelter_platziert=true}] only inventar-sensor:v5behaelter_platziert

# Falls ein Markierer ohne Behälter existiert, wird er entfernt.
execute as @e[type=minecraft:marker,tag=EtiInvS.5Inventar] at @s unless block ~ ~ ~ #inventar-sensor:v5behaelter run kill @s

# Falls Spieler das Inventar geöffnet haben, wird ihnen der Wert wieder auf null gesetzt.
scoreboard players set @a[tag=EtiInvS.5Block] PZInvS.5Werfer 0
scoreboard players set @a[tag=EtiInvS.5Block] PZInvS.5Truhe 0
scoreboard players set @a[tag=EtiInvS.5Block] PZInvS.5Ofen 0
scoreboard players set @a[tag=EtiInvS.5Block] PZInvS.5Shulker 0
scoreboard players set @a[tag=EtiInvS.5Block] PZInvS.5Fass 0

# Das Etikett wird entfernt, sofern es vorhanden ist.
tag @a[tag=EtiInvS.5Block] remove EtiInvS.5Block

# Zwei Punkte-Ziele werden weiter verwendet um auch die Slot-Anzahl der Behälter zu speichern. Hierbei wird der alte Wert zwischengespeichert und anschließend wird die aktuelle Slot-Anzahl ausgelesen und gespeichert.
execute as @e[type=minecraft:marker,tag=EtiInvS.5Inventar] run scoreboard players operation @s PZInvS.5Werfer = @s PZInvS.5Truhe
execute as @e[type=minecraft:marker,tag=EtiInvS.5Inventar] at @s store result score @s PZInvS.5Truhe run data get block ~ ~ ~ Items

# Wenn der alte Wert und der neue nicht übereinstimmen, wird eine Nachricht an die Spieler ausgegeben. Abhängig ob was dazu gelegt wurde oder etwas entnommen wurder, wird auch das an den Spieler per Nachricht übertragen.
execute as @e[type=minecraft:marker,tag=EtiInvS.5Inventar] unless score @s PZInvS.5Werfer = @s PZInvS.5Truhe at @s run tellraw @a[distance=..4] ["Inventar-Sensor.5:\n",{text:"Inventar geändert() == ",color:"gray",bold:true},{text:"wahr",color:"green",bold:true}]
execute as @e[type=minecraft:marker,tag=EtiInvS.5Inventar] if score @s PZInvS.5Werfer < @s PZInvS.5Truhe at @s run tellraw @a[distance=..4] ["",{text:"Gegenstände aufgefüllt == ",color:"gray",bold:true},{text:"wahr",color:"green",bold:true}]
execute as @e[type=minecraft:marker,tag=EtiInvS.5Inventar] if score @s PZInvS.5Werfer > @s PZInvS.5Truhe at @s run tellraw @a[distance=..4] ["",{text:"Gegenstände aufgefüllt == ",color:"gray",bold:true},{text:"falsch",color:"red",bold:true}]
