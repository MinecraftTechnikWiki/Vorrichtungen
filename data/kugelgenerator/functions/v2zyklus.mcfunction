
tag @a[nbt={SelectedItem:{tag:{EigKugelG.2Ausloeser:true} } }] add EtiKugelG.2Ausgewaehlt

scoreboard players set @a[tag=EtiKugelG.2Ausgewaehlt,tag=!EtiKugelG.2Auswahl] PZKugelG.2Hor -99

execute as @a[tag=EtiKugelG.2Ausgewaehlt] unless entity @s[scores={PZKugelG.2Hor=0}] run function kugelgenerator:v2ausloeser

tag @a[tag=EtiKugelG.2Ausgewaehlt,tag=!EtiKugelG.2Auswahl] add EtiKugelG.2Auswahl
tag @a[tag=!EtiKugelG.2Ausgewaehlt,tag=EtiKugelG.2Auswahl] remove EtiKugelG.2Auswahl

tag @a[tag=EtiKugelG.2Ausgewaehlt] remove EtiKugelG.2Ausgewaehlt

# Wenn gerade keine Kugel erzeugt wird, kann eine Kugel generiert werden. Dazu wird vom Erstellen-Rüstungsständer die Erstellen-Funktion aufgerufen.
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Erstellen] at @s run function kugelgenerator:v2erstellen

# Am Mittelpunkt der Kugel werden Flammen-Partikel erzeugt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Mittelpunkt] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

# Je nach Wert der Größen-Variable wird eine entsprechend große Kugel erzeugt. Dazu wird an den Kugel-Rüstungsständern grobe Erde platziert, wenn sie in genau dem Abstand zur Mitte sich befinden. Danach werden sie einen Meter vorwärts bewegt und erhalten Werte für die Horizontale und Vertikale.
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 3 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] at @e[distance=2..3,type=minecraft:marker,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 4 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] at @e[distance=3..4,type=minecraft:marker,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 5 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] at @e[distance=4..5,type=minecraft:marker,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute as @e[type=minecraft:marker,tag=EtiKugelG.2Kugel] at @s run teleport @s ~-1 ~ ~
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren] PZKugelG.2Hor 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=11..}] PZKugelG.2Vert 1

# Wenn die Kugel-Rüstungsständer in der elften Ebene sich befinden, besitzt der KugelErzeugen-Rüstungsständer den Wert elf und gibt eine Nachricht aus.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Vert=11..}] run tellraw @a[distance=..50] ["Kugelgenerator.2:\n",{"text":"Kugel generiert","color":"gold","bold":true}]

# Wenn die Kugel-Rüstungsständer in der Horizontale beim elften Meter angelangt sind, werden sie wieder zurück teleportiert aber eine Reihe darüber, falls sie die Vertikale auf der höchsten Stufe erreicht haben (elf) werden sie entfernt.
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=11..}] as @e[type=minecraft:marker,tag=EtiKugelG.2Kugel] at @s run teleport @s ~11 ~1 ~
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Vert=11..}] run kill @e[type=minecraft:marker,tag=EtiKugelG.2Kugel]

# Wenn die Kugel erzeugt wurde, wird das Etikett entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Vert=11..}] remove EtiKugelG.2Generieren

# Wenn der Wert elf erreicht wurde, wird der Wert wieder auf null gesetzt.
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=11..}] PZKugelG.2Hor 0
