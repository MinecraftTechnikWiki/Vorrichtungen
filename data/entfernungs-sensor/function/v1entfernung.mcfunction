# Die Entfernungs-Variable wird um eins erhöht und sofern der Spieler nicht erreicht wurde, wird in Blickrichtung einen Meter vorwärts die Entfernungs-Funktion erneut aufgerufen.
scoreboard players add VarEntfS.1Entfernung PZEntfS.1Wert 1
execute unless entity @p[distance=..0.6,tag=EtiEntfS.1Spieler] positioned ^ ^ ^1 run function entfernungs-sensor:v1entfernung
