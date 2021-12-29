# Die Weiten-Funktion wird exakt ausgerichtet und geladen und die Variable wird auf null gesetzt.
scoreboard players set VarSichtWS.1Zahl PZSichtWS.1Wert 0
execute rotated 0 0 run function sichtweiten-sensor:v1weite

# Die Weiten-Variable besitzt den vierten Wert für die Sichtweite. Dadurch wird nun durch eine Rechen-Operation dafür gesorgt, dass die kleinste Entfernung in diese Variable gespeichert wird und anschließend wird das Ergebnis in den Punktestand des Spielers gespeichert.
execute store result score @s PZSichtWS.1Wert run scoreboard players operation VarSichtWS.1Weite PZSichtWS.1Wert < @e[type=minecraft:marker,tag=EtiSichtWS.1Richtung,sort=nearest,limit=4] PZSichtWS.1Wert

# Danach werden die Markierer nicht mehr benötigt und entfernt.
kill @e[type=minecraft:marker,tag=EtiSichtWS.1Richtung,sort=nearest,limit=4]
