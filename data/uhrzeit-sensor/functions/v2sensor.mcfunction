# An der Position des Markierers befindet sich der Widerhol-Befehlsblock. Von diesem wird die Uhrzeit geholt und in den Datenspeicher geschrieben.
execute at @e[type=minecraft:marker,tag=EtiUhrzeitS.2Sensor,sort=nearest,limit=1] run data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" set string block ~ ~ ~ LastOutput 107 116

# Die Zeit-Eigenschaft wird geleert, bevor sie später wieder in der Zeit-Funktion aufgefüllt wird.
data merge storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Zeit:[]}
function uhrzeit-sensor:v2zeit

# Diese Funktion wird in einer Sekunde erneut aufgerufen.
schedule function uhrzeit-sensor:v2sensor 1s replace
