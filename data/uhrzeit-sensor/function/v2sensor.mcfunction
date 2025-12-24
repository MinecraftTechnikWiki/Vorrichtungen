# An der Position des Markierers befindet sich der Wiederhol-Befehlsblock. Von diesem wird die Uhrzeit geholt und in den Datenspeicher geschrieben.
execute at @n[type=minecraft:marker,tag=EtiUhrzeitS.2Sensor] run data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" set string block ~ ~ ~ LastOutput.text 1 9

# Die Uhrzeit wird in separate Stunden-, Minuten- und Sekunden-Eigenschaften gespeichert um sie später in einem title-Befehl verwenden zu können.
data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Zeit"[0] set string storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" 0 2
data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Zeit"[1] set string storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" 3 5
data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Zeit"[2] set string storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" 6 8

# Diese Funktion wird in einer Sekunde erneut aufgerufen.
schedule function uhrzeit-sensor:v2sensor 1s replace
