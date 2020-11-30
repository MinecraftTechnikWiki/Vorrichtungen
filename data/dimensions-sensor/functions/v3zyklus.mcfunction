# Spieler die den Stock ausgewählt haben, erhalten ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigDimS.3Sensor:true} } }] add EtiDimS.3Sensor

# Je nach dem in welcher Dimension der Spieler ist, wird in der Schnelleiste die entsprechende Dimension angezeigt.
title @a[tag=EtiDimS.3Sensor,predicate=dimensions-sensor:v3ende] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Ende","color":"blue","bold":true}]
title @a[tag=EtiDimS.3Sensor,predicate=dimensions-sensor:v3oberwelt] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Oberwelt","color":"dark_green","bold":true}]
title @a[tag=EtiDimS.3Sensor,predicate=dimensions-sensor:v3nether] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Nether","color":"red","bold":true}]

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiDimS.3Sensor] remove EtiDimS.3Sensor
