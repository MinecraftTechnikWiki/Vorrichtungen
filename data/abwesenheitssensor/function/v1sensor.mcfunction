# Die Sensor-Funktion wird in einer Sekunde erneut aufgerufen.
schedule function abwesenheitssensor:v1sensor 1s replace

# Wenn Spieler abwesend waren und einen Rechts- oder Linksklick durchgeführt haben, wird von ihnen ein Punktestand geändert, sodass sie nicht mehr als abwesend gelten.
execute as @e[type=minecraft:interaction,tag=EtiAbwS.1Mausklick] store success score @s PZAbwS.1Abwesend on target run scoreboard players set @s PZAbwS.1Inventarplatz -99
execute as @e[type=minecraft:interaction,tag=EtiAbwS.1Mausklick] store success score @s PZAbwS.1Abwesend on attacker run scoreboard players set @s PZAbwS.1Inventarplatz -99

# Falls Spieler das Interaktionsobjekt angeklickt haben, besitzt es den Wert eins und wird danach entfernt.
kill @e[type=minecraft:interaction,tag=EtiAbwS.1Mausklick,scores={PZAbwS.1Abwesend=1}]

# Alle Spieler rufen die Abwesend-Funktion auf.
execute as @a run function abwesenheitssensor:v1abwesend
