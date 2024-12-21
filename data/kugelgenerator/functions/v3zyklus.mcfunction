# Wenn der Spieler den Kugelgenerator-Rüstungsständer in der Hand hält, wird ihm ein Etikett gegeben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigKugelG.3Ausloeser:true}] run tag @s add EtiKugelG.3Ausgewaehlt

# Wenn der Spieler gerade in diesem Tick den Rüstungsständer ausgewählt hat, wird ihm der Punktestand auf einen Wert der nicht null ist gesetzt, damit man beim Auswählen des Rüstungsständers die Chat-Nachricht erhält.
scoreboard players set @a[tag=EtiKugelG.3Ausgewaehlt,tag=!EtiKugelG.3Auswahl] PZKugelG.3Hor -99

# Hat man den Rüstungsständer ausgewählt und nicht den Wert null (dann hat man eine Schaltfläche im Chat angeklickt), so wird die Auslöser-Funktion gestartet.
execute as @a[tag=EtiKugelG.3Ausgewaehlt] unless entity @s[scores={PZKugelG.3Hor=0}] run function kugelgenerator:v3ausloeser

# Um zu messen ob der Spieler gerade im selben Tick den Rüstungsständer ausgewählt hat oder abgewählt hat, wird ihm ein zusätzliches Hilfs-Etikett gegeben oder entfernt.
tag @a[tag=EtiKugelG.3Ausgewaehlt,tag=!EtiKugelG.3Auswahl] add EtiKugelG.3Auswahl
tag @a[tag=!EtiKugelG.3Ausgewaehlt,tag=EtiKugelG.3Auswahl] remove EtiKugelG.3Auswahl

# Das Etikett wird wieder entfernt, sodass es stehts nur dann beim Spieler vorhanden ist, wenn er den Rüstungsständer ausgewählt hat.
tag @a[tag=EtiKugelG.3Ausgewaehlt] remove EtiKugelG.3Ausgewaehlt

# Wenn ein Rüstungsständer vom Spieler platziert wurde, wird die Erstellen-Funktion für diesen aufgerufen.
execute as @e[type=minecraft:armor_stand,tag=EtiKugelG.3Erstellen] at @s run function kugelgenerator:v3erstellen

# Bei jedem Rüstungsständer der den Mittelpunkt der Kugel darstellt werden Flammenpartikel erzeugt.
execute at @e[type=armor_stand,tag=EtiKugelG.3Mittelpunkt] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

# Horizontal soll sich der Rüstungsständer genau 360 mal um die eigene Achse drehen um die Blöcke der Kugel zu platzieren. Anschließend wird durch ihm die Kugel-Funktion geladen.
scoreboard players set @e[type=armor_stand,tag=EtiKugelG.3Generieren] PZKugelG.3Hor 360
execute as @e[type=armor_stand,tag=EtiKugelG.3Generieren] at @s run function kugelgenerator:v3kugel

# Vertikal kann der Rüstungsständer sich maximal 180 Grad nach unten neigen, deshalb wird sein Wert um eins erhöht und er selbst wird geneigt.
scoreboard players add @e[type=armor_stand,tag=EtiKugelG.3Generieren] PZKugelG.3Vert 1
execute as @e[type=armor_stand,tag=EtiKugelG.3Generieren] at @s run teleport @s ~ ~ ~ ~ ~1

# Wenn der Rüstungsständer die maximale Neigung von 180 Grad erreicht hat, wird die Nachricht ausgegeben und er verliert das Etikett.
execute at @e[type=armor_stand,tag=EtiKugelG.3Generieren,scores={PZKugelG.3Vert=180..}] run tellraw @a[distance=..50] ["Kugelgenerator.3:\n",{"text":"Kugel generiert","color":"gold","bold":true}]
tag @e[type=armor_stand,tag=EtiKugelG.3Generieren,scores={PZKugelG.3Vert=180..}] remove EtiKugelG.3Generieren
