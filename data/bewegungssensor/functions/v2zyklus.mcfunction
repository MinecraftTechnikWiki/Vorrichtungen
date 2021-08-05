# Wenn Spieler den Stock ausgewählt haben, erhalten sie ein Etikett.
tag @a[distance=..25,nbt={SelectedItem:{tag:{EigBewS.2Sensor:true} } }] add EtiBewS.2Sensor

# Wenn der Spieler den Stock nicht mehr ausgewählt hat und zuvor eine Titel-Nachricht erschien wird diese geräumt.
title @a[tag=!EtiBewS.2Sensor,tag=EtiBewS.2Titel] actionbar [""]
tag @a[tag=EtiBewS.2Sensor,tag=!EtiBewS.2Titel] add EtiBewS.2Titel
tag @a[tag=!EtiBewS.2Sensor,tag=EtiBewS.2Titel] remove EtiBewS.2Titel

# Wenn der Spieler den Stock ausgewählt hat, wird von ihm aus die Erfassen-Funktion geladen.
execute as @a[tag=EtiBewS.2Sensor] run function bewegungssensor:v2erfassen

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiBewS.2Sensor] remove EtiBewS.2Sensor
