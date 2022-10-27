# Die Werte sowie die Etiketten werden gesetzt. Damit die Kugel weiter oben entsteht, wird der Rüstungsständer zehn Meter nach oben teleportiert.
scoreboard players set @s PZKugelG.1Hor 0
scoreboard players set @s PZKugelG.1Vert 0
tag @s remove EtiKugelG.1Erstellen
teleport @s ~ ~10 ~

# Es werden sieben Kugel-Rüstungsständer erzeugt, die beim Generieren der Kugel den richtigen Abstand messen.
execute at @s positioned ~3 ~-3 ~ run fill ~ ~ ~3 ~ ~ ~-3 minecraft:command_block[facing=up]{auto:true,Command:'summon minecraft:marker ~ ~ ~ {Tags:["EtiKugelG.1Alle","EtiKugelG.1Kugel"]}'} replace
execute at @s positioned ~3 ~-2 ~ run fill ~ ~ ~3 ~ ~ ~-3 minecraft:chain_command_block[facing=up]{auto:true,Command:'fill ~ ~-1 ~ ~ ~ ~ minecraft:air replace'} replace

# Eine Nachricht wird allen Spielern in einem Umkreis von 50 Metern mitgeteilt.
tellraw @a[distance=..50] ["Kugelgenerator.1:\n",{"text":"Kugel wird generiert","color":"gray","bold":true}]
