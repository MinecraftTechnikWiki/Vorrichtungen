# Wenn der Spieler den Kompass ausgewählt hat, erhält er zur Erkennung ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigKoordS.1Sensor:true} } }] add EtiKoordS.1Ausgewaehlt

# Spieler die das Etikett besitzen laden von sich aus die Sensor-Funktion.
execute as @a[tag=EtiKoordS.1Ausgewaehlt] run function koordinaten-sensor:v1sensor

# Wenn der Kompass nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiKoordS.1Ausgewaehlt,tag=EtiKoordS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Kompass ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiKoordS.1Ausgewaehlt,tag=!EtiKoordS.1Auswahl] add EtiKoordS.1Auswahl
tag @a[tag=!EtiKoordS.1Ausgewaehlt,tag=EtiKoordS.1Auswahl] remove EtiKoordS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiKoordS.1Ausgewaehlt] remove EtiKoordS.1Ausgewaehlt
