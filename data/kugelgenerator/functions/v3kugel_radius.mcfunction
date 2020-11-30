# Die Radius-Variable wird um eins verringert, bis dadurch die Funktion sich nicht mehr selbst aufruft.
scoreboard players remove VarKugelG.3Radius PZKugelG.3Hor 1

# Wenn der Rüstungsständer für die Hohlheit auf falsch eingestellt wurde, wird bei jedem Aufruf dieser Funktion ein Block für die Kugel platziert, ansonsten nur beim letzten Meter.
execute if entity @e[type=minecraft:armor_stand,tag=EtiKugelG.3Hohl,name="falsch",sort=nearest,limit=1] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace
execute if score VarKugelG.3Radius PZKugelG.3Hor matches 0 if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:coarse_dirt replace

# Die Funktion ruft sich selbst auf, wenn der Radius noch nicht bei null angeleangt ist. Dabei wird in Blickrichtung um einen Meter nach vorne der Aufruf getätigt.
execute if score VarKugelG.3Radius PZKugelG.3Hor matches 1.. positioned ^ ^ ^1 run function kugelgenerator:v3kugel_radius
