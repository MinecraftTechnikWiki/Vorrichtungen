# Spielern im Umkreis von 25 Blöcken wird ein Etikett gegeben, wenn sie den Stock ausgewählt haben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigBewS.p1Sensor:true}] run tag @s add EtiBewS.p1Ausgewaehlt

# Wenn der Spieler den Stock nicht mehr ausgewählt hat und zuvor eine Titel-Nachricht erschien wird diese geräumt.
title @a[tag=!EtiBewS.p1Ausgewaehlt,tag=EtiBewS.p1Auswahl] actionbar [""]
tag @a[tag=EtiBewS.p1Ausgewaehlt,tag=!EtiBewS.p1Auswahl] add EtiBewS.p1Auswahl
tag @a[tag=!EtiBewS.p1Ausgewaehlt,tag=EtiBewS.p1Auswahl] remove EtiBewS.p1Auswahl

# Wenn der Spieler den Stock ausgewählt hat, wird von diesem die Sensor-Funktion aufgerufen, dabei wird die Neigung auf gerade aus gestellt.
execute as @a[tag=EtiBewS.p1Ausgewaehlt] at @s rotated ~ 0 run function bewegungssensor:vp1sensor

# Das Etikett für das Auswählen des Stockes wird wieder entfernt.
tag @a[tag=EtiBewS.p1Ausgewaehlt] remove EtiBewS.p1Ausgewaehlt
