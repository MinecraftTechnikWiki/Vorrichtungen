# Die Werte sowie die Etiketten werden gesetzt. Damit die Kugel weiter oben entsteht, wird der Rüstungsständer zehn Meter nach oben teleportiert.
scoreboard players set @s PZKugelG.1Hor 0
scoreboard players set @s PZKugelG.1Vert 0
tag @s remove EtiKugelG.1Erstellen
tag @s add EtiKugelG.1KugelErzeugen
teleport @s ~ ~10 ~

# Es werden sieben Kugel-Rüstungsständer erzeugt, die beim Generieren der Kugel den richtigen Abstand messen.
summon minecraft:armor_stand ~3 ~7 ~3 {Small:true,NoGravity:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}
summon minecraft:armor_stand ~3 ~7 ~2 {Small:true,NoGravity:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}
summon minecraft:armor_stand ~3 ~7 ~1 {Small:true,NoGravity:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}
summon minecraft:armor_stand ~3 ~7 ~ {Small:true,NoGravity:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}
summon minecraft:armor_stand ~3 ~7 ~-1 {Small:true,NoGravity:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}
summon minecraft:armor_stand ~3 ~7 ~-2 {Small:true,NoGravity:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}
summon minecraft:armor_stand ~3 ~7 ~-3 {Small:true,NoGravity:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}

# Eine Nachricht wird allen Spielern in einem Umkreis von 50 Metern mitgeteilt.
tellraw @a[distance=..50] ["Kugelgenerator.1: ",{"text":"Kugel wird generiert","color":"gray","bold":true}]
