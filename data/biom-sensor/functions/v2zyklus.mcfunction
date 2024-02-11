# Bei Auswahl des Stockes erhält der Spieler ein temporäres Etikett.
tag @a[nbt={SelectedItem:{tag:{EigBiomS.2Sensor:true} } }] add EtiBiomS.2Ausgewaehlt

# Wenn der Spieler im Biom die Leere ist, erhält er automatisch den Fortschritt dafür und das wird getestet. Nur wenn er diesen hat und den Stock ausgewählt hat, erhält er die Schnellleisten-Nachricht.
title @a[tag=EtiBiomS.2Ausgewaehlt,advancements={biom-sensor:v2biom_leere=true}] actionbar ["",{"text":"Biom == ","color":"gray","bold":true},{"text":"Die Leere","color":"blue","bold":true}]

# Falls es sich nicht um die Leere handelt wird die Meldung negiert.
title @a[tag=EtiBiomS.2Ausgewaehlt,advancements={biom-sensor:v2biom_leere=false}] actionbar ["",{"text":"Biom == ","color":"gray","bold":true},{"text":"NICHT Die Leere","color":"red","bold":true}]

# Wenn er den Stock abwählt, wird der Text geleert.
title @a[tag=!EtiBiomS.2Ausgewaehlt,tag=EtiBiomS.2Auswahl] actionbar [""]

# Um die Auswahl und Abwahl zu erfassen wird ihm dazu ein Etikett gegeben oder entfernt.
tag @a[tag=EtiBiomS.2Ausgewaehlt,tag=!EtiBiomS.2Auswahl] add EtiBiomS.2Auswahl
tag @a[tag=!EtiBiomS.2Ausgewaehlt,tag=EtiBiomS.2Auswahl] remove EtiBiomS.2Auswahl

# Wenn Spieler das Biom die Leere betreten haben, wird der Fortschritt wieder entfernt, damit er nur dann vorhanden ist, wenn man aktuell dort ist.
advancement revoke @a[tag=EtiBiomS.2Ausgewaehlt,advancements={biom-sensor:v2biom_leere=true}] only biom-sensor:v1biom_leere

# Das temporäre Etikett wird entfernt.
tag @a[tag=EtiBiomS.2Ausgewaehlt] remove EtiBiomS.2Ausgewaehlt
