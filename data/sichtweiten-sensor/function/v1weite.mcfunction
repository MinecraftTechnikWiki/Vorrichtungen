# Die Weiten-Variable wird hochgezählt und nur wenn der nächste Chunk geladen ist, wird die Funktion versetzt erneut aufgerufen.
scoreboard players add VarSichtWS.1Weite PZSichtWS.1Wert 1
execute positioned ^ ^ ^16 if loaded ~ ~ ~ run function sichtweiten-sensor:v1weite
