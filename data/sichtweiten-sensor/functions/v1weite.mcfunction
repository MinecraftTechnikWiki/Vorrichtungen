# Es wird ein Markierer erzeugt, der speichert für die jeweilige Himmelsrichtung den Wert der Sichtweite.
summon minecraft:marker ~ ~ ~ {Tags:["EtiSichtWS.1Alle","EtiSichtWS.1Richtung"]}

# Die Weiten-Variable wird zunächst auf den Wert null gesetzt und im Anschluss wird sie in der Entfernungs-Funktion erhöht.
scoreboard players set VarSichtWS.1Weite PZSichtWS.1Wert 0
execute rotated ~ 0 positioned ^ ^ ^16 run function sichtweiten-sensor:v1entfernung

# Der aktuelle Wert der Sichtweite wird in einen der vier Markierer gespeichert, der noch kein Weiten-Etikett besitzt.
scoreboard players operation @e[type=minecraft:marker,tag=EtiSichtWS.1Richtung,tag=!EtiSichtWS.1Weite,sort=nearest,limit=1] PZSichtWS.1Wert = VarSichtWS.1Weite PZSichtWS.1Wert
tag @e[type=minecraft:marker,tag=EtiSichtWS.1Richtung,tag=!EtiSichtWS.1Weite,sort=nearest,limit=1] add EtiSichtWS.1Weite

# Die Variable wird um eins erhöht und solange sie kleiner vier ist, wird die Weiten-Funktion um 90° gedreht erneut selbst aufgerufen.
scoreboard players add VarSichtWS.1Zahl PZSichtWS.1Wert 1
execute if score VarSichtWS.1Zahl PZSichtWS.1Wert matches 1..3 rotated ~90 0 run function sichtweiten-sensor:v1weite
