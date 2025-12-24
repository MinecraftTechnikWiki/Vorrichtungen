# Spielern im Umkreis von 25 Metern wird ein Etikett gegeben, wenn diese den Stock ausgewählt haben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigGeschwS.1Sensor:true}] run tag @s add Ausgewaehlt

# Wählt man den Stock aus, wird die Sensor-Funktion geladen.
execute as @a[tag=Ausgewaehlt] run function geschwindigkeitssensor:v1sensor

# Sobald man den Stock nicht mehr ausgewählt hat, wird die Aktionsleiste geleert.
title @a[tag=!Ausgewaehlt,tag=Auswahl] actionbar [""]

# Das Etikett wird verwendet um den Moment zu erfassen ab dem man den Stock gerade ausgewählt oder gerade abgewählt hat.
tag @a[tag=Ausgewaehlt,tag=!Auswahl] add Auswahl
tag @a[tag=!Ausgewaehlt,tag=Auswahl] remove Auswahl

# Das Etikett zur Erfassung der Geschwindigkeit wird wieder entfernt.
tag @a[tag=Ausgewaehlt] remove Ausgewaehlt
