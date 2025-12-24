# Um die ID des zu untersuchenden Objekts mit den IDs aus der Liste zu vergleichen, wird die ID in eine separate Eigenschaft kopiert und im zweiten Schritt wird dann diese separate Eigenschaft mit der ID aus der Liste überschrieben. Wenn das Überschreiben erfolgreich war, bedeutet dies, dass die ID unterschiedlich ist, ist hingegen das Überschreiben nicht möglich, handelt es sich um die gleiche ID. Das Ergebnis wird in eine Variable gespeichert.
data modify storage objekt-zaehler:v4daten "EigObjZae.4IDVergleich" set from entity @s data."EigObjZae.4ID"
execute store success score VarObjZae.4Ungleich PZObjZae.4Anz run data modify storage objekt-zaehler:v4daten "EigObjZae.4IDVergleich" set from storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4ID"

# Wenn der neue Name bisher noch nicht gefunden wurde, er aber gleich ist, so wird die Anzahl ausgelesen und in einer Variable gespeichert. Anschließend wird die Variable um eins erhöht und wieder zurück im Datenspeicher geschrieben.
execute if entity @s[tag=!EtiObjZae.4Gefunden] if score VarObjZae.4Ungleich PZObjZae.4Anz matches 0 store result score VarObjZae.4Anzahl PZObjZae.4Anz run data get storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Anzahl"
execute if entity @s[tag=!EtiObjZae.4Gefunden] if score VarObjZae.4Ungleich PZObjZae.4Anz matches 0 store result storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Anzahl" int 1 run scoreboard players add VarObjZae.4Anzahl PZObjZae.4Anz 1

# Wenn der neue Name gleich dem Namen im Datenspeicher ist, wird das Etikett vergeben.
execute if score VarObjZae.4Ungleich PZObjZae.4Anz matches 0 run tag @s[tag=!EtiObjZae.4Gefunden] add EtiObjZae.4Gefunden

# Das aktuelle Feld im Datenspeicher wird nach ganz hinten verschoben, sodass das nachfolgende Feld an die Reihe kommen kann.
data modify storage objekt-zaehler:v4daten "EigObjZae.4Felder" append from storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]
data remove storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]

# Die Schleifen-Variable wird um eins reduziert und solange diese nicht bei null ist, wird die Feld-Funktion selbst nochmal aufgerufen.
scoreboard players remove VarObjZae.4Schleife PZObjZae.4Anz 1
execute if score VarObjZae.4Schleife PZObjZae.4Anz matches 1.. run function objekt-zaehler:v4feld
