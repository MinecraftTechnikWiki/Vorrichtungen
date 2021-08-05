# Die Länge des Namens wird ermittelt und in eine Längen-Variable gespeichert. Diese wird mit der Länge des neuen Namens verglichen und das Ergebnis der Gleichheit wird in eine separaten variable gespeichert.
execute store result score VarObjZae.4Laenge PZObjZae.4Anz run data get storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Typ"
execute store success score VarObjZae.4Gleich PZObjZae.4Anz if score @s PZObjZae.4Anz = VarObjZae.4Laenge PZObjZae.4Anz

# Wenn der neue Name bisher noch nicht gefunden wurde, er aber gleich ist, so wird die Anzahl ausgelesen und in einer Variable gespeichert. Anschließend wird die Variable um eins erhöht und wieder zurück im NBT-Speicher geschrieben.
execute if entity @s[tag=!EtiObjZae.4Gefunden] if score VarObjZae.4Gleich PZObjZae.4Anz matches 1 store result score VarObjZae.4Anzahl PZObjZae.4Anz run data get storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Anzahl"
execute if entity @s[tag=!EtiObjZae.4Gefunden] if score VarObjZae.4Gleich PZObjZae.4Anz matches 1 store result storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Anzahl" int 1 run scoreboard players add VarObjZae.4Anzahl PZObjZae.4Anz 1

# Wenn der neue Name gleich dem Namen im NBT-Speicher ist, wird das Etikett vergeben.
execute if score VarObjZae.4Gleich PZObjZae.4Anz matches 1 run tag @s[tag=!EtiObjZae.4Gefunden] add EtiObjZae.4Gefunden

# Das aktuelle Feld im NBT-Speicher wird nach ganz hinten verschoben, sodass das nachfolgende Feld an die Reihe kommen kann.
data modify storage objekt-zaehler:v4daten "EigObjZae.4Felder" append from storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]
data remove storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]

# Die Schleifen-Variable wird um eins reduziert und solange diese nicht bei null ist, wird die Feld-Funktion selbst nochmal aufgerufen.
scoreboard players remove VarObjZae.4Schleife PZObjZae.4Anz 1
execute if score VarObjZae.4Schleife PZObjZae.4Anz matches 1.. run function objekt-zaehler:v4feld
