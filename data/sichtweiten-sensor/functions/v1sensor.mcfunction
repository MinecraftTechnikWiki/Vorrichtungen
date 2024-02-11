# Die Weiten-Variable wird zunächst auf den Wert null gesetzt und im Anschluss wird sie in der Weiten-Funktion erhöht.
scoreboard players set VarSichtWS.1Weite PZSichtWS.1Wert 0
execute rotated ~ 0 positioned ^ ^ ^16 run function sichtweiten-sensor:v1weite

# Der niedrigste Weiten-Wert wird gespeichert, da es vorkommen kann, dass durch geladene Chunks oder andere Spieler die Weite abweichen kann.
scoreboard players operation @s[scores={PZSichtWS.1Wert=0}] PZSichtWS.1Wert = VarSichtWS.1Weite PZSichtWS.1Wert
scoreboard players operation @s PZSichtWS.1Wert < VarSichtWS.1Weite PZSichtWS.1Wert

# Die Variable wird um eins erhöht und solange sie kleiner vier ist, wird die Sensor-Funktion um 90° gedreht erneut selbst aufgerufen.
scoreboard players add VarSichtWS.1Richtung PZSichtWS.1Wert 1
execute if score VarSichtWS.1Richtung PZSichtWS.1Wert matches 1..3 rotated ~90 0 run function sichtweiten-sensor:v1sensor
scoreboard players set VarSichtWS.1Richtung PZSichtWS.1Wert 0

