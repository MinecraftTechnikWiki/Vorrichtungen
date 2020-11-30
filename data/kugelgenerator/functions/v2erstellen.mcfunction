# Alle Grundeinstellungen werden durchgeführt.
scoreboard players set @s PZKugelG.2Hor 0
scoreboard players set @s PZKugelG.2Vert 0
tag @s remove EtiKugelG.2Erstellen
tag @s add EtiKugelG.2KugelErzeugen
teleport @s ~ ~10 ~

# Es werden elf Rüstungsständer erzeugt um maximal eine fünf im Durchmesser große Kugel zu generieren.
summon minecraft:armor_stand ~5 ~5 ~5 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~4 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~3 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~2 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~1 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~ {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~-1 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~-2 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~-3 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~-4 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}
summon minecraft:armor_stand ~5 ~5 ~-5 {Small:true,NoGravity:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}

# Eine Nachricht wird allen Spielern in einem Umkreis von 50 Metern mitgeteilt.
tellraw @a[distance=..50] ["Kugelgenerator.2: ",{"text":"Kugel wird generiert","color":"gray","bold":true}]
