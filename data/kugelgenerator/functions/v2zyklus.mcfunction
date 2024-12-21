# Wenn der Spieler den Kugelgenerator-Rüstungsständer in der Hand hält, wird ihm ein Etikett gegeben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigKugelG.2Ausloeser:true}] run tag @s add EtiKugelG.2Ausgewaehlt

# Wenn der Spieler gerade in diesem Tick den Rüstungsständer ausgewählt hat, wird ihm der Punktestand auf einen Wert der nicht null ist gesetzt, damit man beim Auswählen des Rüstungsständers die Chat-Nachricht erhält.
scoreboard players set @a[tag=EtiKugelG.2Ausgewaehlt,tag=!EtiKugelG.2Auswahl] PZKugelG.2Hor -99

# Hat man den Rüstungsständer ausgewählt und nicht den Wert null (dann hat man eine Schaltfläche im Chat angeklickt), so wird die Auslöser-Funktion gestartet.
execute as @a[tag=EtiKugelG.2Ausgewaehlt] unless entity @s[scores={PZKugelG.2Hor=0}] run function kugelgenerator:v2ausloeser

# Um zu messen ob der Spieler gerade im selben Tick den Rüstungsständer ausgewählt hat oder abgewählt hat, wird ihm ein zusätzliches Hilfs-Etikett gegeben oder entfernt.
tag @a[tag=EtiKugelG.2Ausgewaehlt,tag=!EtiKugelG.2Auswahl] add EtiKugelG.2Auswahl
tag @a[tag=!EtiKugelG.2Ausgewaehlt,tag=EtiKugelG.2Auswahl] remove EtiKugelG.2Auswahl

# Das Etikett wird wieder entfernt, sodass es stehts nur dann beim Spieler vorhanden ist, wenn er den Rüstungsständer ausgewählt hat.
tag @a[tag=EtiKugelG.2Ausgewaehlt] remove EtiKugelG.2Ausgewaehlt

# Nur wenn keine Kugel gerade erzeugt wird, kann eine neue Kugel generiert werden. Nur dann wird vom Erstellen-Rüstungsständer die Erstellen-Funktion aufgerufen.
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Erstellen] at @s run function kugelgenerator:v2erstellen

# Am Mittelpunkt der Kugel werden Flammen-Partikel erzeugt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Mittelpunkt] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

# Je nach Wert der Größen-Variable wird eine entsprechend große Kugel erzeugt. Dazu wird an den Kugel-Markierern grobe Erde platziert, wenn sie in genau dem Abstand zur Mitte sich befinden. Danach werden sie einen Meter vorwärts bewegt und erhalten Werte für die Horizontale und Vertikale.
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 3 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] at @e[distance=2..3,type=minecraft:marker,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 4 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] at @e[distance=3..4,type=minecraft:marker,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 5 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=0..}] at @e[distance=4..5,type=minecraft:marker,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute as @e[type=minecraft:marker,tag=EtiKugelG.2Kugel] at @s run teleport @s ~-1 ~ ~
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren] PZKugelG.2Hor 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=11..}] PZKugelG.2Vert 1

# Wenn sich die Kugel-Markierer in der elften Ebene befinden, besitzt der Generieren-Rüstungsständer den Wert elf und gibt eine Nachricht aus.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Vert=11..}] run tellraw @a[distance=..50] ["Kugelgenerator.2:\n",{"text":"Kugel generiert","color":"gold","bold":true}]

# Wenn die Kugel-Markierer in der Horizontale beim elften Meter angelangt sind, werden sie wieder zurück teleportiert aber eine Reihe darüber, falls sie die Vertikale auf der höchsten Stufe erreicht haben (elf) werden sie entfernt.
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=11..}] as @e[type=minecraft:marker,tag=EtiKugelG.2Kugel] at @s run teleport @s ~11 ~1 ~
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Vert=11..}] run kill @e[type=minecraft:marker,tag=EtiKugelG.2Kugel]

# Wenn die Kugel erzeugt wurde, wird das Etikett entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Vert=11..}] remove EtiKugelG.2Generieren

# Wenn der Wert elf erreicht wurde, wird der Wert wieder auf null gesetzt.
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKugelG.2Generieren,scores={PZKugelG.2Hor=11..}] PZKugelG.2Hor 0
