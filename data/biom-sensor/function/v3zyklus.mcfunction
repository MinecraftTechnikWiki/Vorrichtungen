# Alle Spieler die den Stock auswählen erhalten ein temporäres Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigBiomS.3Sensor:true}] run tag @s add EtiBiomS.3Ausgewaehlt

# Wenn der Spieler in dem Biom die Leere sich befindet und den Stock ausgewählt hat, wird ihm die Schnellleisten-Nachricht angegeben.
title @a[tag=EtiBiomS.3Ausgewaehlt,predicate=biom-sensor:v3biom_leere] actionbar ["",{text:"Biom == ",color:"gray",bold:true},{text:"Die Leere",color:"blue",bold:true}]

# Wenn es sich nicht um das Biom die Leere handelt wird die Meldung negiert.
title @a[tag=EtiBiomS.3Ausgewaehlt,predicate=!biom-sensor:v3biom_leere] actionbar ["",{text:"Biom == ",color:"gray",bold:true},{text:"NICHT Die Leere",color:"red",bold:true}]

# Der Text wird geleert, wenn der Spieler den Stock abwählt.
title @a[tag=!EtiBiomS.3Ausgewaehlt,tag=EtiBiomS.3Auswahl] actionbar [""]

# Um das Auswählen und Abwählen zu erfassen, wird das Etikett vergeben oder entfernt.
tag @a[tag=EtiBiomS.3Ausgewaehlt,tag=!EtiBiomS.3Auswahl] add EtiBiomS.3Auswahl
tag @a[tag=!EtiBiomS.3Ausgewaehlt,tag=EtiBiomS.3Auswahl] remove EtiBiomS.3Auswahl

# Das temporäre Etikett wird entfernt.
tag @a[tag=EtiBiomS.3Ausgewaehlt] remove EtiBiomS.3Ausgewaehlt
