# Wenn der Spieler auf dem Boden steht und den Stock ausgewählt hat, erhaält er ein Etikett.
tag @p[tag=EtiBlockS.4Spieler,nbt={OnGround:true,SelectedItem:{id:"minecraft:stick",components:{"minecraft:custom_data":{EigBlockS.4Alle:true} } } }] add EtiBlockS.4BlockErfassen

# Wenn der Spieler den Stock ausgewählt hat, wird die Güterlore geleert um anschließend sie mit dem Block-Gegenstand zu füllen auf dem der Spieler aktuell steht.
execute if entity @p[tag=EtiBlockS.4BlockErfassen] run data remove entity @e[type=minecraft:chest_minecart,tag=EtiBlockS.4Sensor,sort=nearest,limit=1] Items
execute at @p[tag=EtiBlockS.4BlockErfassen] run loot replace entity @e[type=minecraft:chest_minecart,tag=EtiBlockS.4Sensor] container.0 mine ~ ~-0.5 ~

# Wenn der Spieler den Stock abgewählt hat, wird seine Titel-Nachricht entfernt, ansonsten bekommt er die ID des Blockes angezeigt, auf dem er aktuell steht.
title @p[tag=EtiBlockS.4Spieler,tag=!EtiBlockS.4BlockErfassen] actionbar [""]
title @p[tag=EtiBlockS.4BlockErfassen] actionbar ["",{"entity":"@e[type=minecraft:chest_minecart,tag=EtiBlockS.4Sensor]","nbt":"Items[0].id","color":"dark_purple","bold":true}]

# Das Etikett wird wieder entfernt.
tag @p[tag=EtiBlockS.4BlockErfassen] remove EtiBlockS.4BlockErfassen
