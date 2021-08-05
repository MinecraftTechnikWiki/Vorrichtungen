# Es wird für jede Richtung eine Partikelwolek erzeugt, die genau einen Tick lang existiert.
execute positioned ^ ^ ^0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Vorwaerts"]}
execute positioned ^ ^ ^-0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rueckwaerts"]}
execute positioned ^0.2 ^ ^ unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Links"]}
execute positioned ^-0.2 ^ ^ unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rechts"]}

# Für die Ecken werden ebenfalls vier Partikelwolken erzeugt, die einen Tick lang existieren.
execute positioned ^0.2 ^ ^0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Vorwaerts"]}
execute positioned ^0.2 ^ ^-0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rueckwaerts"]}
execute positioned ^-0.2 ^ ^0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Vorwaerts"]}
execute positioned ^-0.2 ^ ^-0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rueckwaerts"]}

# Für nach oben wird eine extra Partikelwolke erzeugt.
execute positioned ~ ~0.9 ~ unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Oben"]}

# Damit die Titel-Nachricht für die Bewegungen nur solange erscheint wie eine Bewegung stattfindet, wird sie vorher immer geräumt.
title @s actionbar [""]

# Wenn der Spieler springt oder nach oben läuft, so wird er von der Partikelwolke mit einem Etikett markiert, das er erst verliert wenn er wieder auf dem Boden ist.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Oben,sort=nearest,limit=1] run tag @s[distance=..0.5] add EtiBewS.p1Oben
title @s[tag=EtiBewS.p1Oben] actionbar ["",{"text":"oben","color":"red","bold":true}]
tag @s[tag=EtiBewS.p1Oben,nbt={OnGround:true}] remove EtiBewS.p1Oben

# Mit Hilfe von Prädikaten wird das Schleichen, das Sprinten oder das Schmimmen des Spielers erfasst.
title @s[predicate=bewegungssensor:vp1schleichen] actionbar ["",{"text":"unten","color":"red","bold":true}]
title @s[predicate=bewegungssensor:vp1sprinten] actionbar ["",{"text":"sprinten","color":"red","bold":true}]
title @s[predicate=bewegungssensor:vp1schwimmen] actionbar ["",{"text":"schwimmen","color":"red","bold":true}]

# Nur wenn eine Partikelwolke nah genug beim Spieler ist, wird die Bewegung in eine bestimmte Richtung erfasst und als Titel-Nachricht ausgegeben.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Vorwaerts,sort=nearest,limit=3] run title @s[distance=..0.1] actionbar ["",{"text":"vorwärts","color":"red","bold":true}]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Rueckwaerts,sort=nearest,limit=3] run title @s[distance=..0.1] actionbar ["",{"text":"rückwärts","color":"red","bold":true}]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Links,sort=nearest,limit=1] run title @s[distance=..0.1] actionbar ["",{"text":"links","color":"red","bold":true}]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Rechts,sort=nearest,limit=1] run title @s[distance=..0.1] actionbar ["",{"text":"rechts","color":"red","bold":true}]
