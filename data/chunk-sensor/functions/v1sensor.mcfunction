# Die zwei Koordinaten X und Z werden in jeweils zwei Variablen gespeichert und dabei wird die Koordinate von einer Kommazahl in eine Ganzzahl umgewandelt.
execute store result score VarChunkS.1X PZChunkS.1Wert store result score VarChunkS.1XSektion PZChunkS.1Wert run data get entity @s Pos[0]
execute store result score VarChunkS.1Z PZChunkS.1Wert store result score VarChunkS.1ZSektion PZChunkS.1Wert run data get entity @s Pos[2]

# Ein Markierer wird erzeugt, um später die Ecke des Chunks zu markieren.
summon minecraft:marker ~ ~ ~ {Tags:["EtiChunkS.1Alle","EtiChunkS.1Sensor"]}

# Um die Chunk-Koordinaten zu erhalten, werden die Koordinaten durch 16 ganzahlig geteilt und anschließend werden die beiden Werte in die Positionswerte des Markierers gespeichert. Dabei werden die Werte mal 16 genommen.
execute store result entity @e[type=minecraft:marker,tag=EtiChunkS.1Sensor,sort=nearest,limit=1] Pos[0] double 16 run scoreboard players operation VarChunkS.1X PZChunkS.1Wert /= KonstChunkS.1Chunk PZChunkS.1Wert
execute store result entity @e[type=minecraft:marker,tag=EtiChunkS.1Sensor,sort=nearest,limit=1] Pos[2] double 16 run scoreboard players operation VarChunkS.1Z PZChunkS.1Wert /= KonstChunkS.1Chunk PZChunkS.1Wert

# Um die Sektions-Koordinaten zu erhalten, werden die Koordinaten modulo 16 gerechnet.
scoreboard players operation VarChunkS.1XSektion PZChunkS.1Wert %= KonstChunkS.1Chunk PZChunkS.1Wert
scoreboard players operation VarChunkS.1ZSektion PZChunkS.1Wert %= KonstChunkS.1Chunk PZChunkS.1Wert

# Um alle vier Ecken anzuzeigen, werden drei weitere Markierer erzeugt.
execute at @e[type=minecraft:marker,tag=EtiChunkS.1Sensor,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~16 {Tags:["EtiChunkS.1Alle","EtiChunkS.1Sensor"]}
execute at @e[type=minecraft:marker,tag=EtiChunkS.1Sensor,sort=nearest,limit=2] run summon minecraft:marker ~16 ~ ~ {Tags:["EtiChunkS.1Alle","EtiChunkS.1Sensor"]}

# An der Position der vier Markierer werden Partikel erzeugt. Diese kann nur der Spieler selbst sehen.
execute at @e[type=minecraft:marker,tag=EtiChunkS.1Sensor,sort=nearest,limit=4] run particle minecraft:totem_of_undying ~ ~ ~ 0 5 0 0.1 10 force @s[distance=..23]

# Die Markierer werden wieder entfernt, damit sie immer nur an den Ecken des aktuellen Chunks auftreten.
kill @e[distance=..23,type=minecraft:marker,tag=EtiChunkS.1Sensor,sort=nearest,limit=4]

# Die zwei Chunk-Koordinaten und die zwei Sektions-Koordinaten werden mit Hilfe der Variablen angezeigt.
title @s actionbar ["",{"text":"Chunk[","color":"gray","bold":true},{"score":{"name":"VarChunkS.1X","objective":"PZChunkS.1Wert"},"color":"dark_purple","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.1Z","objective":"PZChunkS.1Wert"},"color":"dark_purple","bold":true},{"text":"] == [","color":"gray","bold":true},{"score":{"name":"VarChunkS.1XSektion","objective":"PZChunkS.1Wert"},"color":"red","bold":true},{"text":"][","color":"gray","bold":true},{"score":{"name":"VarChunkS.1ZSektion","objective":"PZChunkS.1Wert"},"color":"blue","bold":true},{"text":"]","color":"gray","bold":true}]
