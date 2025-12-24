# Die Anzahl der Objekte wird aus dem Datenspeicher in eine Variable gespeichert.
execute store result score VarObjZae.4Anzahl PZObjZae.4Anz run data get storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]."EigObjZae.4Anzahl"

# Dem Spieler wird in einer Chat-Nachricht der Objekt-Name und die Anzahl angezeigt.
tellraw @s ["",{text:"Objekt == ",bold:true},{storage:"objekt-zaehler:v4daten",nbt:'"EigObjZae.4Felder"[0]."EigObjZae.4Name"',interpret:true},{text:", Anzahl == ",bold:true},{score:{name:"VarObjZae.4Anzahl",objective:"PZObjZae.4Anz"},color:"dark_purple",bold:true}]

# Das aktuelle Feld im Datenspeicher wird entfernt.
data remove storage objekt-zaehler:v4daten "EigObjZae.4Felder"[0]

# Solange der Datenspeicher noch nicht leer ist, wird die Anzeigen-Funktion erneut aufgerufen.
execute if data storage objekt-zaehler:v4daten {EigObjZae.4Felder:[{}]} run function objekt-zaehler:v4anzeigen
