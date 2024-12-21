# Wenn Spieler den Stock ausgewählt haben, erhalten sie ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigBewS.2Sensor:true}] run tag @s add EtiBewS.2Ausgewaehlt

# Wenn der Spieler den Stock nicht mehr ausgewählt hat und zuvor eine Titel-Nachricht erschien wird diese geräumt.
title @a[tag=!EtiBewS.2Ausgewaehlt,tag=EtiBewS.2Auswahl] actionbar [""]
tag @a[tag=EtiBewS.2Ausgewaehlt,tag=!EtiBewS.2Auswahl] add EtiBewS.2Auswahl
tag @a[tag=!EtiBewS.2Ausgewaehlt,tag=EtiBewS.2Auswahl] remove EtiBewS.2Auswahl

# Wenn der Spieler den Stock ausgewählt hat, wird von ihm aus die Sensor-Funktion geladen.
execute as @a[tag=EtiBewS.2Ausgewaehlt] run function bewegungssensor:v2sensor

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiBewS.2Ausgewaehlt] remove EtiBewS.2Ausgewaehlt
