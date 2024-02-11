# Das erste Zeichen wird in einer separaten Eigenschaft gespeichert und anschließend wird das erste Zeichen aus Uhrzeit-Eigenschaft entfernt.
data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Ziffer" set string storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" 0 1
data modify storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" set string storage uhrzeit-sensor:v2daten "EigUhrzeitS.2Uhrzeit" 1

# Es wird geprüft um welchen Wert es sich bei dem Zeichen handelt und dann der Wert in eine Variable gespeichert.
execute store success score VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"1"}
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"2"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 2
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"3"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 3
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"4"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 4
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"5"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 5
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"6"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 6
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"7"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 7
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"8"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 8
execute if data storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"9"} run scoreboard players set VarUhrzeitS.2Ziffer PZUhrzeitS.2Wert 9
