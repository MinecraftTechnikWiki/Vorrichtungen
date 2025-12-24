# Einem zu zählenden Objekt, wird ein Etikett gegeben.
tag @n[distance=..50,tag=EtiObjZae.4Zaehlen] add EtiObjZae.4Gezaehlt

# Der Name des Objekts wird in die Text-Eigenschaft des Textdarstellers eingefügt.
data modify entity @n[type=minecraft:text_display,tag=EtiObjZae.4Text] text set value [{selector:"@n[tag=EtiObjZae.4Gezaehlt]",color:"gold",bold:true}]

# Danach werden beide Etiketten vom gerade markierten Objekt entfernt.
tag @n[tag=EtiObjZae.4Gezaehlt] remove EtiObjZae.4Zaehlen
tag @n[tag=EtiObjZae.4Gezaehlt] remove EtiObjZae.4Gezaehlt

# Der Markierer speichert einen Teil der ID des Objektes in seinen Daten und ruft dann von sich die Felder-Funktion auf.
execute as @n[type=minecraft:marker,tag=EtiObjZae.4Daten] at @s run data modify entity @s data."EigObjZae.4ID" set string entity @n[type=minecraft:text_display,tag=EtiObjZae.4Text] text 0 60
execute as @n[type=minecraft:marker,tag=EtiObjZae.4Daten] at @s run function objekt-zaehler:v4felder

# Gibt es mindestens ein Objekt, das noch gezählt werden muss, so wird diese Funktion sich selbst nochmal aufrufen.
execute if entity @n[distance=..50,tag=EtiObjZae.4Zaehlen] run function objekt-zaehler:v4zaehlen
