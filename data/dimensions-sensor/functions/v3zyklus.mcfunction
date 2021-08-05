# Spieler die den Stock ausgewählt haben, erhalten ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigDimS.3Sensor:true} } }] add EtiDimS.3Ausgewaehlt

# Je nach dem in welcher Dimension der Spieler ist, wird in der Schnellleiste die entsprechende Dimension angezeigt.
title @a[tag=EtiDimS.3Ausgewaehlt,predicate=dimensions-sensor:v3ende] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Ende","color":"blue","bold":true}]
title @a[tag=EtiDimS.3Ausgewaehlt,predicate=dimensions-sensor:v3oberwelt] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Oberwelt","color":"dark_green","bold":true}]
title @a[tag=EtiDimS.3Ausgewaehlt,predicate=dimensions-sensor:v3nether] actionbar ["",{"text":"Dimension == ","color":"gray","bold":true},{"text":"Nether","color":"red","bold":true}]

# Damit die Schnelleiste wieder leer geräumt ist, wenn man den Stock nicht mehr ausgewählt hat, wird ein leerer Text angezeigt.
title @a[tag=!EtiDimS.3Ausgewaehlt,tag=EtiDimS.3Auswahl] actionbar [""]

# Dem Spieler wird ein Etikett vergeben, um zu signalisieren dass der Stock gerade ausgewählt wurde und dieses Etikett wird erst dann wieder entfernt, wenn der Stock nicht mehr ausgewählt wurde.
tag @a[tag=EtiDimS.3Ausgewaehlt,tag=!EtiDimS.3Auswahl] add EtiDimS.3Auswahl
tag @a[tag=!EtiDimS.3Ausgewaehlt,tag=EtiDimS.3Auswahl] remove EtiDimS.3Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiDimS.3Ausgewaehlt] remove EtiDimS.3Ausgewaehlt
