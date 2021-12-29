# Es wird zugleich geprüft ob Luft vorhanden und nicht vorhanden ist. Nur wenn der Chunk nicht geladen ist, sind beide Ergebnisse gleich.
execute store success score VarSichtWS.1Geladen1 PZSichtWS.1Wert if block ~ ~ ~ minecraft:air
execute store success score VarSichtWS.1Geladen2 PZSichtWS.1Wert unless block ~ ~ ~ minecraft:air

# Nur wenn beide Variablen den gleichen Wert haben, wird die Weiten-Variable um eins erhöht und die Entfernungs-Funktion wird erneut um 16 Blöcke in Blickrichtung aufgerufen.
execute unless score VarSichtWS.1Geladen1 PZSichtWS.1Wert = VarSichtWS.1Geladen2 PZSichtWS.1Wert run scoreboard players add VarSichtWS.1Weite PZSichtWS.1Wert 1
execute unless score VarSichtWS.1Geladen1 PZSichtWS.1Wert = VarSichtWS.1Geladen2 PZSichtWS.1Wert positioned ^ ^ ^16 run function sichtweiten-sensor:v1entfernung
