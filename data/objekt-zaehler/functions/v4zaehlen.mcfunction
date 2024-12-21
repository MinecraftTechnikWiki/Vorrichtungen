# Dem nächst gelegenen Objekt wird ein Etikett gegeben.
tag @e[distance=..50,tag=EtiObjZae.4Zaehlen,sort=nearest,limit=1] add EtiObjZae.4Gezaehlt

# An der Position des Markierers, an der das Schild steht, wird im Schild der Name des gerade etikettierten Objekts gespeichert.
execute at @e[type=minecraft:marker,tag=EtiObjZae.4Schild,sort=nearest,limit=1] run data merge block ~ ~ ~ {front_text:{messages:['[{"selector":"@e[tag=EtiObjZae.4Gezaehlt,sort=nearest,limit=1]","color":"gold","bold":true}]','""','""','""']} }

# Danach werden beide Etiketten vom gerade markierten Objekt entfernt.
tag @e[tag=EtiObjZae.4Gezaehlt,sort=nearest,limit=1] remove EtiObjZae.4Zaehlen
tag @e[tag=EtiObjZae.4Gezaehlt,sort=nearest,limit=1] remove EtiObjZae.4Gezaehlt

# Der Markierer speichert einen Teil der ID des Objektes in seinen Daten und ruft dann von sich die Felder-Funktion auf.
execute as @e[type=minecraft:marker,tag=EtiObjZae.4Schild,sort=nearest,limit=1] at @s run data modify entity @s data."EigObjZae.4ID" set string block ~ ~ ~ front_text.messages[0] -32 -2
execute as @e[type=minecraft:marker,tag=EtiObjZae.4Schild,sort=nearest,limit=1] at @s run function objekt-zaehler:v4felder

# Gibt es mindestens ein Objekt, das noch gezählt werden muss, so wird diese Funktion sich selbst nochmal aufrufen.
execute if entity @e[distance=..50,tag=EtiObjZae.4Zaehlen,sort=nearest,limit=1] run function objekt-zaehler:v4zaehlen
