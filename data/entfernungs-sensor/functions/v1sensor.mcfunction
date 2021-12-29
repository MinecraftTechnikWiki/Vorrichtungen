# Der ausführende Spieler und der in einem Radius von 100 Metern befindliche Spieler erhalten ein Etikett zur Markierung.
tag @s add EtiEntfS.1Selbst
tag @p[distance=..100,tag=!EtiEntfS.1Selbst] add EtiEntfS.1Spieler

# Die Entfernungs-Variable wird auf null gesetzt und anschließend wird die Entfernungs-Funktion geladen, sofern ein Spieler sich in der Nähe befindet.
scoreboard players set VarEntfS.1Entfernung PZEntfS.1Wert 0
execute facing entity @p[tag=EtiEntfS.1Spieler] feet run function entfernungs-sensor:v1entfernung

# Der Y-Wert der beiden Spieler wird ausgelesen und anschließend voneinander abgezogen.
execute store result score VarEntfS.1Hoehe PZEntfS.1Wert run data get entity @s Pos[1]
execute store result score VarEntfS.1SpielerHoehe PZEntfS.1Wert run data get entity @p[tag=EtiEntfS.1Spieler] Pos[1]
scoreboard players operation VarEntfS.1SpielerHoehe PZEntfS.1Wert -= VarEntfS.1Hoehe PZEntfS.1Wert

# Der Name, die Entfernung und der Delta-Y-Abstand werden per Titel-Befehl ausgegeben.
execute if entity @p[tag=EtiEntfS.1Spieler] run title @s actionbar ["",{"selector":"@p[tag=EtiEntfS.1Spieler]","color":"gold","bold":true},{"text":" Entfernung == ","color":"gray","bold":true},{"score":{"name":"VarEntfS.1Entfernung","objective":"PZEntfS.1Wert"},"color":"red","bold":true},{"text":" Delta-Y == ","color":"gray","bold":true},{"score":{"name":"VarEntfS.1SpielerHoehe","objective":"PZEntfS.1Wert"},"color":"dark_green","bold":true} ]

# Falls kein Spieler in der Nähe ist, wird eine andere Titel-Nachricht ausgegeben.
execute unless entity @p[tag=EtiEntfS.1Spieler] run title @s actionbar ["",{"text":" Spieler in Nähe == ","color":"gray","bold":true},{"text":"falsch","color":"red","bold":true} ]

# Die beiden Etikette werden wieder entfernt.
tag @p[tag=EtiEntfS.1Spieler] remove EtiEntfS.1Spieler
tag @s remove EtiEntfS.1Selbst
