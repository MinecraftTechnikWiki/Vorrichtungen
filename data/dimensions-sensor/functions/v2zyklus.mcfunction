# Spieler die den Stock ausgewählt haben, erhalten ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigDimS.2Sensor:true} } }] add EtiDimS.2Sensor

# Je nach dem in welcher Dimension der Spieler ist, wird in der Schnelleiste die entsprechende Dimension angezeigt.
title @a[tag=EtiDimS.2Sensor,advancements={dimensions-sensor:v2ende=true}] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Ende","color":"blue","bold":true}]
title @a[tag=EtiDimS.2Sensor,advancements={dimensions-sensor:v2oberwelt=true}] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Oberwelt","color":"dark_green","bold":true}]
title @a[tag=EtiDimS.2Sensor,advancements={dimensions-sensor:v2nether=true}] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Nether","color":"red","bold":true}]

# Falls der Spieler die Dimension wechselt, wird eine Nachricht im Chat angezeigt.
tellraw @a[tag=EtiDimS.2Sensor,advancements={dimensions-sensor:v2dimension_gewechselt=true}] ["Dimensions-Sensor.2: ",{"text":"Dimension geändert == ","bold":true},{"text":"wahr","color":"green","bold":true}]

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiDimS.2Sensor] remove EtiDimS.2Sensor

# Alle Fortschritte die man automatisch erhalten hat, wenn man sich in der jeweiligen Dimension aufhält, werden entfernt.
advancement revoke @a[advancements={dimensions-sensor:v2ende=true}] only dimensions-sensor:v2ende
advancement revoke @a[advancements={dimensions-sensor:v2oberwelt=true}] only dimensions-sensor:v2oberwelt
advancement revoke @a[advancements={dimensions-sensor:v2nether=true}] only dimensions-sensor:v2nether
advancement revoke @a[advancements={dimensions-sensor:v2dimension_gewechselt=true}] only dimensions-sensor:v2dimension_gewechselt
