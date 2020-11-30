# Alle Einstellungen werden vorgenommen, damit der Rüstungsständer die Kugel erstellen kann.
scoreboard players set @s PZKugelG.3Hor 0
scoreboard players set @s PZKugelG.3Vert 0
tag @s remove EtiKugelG.3Erstellen
tag @s add EtiKugelG.3KugelErzeugen
teleport @s ~ ~15 ~ ~ -90

# Eine Nachricht wird allen Spielern in einem Umkreis von 50 Metern mitgeteilt.
tellraw @a[distance=..50] ["Kugelgenerator.3: ",{"text":"Kugel wird generiert","color":"gray","bold":true}]
