# Wenn der Spieler im Biom die Leere ist, erhält er den Fortschritt dafür und das wird getestet. Nur wenn er diesen hat und den Stock ausgewählt hat, erhält er die Schnelleisten-Nachricht.
title @a[advancements={biom-sensor:v1biom_leere=true},nbt={SelectedItem:{tag:{EigBiomS.1Sensor:true} } }] actionbar ["",{"text":"Biom == ","color":"gray","bold":true},{"text":"Die Leere","color":"blue","bold":true}]

# Wenn Spieler das Biom die Leere betreten haben, wird der Fortschritt wieder entfernt, damit er nur dann vorhanden ist, wenn man aktuell dort ist.
advancement revoke @a[advancements={biom-sensor:v1biom_leere=true}] only biom-sensor:v1biom_leere
