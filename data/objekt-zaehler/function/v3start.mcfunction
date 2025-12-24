# Es wird ein Auslöser-Punkte-Ziel erstellt, mit dem man Optionen einstellen kann.
scoreboard objectives add PZObjZae.3Anz trigger ["Objekt-Zähler.3: ",{text:"Auslöser",bold:true}]

# Es werden zwei Teams erstellt.
team add TMObjZae.3Team1 ["Objekt-Zähler.3: ",{text:"Team1",color:"red",bold:true}]
team add TMObjZae.3Team2 ["Objekt-Zähler.3: ",{text:"Team2",color:"blue",bold:true}]

# Für die beiden Teams wird eine jeweilige Farbe festgelegt.
team modify TMObjZae.3Team1 color red
team modify TMObjZae.3Team2 color blue

# Spieler im Umkreis von 15 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um die Anzahl der Objekte","anzuzeigen zu lassen."],minecraft:custom_name={text:"Objekt-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigObjZae.3Alle:true,EigObjZae.3Sensor:true},minecraft:enchantment_glint_override=true]

# Ein Piglin-Spawn-Ei das einen Piglin mit roten Helm erzeugen kann.
give @a[distance=..15] minecraft:piglin_spawn_egg[minecraft:entity_data={equipment:{head:{components:{"minecraft:dyed_color":16711680},count:1,id:"minecraft:leather_helmet"} },DeathLootTable:"minecraft:empty",IsImmuneToZombification:true,Tags:["EtiObjZae.3Alle","EtiObjZae.3Objekt"],Team:"TMObjZae.3Team1",id:"minecraft:piglin"},minecraft:lore=["Eine Kreatur zum","aufzählen"],minecraft:custom_name={text:"Team1",color:"red",bold:true},minecraft:custom_data={EigObjZae.3Alle:true}] 16

# Ein Piglin-Spawn-Ei das einen Piglin mit blauen Helm erzeugen kann.
give @a[distance=..15] minecraft:piglin_spawn_egg[minecraft:entity_data={equipment:{head:{components:{"minecraft:dyed_color":255},count:1,id:"minecraft:leather_helmet"} },DeathLootTable:"minecraft:empty",IsImmuneToZombification:true,Tags:["EtiObjZae.3Alle","EtiObjZae.3Objekt"],Team:"TMObjZae.3Team2",id:"minecraft:piglin"},minecraft:lore=["Eine Kreatur zum","aufzählen"],minecraft:custom_name={text:"Team2",color:"blue",bold:true},minecraft:custom_data={EigObjZae.3Alle:true}] 16

# Ein Rüstungsständer der Kugel-Zonen erzeugen kann.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={CustomName:{text:"Kugel",color:"green",bold:true},CustomNameVisible:true,Invisible:true,Marker:true,Small:true,Tags:["EtiObjZae.3Alle","EtiObjZae.3Zone","EtiObjZae.3Kugel"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","um eine Zone zu erstellen"],minecraft:custom_name={text:"Kugel",color:"green",bold:true},minecraft:custom_data={EigObjZae.3Alle:true}]

# Ein Rüstungsständer der Kubus-Zonen erzeugen kann.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={CustomName:{text:"Kubus",color:"green",bold:true},CustomNameVisible:true,Invisible:true,Marker:true,Rotation:[0.0f,0.0f],Small:true,Tags:["EtiObjZae.3Alle","EtiObjZae.3Zone","EtiObjZae.3Kubus"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","um eine Zone zu erstellen"],minecraft:custom_name={text:"Kubus",color:"green",bold:true},minecraft:custom_data={EigObjZae.3Alle:true}]
