# Nur wenn keine Kugel gerade erzeugt wird, kann eine neue Kugel generiert werden. Nur dann wird vom Erstellen-Rüstungsständer die Erstellen-Funktion aufgerufen.
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Hor=0..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.1Erstellen] at @s run function kugelgenerator:v1erstellen

# In der Mitte der Kugel werden Flammen-Partikel erzeugt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Mittelpunkt] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

# An der Position des Generieren-Rüstungsständers wird nach allen Kugel-Markierern gesucht, die in dem Radius von drei Metern liegen. An deren Position wird grobe Erde platziert, falls dort Luft ist.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Hor=0..}] at @e[distance=..3,type=minecraft:marker,tag=EtiKugelG.1Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace

# Die Kugel-Rüstungsständer werden einen Meter in minus x-Richtung verschoben und erhalten für die Horizontale eine eins dazu. Wenn die Horizontale sieben erreicht wird der Wert der Vertikalen um eins erhöht.
execute as @e[type=minecraft:marker,tag=EtiKugelG.1Kugel] at @s run teleport @s ~-1 ~ ~
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren] PZKugelG.1Hor 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Hor=7..}] PZKugelG.1Vert 1

# Wenn der Punktestand der Vertikalen den Wert sieben erreicht, wird die Nachricht ausgegeben.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Vert=7..}] run tellraw @a[distance=..50] ["Kugelgenerator.1:\n",{text:"Kugel generiert",color:"gold",bold:true}]

# Wenn die Horizontale den Wert sieben erreicht werden die Kugel-Markierer eine Reihe nach oben teleportiert und beginnen von vorne. Wenn die Vertikale den Wert sieben erreicht, werden alle Kugel-Markierer entfernt.
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Hor=7..}] as @e[type=minecraft:marker,tag=EtiKugelG.1Kugel] at @s run teleport @s ~7 ~1 ~
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Vert=7..}] run kill @e[type=minecraft:marker,tag=EtiKugelG.1Kugel]

# Wenn der Wert der Vertikalen bei sieben angekommen ist, wird das Etikett entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Vert=7..}] remove EtiKugelG.1Generieren

# Wenn der Generieren-Rüstungsständer den Wert sieben für die Horizontale erreicht hat, wird er wieder auf null gesetzt.
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKugelG.1Generieren,scores={PZKugelG.1Hor=7..}] PZKugelG.1Hor 0
