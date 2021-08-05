
tag @a[nbt={SelectedItem:{tag:{EigBiomS.2Sensor:true} } }] add EtiBiomS.2Ausgewaehlt

# Wenn der Spieler in dem Biom die Leere sich befindet und den Stock ausgewählt hat, wird ihm die Schnelleisten-Nachricht angegeben.
title @a[tag=EtiBiomS.2Ausgewaehlt,predicate=biom-sensor:v2biom_leere] actionbar ["",{"text":"Biom == ","color":"gray","bold":true},{"text":"Die Leere","color":"blue","bold":true}]

title @a[tag=!EtiBiomS.2Ausgewaehlt,tag=EtiBiomS.2Auswahl] actionbar [""]

tag @a[tag=EtiBiomS.2Ausgewaehlt,tag=!EtiBiomS.2Auswahl] add EtiBiomS.2Auswahl
tag @a[tag=!EtiBiomS.2Ausgewaehlt,tag=EtiBiomS.2Auswahl] remove EtiBiomS.2Auswahl

tag @a[tag=EtiBiomS.2Ausgewaehlt] remove EtiBiomS.2Ausgewaehlt
