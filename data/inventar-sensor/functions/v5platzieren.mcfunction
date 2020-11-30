# Wenn sich an der aktuellen Position einer der fünf Behälter befindet und noch keine Partikelwolke dort existiert, wird eine neue erzeugt.
execute if block ~ ~ ~ #inventar-sensor:v5behaelter unless entity @e[distance=..0.6,type=minecraft:area_effect_cloud] align xz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {NoGravity:true,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiInvS.5Alle","EtiInvS.5Inventar"]}

# Falls die Funktion noch nicht weiter als fünf Blöcke vom Spieler entfernt ist und sich noch keine Partikelwolke in der Nähe aufhält, wird die Funktion sich selbst etwas versetzt in Blickrichtung erneut aufrufen.
execute if entity @s[distance=..5] unless entity @e[distance=..0.9,type=minecraft:area_effect_cloud] positioned ^ ^ ^0.2 run function inventar-sensor:v5platzieren
