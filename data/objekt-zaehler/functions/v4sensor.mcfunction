# Von der Position des Spielers werden in einem Radius von 50 Blöcken alle Objekte mit einem Etikett ausgestattet, die nachher gezählt werden.
execute store result score @s PZObjZae.4Anz run tag @e[distance=..50,tag=!EtiObjZae.4Ausgewaehlt,sort=nearest] add EtiObjZae.4Zaehlen

# Befindet sich mindestens ein Objekt beim Spieler, so wird die Zählen-Funktion geladen.
execute if entity @s[scores={PZObjZae.4Anz=1..}] run function objekt-zaehler:v4zaehlen

# Dem Spieler wird eine Nachricht ausgegeben, in der die Anzahl der Objekte steht.
tellraw @s ["Objekt-Zähler.4:\n",{"text":"Anzahl Objekte == ","bold":true},{"score":{"name":"@s","objective":"PZObjZae.4Anz"},"color":"dark_purple","bold":true}]

# Falls mindestens ein Objekt gezählt wurde, wird die Anzeigen-Funktion geladen.
execute if entity @s[scores={PZObjZae.4Anz=1..}] run function objekt-zaehler:v4anzeigen
