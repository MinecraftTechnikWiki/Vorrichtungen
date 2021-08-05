# Die Anzahl der gespeicherten Namen wird ausgelesen und in eine Schleifen-Variable gespeichert. Nur wenn dessen Wert mindestens eins ist, wird die Feld-Funktion aufgerufen.
execute store result score VarObjZae.4Schleife PZObjZae.4Anz run data get storage objekt-zaehler:v4daten "EigObjZae.4Felder"
execute if score VarObjZae.4Schleife PZObjZae.4Anz matches 1.. run function objekt-zaehler:v4feld

# Wenn der Name auf dem Schild nicht gefunden wurde, wird im NBT-Speicher dieser Name neu hinzugefügt.
execute if entity @s[tag=!EtiObjZae.4Gefunden] run data modify storage objekt-zaehler:v4daten "EigObjZae.4Felder" prepend value {EigObjZae.4Typ:"",EigObjZae.4Anzahl:1}

# Der Name wird aus dem Schild in den NBT-Speicher kopiert.
execute if entity @s[tag=!EtiObjZae.4Gefunden] run data modify storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Typ" set from block ~ ~ ~ Text1

# Falls der Name gefunden wurde, wird das Etikett wieder entfernt.
tag @s[tag=EtiObjZae.4Gefunden] remove EtiObjZae.4Gefunden
