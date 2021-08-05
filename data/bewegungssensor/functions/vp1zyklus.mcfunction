# Spielern im Umkreis von 25 Blöcken wird ein Etikett gegeben, wenn sie den Stock ausgewählt haben.
tag @a[distance=..25,nbt={SelectedItem:{tag:{EigBewS.p1Sensor:true} } }] add EtiBewS.p1Sensor

# Wenn der Spieler den Stock nicht mehr ausgewählt hat und zuvor eine Titel-Nachricht erschien wird diese geräumt.
title @a[tag=!EtiBewS.p1Sensor,tag=EtiBewS.p1Titel] actionbar [""]
tag @a[tag=EtiBewS.p1Sensor,tag=!EtiBewS.p1Titel] add EtiBewS.p1Titel
tag @a[tag=!EtiBewS.p1Sensor,tag=EtiBewS.p1Titel] remove EtiBewS.p1Titel

# Wenn der Spieler den Stock ausgewählt hat, wird von diesem die Erfassen-Funktion aufgerufen, dabei wird die Neigung auf gerade aus gestellt.
execute as @a[tag=EtiBewS.p1Sensor] at @s rotated ~ 0 run function bewegungssensor:vp1erfassen

# Das Etikett für das Auswählen des Stockes wird wieder entfernt.
tag @a[tag=EtiBewS.p1Sensor] remove EtiBewS.p1Sensor
