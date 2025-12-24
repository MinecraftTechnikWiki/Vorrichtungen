# Die letzten Koordinaten und Rotationen werden in die Vergleichs-Variablen gespeichert.
scoreboard players operation VarBewS.2Position PZBewS.2X = @s PZBewS.2X
scoreboard players operation VarBewS.2Position PZBewS.2Y = @s PZBewS.2Y
scoreboard players operation VarBewS.2Position PZBewS.2Z = @s PZBewS.2Z
scoreboard players operation VarBewS.2Position PZBewS.2Ric = @s PZBewS.2Ric
scoreboard players operation VarBewS.2Position PZBewS.2Nei = @s PZBewS.2Nei

# Anschließend werden die aktuellen Koordinaten und Rotationen der Spieler gespeichert.
execute store result score @s PZBewS.2X run data get entity @s Pos[0] 1000
execute store result score @s PZBewS.2Y run data get entity @s Pos[1] 1000
execute store result score @s PZBewS.2Z run data get entity @s Pos[2] 1000
execute store result score @s PZBewS.2Ric run data get entity @s Rotation[0] 1000
execute store result score @s PZBewS.2Nei run data get entity @s Rotation[1] 1000

# Wenn sich die Koordinaten und Rotationen verändert haben, ist die letzte und die aktuelle Position, sowie die letzte und aktuelle Rotation ungleich und dann bekommt der Spieler ein Etikett.
execute unless score VarBewS.2Position PZBewS.2X = @s PZBewS.2X run tag @s[tag=!EtiBewS.2Position] add EtiBewS.2Position
execute unless score VarBewS.2Position PZBewS.2Y = @s PZBewS.2Y run tag @s[tag=!EtiBewS.2Position] add EtiBewS.2Position
execute unless score VarBewS.2Position PZBewS.2Z = @s PZBewS.2Z run tag @s[tag=!EtiBewS.2Position] add EtiBewS.2Position
execute unless score VarBewS.2Position PZBewS.2Ric = @s PZBewS.2Ric run tag @s[tag=!EtiBewS.2Rotation] add EtiBewS.2Rotation
execute unless score VarBewS.2Position PZBewS.2Nei = @s PZBewS.2Nei run tag @s[tag=!EtiBewS.2Rotation] add EtiBewS.2Rotation

# Wenn der Spieler seine Position oder Rotation geändert hat, erhält er ein neues Etikett.
execute unless entity @s[tag=!EtiBewS.2Position,tag=!EtiBewS.2Rotation] run tag @s add EtiBewS.2Bewegung

# Wenn der Spieler sich bewegt hat, erhält eine entsprechende Nachricht für Position oder Rotation.
title @s[tag=EtiBewS.2Position] actionbar ["",{text:"Position wurde geändert",color:"dark_purple",bold:true} ]
title @s[tag=EtiBewS.2Rotation] actionbar ["",{text:"Rotation wurde geändert",color:"dark_purple",bold:true} ]

# Wenn der Spieler sich nicht bewegt hat, wird seine Titel-Nachricht über der Schnellleiste geräumt.
title @s[tag=!EtiBewS.2Bewegung] actionbar [""]

# Die Etiketten zur Markierung der Bewegung werden wieder entfernt.
tag @s[tag=EtiBewS.2Bewegung] remove EtiBewS.2Position
tag @s[tag=EtiBewS.2Bewegung] remove EtiBewS.2Rotation
tag @s[tag=EtiBewS.2Bewegung] remove EtiBewS.2Bewegung
