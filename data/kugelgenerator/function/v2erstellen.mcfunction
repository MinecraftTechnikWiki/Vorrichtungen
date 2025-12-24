# Alle Grundeinstellungen werden durchgeführt.
scoreboard players set @s PZKugelG.2Hor 0
scoreboard players set @s PZKugelG.2Vert 0
tag @s remove EtiKugelG.2Erstellen
teleport @s ~ ~10 ~

# Es werden elf Befehlsblöcke in einer Reihe platziert. Diese erzeugen elf Kugel-Markierer, die beim Generieren der Kugel den richtigen Abstand von sich zum Mittelpunkt messen. Eine zweite Reihe an Ketten-Befehlsblöcken werden darüber platziert, die nach dem Auslösen der Befehlsblöcke alle Befehlsblöcke und einschließlich sich selber wieder entfernen.
execute at @s positioned ~5 ~-5 ~ run fill ~ ~ ~5 ~ ~ ~-5 minecraft:command_block[facing=up]{auto:true,Command:'summon minecraft:marker ~ ~ ~ {Tags:["EtiKugelG.2Alle","EtiKugelG.2Kugel"]}'} replace
execute at @s positioned ~5 ~-4 ~ run fill ~ ~ ~5 ~ ~ ~-5 minecraft:chain_command_block[facing=up]{auto:true,Command:'fill ~ ~-1 ~ ~ ~ ~ minecraft:air replace'} replace

# Eine Nachricht wird allen Spielern in einem Umkreis von 50 Metern mitgeteilt.
tellraw @a[distance=..50] ["Kugelgenerator.2:\n",{text:"Kugel wird generiert",color:"gray",bold:true}]
