# Wenn nicht gerade eine Kugel generiert wird, kann der Spieler die Kugelgröße nach belieben größer oder keliner einstellen.
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3KugelErzeugen] if entity @a[distance=..150,scores={PZKugelG.3Hor=1}] run scoreboard players add VarKugelG.3Groesse PZKugelG.3Hor 1
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3KugelErzeugen] if entity @a[distance=..150,scores={PZKugelG.3Hor=2}] run scoreboard players remove VarKugelG.3Groesse PZKugelG.3Hor 1

# Der Bereich der Größe liegt zwischen null und 24. Nur innerhalb dieser kann ein Wert festgelegt werden.
execute if score VarKugelG.3Groesse PZKugelG.3Hor matches ..0 run scoreboard players set VarKugelG.3Groesse PZKugelG.3Hor 23
execute if score VarKugelG.3Groesse PZKugelG.3Hor matches 24.. run scoreboard players set VarKugelG.3Groesse PZKugelG.3Hor 1

# Ebenfalls darf nicht gerade eine Kugel generiert werden, wenn man sie auf hohl oder gefüllt einstellen möchte.
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3KugelErzeugen] if entity @a[distance=..150,scores={PZKugelG.3Hor=3}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Hohl,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3KugelErzeugen] if entity @a[distance=..150,scores={PZKugelG.3Hor=4}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Hohl,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

# Solange der Rüstungsständer für die Option hohl exisitiert, bekommt der Spieler in einem 150 Meter großen Bereich eine Chat-Nachricht, sofern er nicht den Wert null besitzt. Dort kann er die Kugel-Größe sowie die Hohlheit einstellen.
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Hohl,sort=nearest,limit=1] as @a[distance=..150] unless entity @s[scores={PZKugelG.3Hor=0}] run tellraw @s ["Kugelgenerator.3: ",{"text":"\ngröße (","bold":true},{"text":"=größe + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für größe + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 1"} },{"text":",","bold":true},{"text":"=größe - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für größe - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 2"} },{"text":") == ","bold":true},{"score":{"name":"VarKugelG.3Groesse","objective":"PZKugelG.3Hor"},"color":"dark_purple","bold":true},{"text":"\nhohl (","bold":true},{"text":"=wahr","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für innen hohl = wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 3"} },{"text":",","bold":true},{"text":"=falsch","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für hohl = falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 4"} },{"text":") == ","bold":true},{"entity":"@e[type=minecraft:armor_stand,tag=EtiKugelG.3Hohl,sort=nearest,limit=1]","nbt":"CustomName","interpret":true} ]

# Nach dem Einstellen wird der Spieler erneut für das Klicken des Auslösers berechtigt und er erhält den Wert null.
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.3Hor=0}] run scoreboard players enable @s PZKugelG.3Hor
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.3Hor=0}] run scoreboard players set @s PZKugelG.3Hor 0

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
