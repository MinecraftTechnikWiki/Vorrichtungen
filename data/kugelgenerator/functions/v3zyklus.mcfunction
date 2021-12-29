
tag @a[nbt={SelectedItem:{tag:{EigKugelG.3Ausloeser:true} } }] add EtiKugelG.3Ausgewaehlt

scoreboard players set @a[tag=EtiKugelG.3Ausgewaehlt,tag=!EtiKugelG.3Auswahl] PZKugelG.3Hor -99

execute as @a[tag=EtiKugelG.3Ausgewaehlt] unless entity @s[scores={PZKugelG.3Hor=0}] run function kugelgenerator:v3ausloeser

tag @a[tag=EtiKugelG.3Ausgewaehlt,tag=!EtiKugelG.3Auswahl] add EtiKugelG.3Auswahl
tag @a[tag=!EtiKugelG.3Ausgewaehlt,tag=EtiKugelG.3Auswahl] remove EtiKugelG.3Auswahl

tag @a[tag=EtiKugelG.3Ausgewaehlt] remove EtiKugelG.3Ausgewaehlt

# Wenn ein Rüstungsständer vom Spieler platziert wurde, wird die Erstellen-Funktion für diesen aufgerufen.
execute as @e[type=minecraft:armor_stand,tag=EtiKugelG.3Erstellen] at @s run function kugelgenerator:v3erstellen

# Bei jedem Rüstungsständer der den Mittelpunkt der Kugel darstellt werden Flammenpartikel erzeugt.
execute at @e[type=armor_stand,tag=EtiKugelG.3Mittelpunkt] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

# Horizontal soll sich der Rüstungsständer genau 360 mal um die eigene Achse drehen um die Blöcke der Kugel zu platzieren. Anschließend wird durch ihm die Kugel-Funktion geladen.
scoreboard players set @e[type=armor_stand,tag=EtiKugelG.3KugelErzeugen] PZKugelG.3Hor 360
execute as @e[type=armor_stand,tag=EtiKugelG.3KugelErzeugen] at @s run function kugelgenerator:v3kugel

# Vertikal kann der Rüstungsständer sich maximal 180 Grad nach unten neigen, deshalb wird sein Wert um eins erhöht und er selbst wird geneigt.
scoreboard players add @e[type=armor_stand,tag=EtiKugelG.3KugelErzeugen] PZKugelG.3Vert 1
execute as @e[type=armor_stand,tag=EtiKugelG.3KugelErzeugen] at @s run teleport @s ~ ~ ~ ~ ~1

# Wenn der Rüstungsständer die maximale Neigung von 180 Grad erreicht hat, wird die Nachricht ausgegeben und er verliert das Etikett.
execute at @e[type=armor_stand,tag=EtiKugelG.3KugelErzeugen,scores={PZKugelG.3Vert=180..}] run tellraw @a[distance=..50] ["Kugelgenerator.3: ",{"text":"Kugel generiert","bold":true}]
tag @e[type=armor_stand,tag=EtiKugelG.3KugelErzeugen,scores={PZKugelG.3Vert=180..}] remove EtiKugelG.3KugelErzeugen
