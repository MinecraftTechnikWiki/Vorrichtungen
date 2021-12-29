# Dem nächst gelgenen Objekt wird ein Etikett gegeben.
tag @e[distance=..50,tag=EtiObjZae.4Zaehlen,sort=nearest,limit=1] add EtiObjZae.4Gezaehlt

# An der Position der Partikelwolke, dort wo das Schild steht, wird im Schild der Name des gerade etikettierten Objekts gespeichert.
execute at @e[type=minecraft:marker,tag=EtiObjZae.4Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {Text1:'[{"selector":"@e[tag=EtiObjZae.4Gezaehlt,sort=nearest,limit=1]","color":"gold","bold":true}]'}

# Danach werden beide Etiketten vom gerade markierten Objekt entfernt.
tag @e[tag=EtiObjZae.4Gezaehlt] remove EtiObjZae.4Zaehlen
tag @e[tag=EtiObjZae.4Gezaehlt] remove EtiObjZae.4Gezaehlt

# Die Partikelwolke speichert die Länge des Namens des Objektes und ruft dann von sich die Felder-Funktion auf.
execute as @e[type=minecraft:marker,tag=EtiObjZae.4Schild,sort=nearest,limit=1] at @s store result score @s PZObjZae.4Anz run data get block ~ ~ ~ Text1
execute as @e[type=minecraft:marker,tag=EtiObjZae.4Schild,sort=nearest,limit=1] at @s run function objekt-zaehler:v4felder

# Gibt es mindestens ein Objekt, das noch gezählt werden muss, so wird diese Funktion sich selbst nochmal aufrufen.
execute if entity @e[distance=..50,tag=EtiObjZae.4Zaehlen,sort=nearest,limit=1] run function objekt-zaehler:v4zaehlen
