# Um einen Block tiefer (weil die Hitbox tiefer liegt als der Beobachter) wird geprüft ob sich dort der Rüstungsständer befindet den man anschaut. Wenn das der Fall ist, wird ein Etikett vergeben.
execute positioned ~ ~-1 ~ if entity @e[distance=..0.3,type=minecraft:armor_stand,tag=EtiBlWS.3Anschauen] run tag @s add EtiBlWS.3Blickkontakt

# Wenn der Spieler Blickkontakt hatte, wird eine Titel-Nachricht ausgegeben.
title @s[tag=EtiBlWS.3Blickkontakt] actionbar ["",{text:"[ ",color:"gold"},{text:"Blickkontakt",color:"green",bold:true},{text:" ]",color:"gold"} ]

# Wenn der Spieler Blickontakt hatte, wird der Rüstungsständer ausgewählt und so teleportiert, dass er in Richtung des Spielers schaut.
execute if entity @s[tag=EtiBlWS.3Blickkontakt] positioned ~ ~-1 ~ as @e[distance=..0.3,type=minecraft:armor_stand,tag=EtiBlWS.3Anschauen] at @s run teleport @s ~ ~ ~ facing entity @p[tag=EtiBlWS.3Blickkontakt] eyes

# Wenn der Spieler noch keinen Blickkontakt hatte und er sich innerhalb von 25 Blöcken im Umkreis befindet, wird die Kontakt-Funktion um 0.2 Blöcke vorwärts erneut aufgerufen.
execute if entity @s[distance=..25,tag=!EtiBlWS.3Blickkontakt] positioned ^ ^ ^0.2 if block ~ ~ ~ minecraft:air run function blickwinkel-sensor:v3kontakt
