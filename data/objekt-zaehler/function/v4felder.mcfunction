# Die Anzahl der gespeicherten Namen wird ausgelesen und in eine Schleifen-Variable gespeichert. Nur wenn dessen Wert mindestens eins ist, wird die Feld-Funktion aufgerufen.
execute store result score VarObjZae.4Schleife PZObjZae.4Anz run data get storage objekt-zaehler:v4daten "EigObjZae.4Felder"
execute if score VarObjZae.4Schleife PZObjZae.4Anz matches 1.. run function objekt-zaehler:v4feld

# Wenn der Name nicht gefunden wurde, wird im Datenspeicher ein neuer leerer Eintrag gespeichert.
execute if entity @s[tag=!EtiObjZae.4Gefunden] run data modify storage objekt-zaehler:v4daten "EigObjZae.4Felder" prepend value {EigObjZae.4ID:"",EigObjZae.4Name:"",EigObjZae.4Anzahl:1}

# Anschließend wird der Name aus dem Textdarsteller und die ID aus dem Markierer in den Datenspeicher kopiert.
execute if entity @s[tag=!EtiObjZae.4Gefunden] run data modify storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Name" set from entity @n[type=minecraft:text_display,tag=EtiObjZae.4Text] text
execute if entity @s[tag=!EtiObjZae.4Gefunden] run data modify storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4ID" set from entity @s data."EigObjZae.4ID"

# Falls der Name gefunden wurde, wird das Etikett wieder entfernt.
tag @s[tag=EtiObjZae.4Gefunden] remove EtiObjZae.4Gefunden
