# Spieler die den Stock ausgewählt haben, erhalten ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigDimS.2Sensor:true}] run tag @s add EtiDimS.2Ausgewaehlt

# Je nach dem in welcher Dimension der Spieler ist, wird über der Schnellleiste die entsprechende Dimension angezeigt.
title @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2ende=true}] actionbar ["",{text:"Dimension == ",color:"gray",bold:true},{text:"Ende",color:"blue",bold:true}]
title @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2oberwelt=true}] actionbar ["",{text:"Dimension == ",color:"gray",bold:true},{text:"Oberwelt",color:"dark_green",bold:true}]
title @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2nether=true}] actionbar ["",{text:"Dimension == ",color:"gray",bold:true},{text:"Nether",color:"red",bold:true}]

# Sobald der Spieler den Stock ausgewählt hat, wird einmal die Nachricht ausgegeben, dass es noch keinen Dimensions-Wechsel gab.
tellraw @a[tag=EtiDimS.2Ausgewaehlt,tag=!EtiDimS.2Auswahl,advancements={dimensions-sensor:v2dimension_gewechselt=false}] ["Dimensions-Sensor.2:\n",{text:"Dimension gewechselt == ",bold:true},{text:"falsch",color:"red",bold:true}]

# Falls der Spieler den Stock nicht mehr ausgewählt hat, wird einmal eine leere Nachricht ausgegeben, um die Schnellleisten-Nachricht zu leeren.
title @a[tag=!EtiDimS.2Ausgewaehlt,tag=EtiDimS.2Auswahl] actionbar [""]

# Der Spieler bekommt ein Etikett, wenn er den Stock gerade ausgewählt hat und dieses wird erst dann wieder entfernt, wenn er den Stock irgendwann nicht mehr ausgewählt hat.
tag @a[tag=EtiDimS.2Ausgewaehlt,tag=!EtiDimS.2Auswahl] add EtiDimS.2Auswahl
tag @a[tag=!EtiDimS.2Ausgewaehlt,tag=EtiDimS.2Auswahl] remove EtiDimS.2Auswahl

# Falls der Spieler die Dimension wechselt, wird eine Nachricht im Chat angezeigt.
tellraw @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2dimension_gewechselt=true}] ["Dimensions-Sensor.2:\n",{text:"Dimension gewechselt == ",bold:true},{text:"wahr",color:"green",bold:true}]

# Alle Fortschritte die man automatisch erhalten hat, wenn man sich in der jeweiligen Dimension aufhält, werden entfernt.
advancement revoke @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2ende=true}] only dimensions-sensor:v2ende
advancement revoke @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2oberwelt=true}] only dimensions-sensor:v2oberwelt
advancement revoke @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2nether=true}] only dimensions-sensor:v2nether
advancement revoke @a[tag=EtiDimS.2Ausgewaehlt,advancements={dimensions-sensor:v2dimension_gewechselt=true}] only dimensions-sensor:v2dimension_gewechselt

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiDimS.2Ausgewaehlt] remove EtiDimS.2Ausgewaehlt
