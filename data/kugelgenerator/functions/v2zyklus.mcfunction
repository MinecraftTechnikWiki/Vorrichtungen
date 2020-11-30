# Spieler die auf den Auslöser geklickt haben, sorgen dafür, dass die Größen-Variable den Wert vom Spieler übertragen bekommen. Vorausgesetzt es wird keine Kugel in gleichen Augenblick erzeugt.
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen] as @a[distance=..150,scores={PZKugelG.2Hor=3..5}] run scoreboard players operation VarKugelG.2Groesse PZKugelG.2Hor = @s PZKugelG.2Hor

# Spieler die auf den Auslöser geklickt haben oder noch nie ihn angeklickt haben, erhalten eine Chat-Nachricht in der sie die drei Größen der Kugel festelegen können, die sie mit dem Platzieren des Rüstungsständers erzeugen.
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 0.. as @a[distance=..150] unless entity @s[scores={PZKugelG.2Hor=0}] run tellraw @s ["Kugelgenerator.2: ",{"text":"\ngröße = ","bold":true},{"text":"3","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wert"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.2Hor set 3"} },{"text":"\ngröße = ","bold":true},{"text":"4","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wert"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.2Hor set 4"} },{"text":"\ngröße = ","bold":true},{"text":"5","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wert"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.2Hor set 5"} },{"text":"\ngröße == ","bold":true},{"score":{"name":"VarKugelG.2Groesse","objective":"PZKugelG.2Hor"},"color":"dark_purple","bold":true}]

# Anschließend erhalten die Spieler wieder die Möglichkeit auf den Auslöser zu klicken und ihr Punktestand wird auf null gesetzt.
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.2Hor=0}] run scoreboard players enable @s PZKugelG.2Hor
execute as @a[distance=..150] unless entity @s[scores={PZKugelG.2Hor=0}] run scoreboard players set @s PZKugelG.2Hor 0

# Wenn gerade keine Kugel erzeugt wird, kann eine Kugel generiert werden. Dazu wird vom Erstellen-Rüstungsständer die Erstellen-Funktion aufgerufen.
execute unless entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Hor=0..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Erstellen] at @s run function kugelgenerator:v2erstellen

# Am Mittelpunkt der Kugel werden Flammen-Partikel erzeugt.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2Mittelpunkt] run particle minecraft:flame ~ ~1 ~ 0.3 0.3 0.3 0 10

# Je nach Wert der Größen-Variable wird eine entsprechend große Kugel erzeugt. Dazu wird an den Kugel-Rüstungsständern grobe Erde platziert, wenn sie in genau dem Abstand zur Mitte sich befinden. Danach werden sie einen Meter vorwärts bewegt und erhalten Werte für die Horizontale und Vertikale.
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 3 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Hor=0..}] at @e[distance=2..3,type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 4 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Hor=0..}] at @e[distance=3..4,type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if score VarKugelG.2Groesse PZKugelG.2Hor matches 5 at @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Hor=0..}] at @e[distance=4..5,type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] at @s run teleport @s ~-1 ~ ~
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen] PZKugelG.2Hor 1
scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Hor=11..}] PZKugelG.2Vert 1

# Wenn die Kugel-Rüstungsständer in der elften Ebene sich befinden, besitzt der KugelErzeugen-Rüstungsständer den Wert elf und gibt eine Nachricht aus.
execute at @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Vert=11..}] run tellraw @a[distance=..50] ["Kugelgenerator.2: ",{"text":"Kugel generiert","bold":true}]

# Wenn die Kugel-Rüstungsständer in der Horizontale beim elften Meter angelangt sind, werden sie wieder zurück teleportiert aber eine Reihe darüber, falls sie die Vertikale auf der höchsten Stufe erreicht haben (elf) werden sie entfernt.
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Hor=11..}] as @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kugel] at @s run teleport @s ~11 ~1 ~
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Vert=11..}] run kill @e[type=minecraft:armor_stand,tag=EtiKugelG.2Kugel]

# Wenn die Kugel erzeugt wurde, wird das Etikett entfernt.
tag @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Vert=11..}] remove EtiKugelG.2KugelErzeugen

# Wenn der Wert elf erreicht wurde, wird der Wert wieder auf null gesetzt.
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKugelG.2KugelErzeugen,scores={PZKugelG.2Hor=11..}] PZKugelG.2Hor 0
