
tag @a[nbt={SelectedItem:{tag:{EigBiomS.1Sensor:true} } }] add EtiBiomS.1Ausgewaehlt

# Wenn der Spieler im Biom die Leere ist, erhält er den Fortschritt dafür und das wird getestet. Nur wenn er diesen hat und den Stock ausgewählt hat, erhält er die Schnelleisten-Nachricht.
title @a[tag=EtiBiomS.1Ausgewaehlt,advancements={biom-sensor:v1biom_leere=true}] actionbar ["",{"text":"Biom == ","color":"gray","bold":true},{"text":"Die Leere","color":"blue","bold":true}]

title @a[tag=!EtiBiomS.1Ausgewaehlt,tag=EtiBiomS.1Auswahl] actionbar [""]

tag @a[tag=EtiBiomS.1Ausgewaehlt,tag=!EtiBiomS.1Auswahl] add EtiBiomS.1Auswahl
tag @a[tag=!EtiBiomS.1Ausgewaehlt,tag=EtiBiomS.1Auswahl] remove EtiBiomS.1Auswahl

# Wenn Spieler das Biom die Leere betreten haben, wird der Fortschritt wieder entfernt, damit er nur dann vorhanden ist, wenn man aktuell dort ist.
advancement revoke @a[tag=EtiBiomS.1Ausgewaehlt,advancements={biom-sensor:v1biom_leere=true}] only biom-sensor:v1biom_leere

tag @a[tag=EtiBiomS.1Ausgewaehlt] remove EtiBiomS.1Ausgewaehlt
