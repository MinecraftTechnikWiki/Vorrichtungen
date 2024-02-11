# Da die Uhrzeit Klammern und Doppelpunkte besitzt, müssen diese zuerst entfernt werden.
data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" set string storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" 1

# Die Ziffern-Funktion wird aufgerufen berechnet die linke Ziffer, diese wird dazu mal zehn genommen und in die Zeit-Variable gespeichert.
function uhrzeit-sensor:v2ziffer
execute store result score VarUhrzeitS.2Zeit PZUhrzeitS.2Wert run scoreboard players operation VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert *= KonstUhrzeitS.2ZEHN PZUhrzeitS.2Wert

# Die rechte Ziffer wird durch die Ziffern-Funktion berechnet. Die beiden Ziffern werden durch die Addition zusammen gelegt und in einer Liste gespeichert.
function uhrzeit-sensor:v2ziffer
data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Zeit" append value 0
execute store result storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Zeit"[-1] int 1 run scoreboard players operation VarUhrzeitS.2Zeit PZUhrzeitS.2Wert += VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert

# Solange nicht alle drei Zahlen der Uhrzeit berechnet sind, wird diese Funktion sich selbst erneut aufrufen.
execute unless data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Uhrzeit:""} run function uhrzeit-sensor:v2zeit