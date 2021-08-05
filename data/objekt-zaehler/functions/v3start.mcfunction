# Es wird ein Auslöser-Punkte-Ziel erstellt, mit dem man Optionen einstellen kann.
scoreboard objectives add PZObjZae.3Anz trigger ["Objekt-Zähler.3: ",{"text":"Auslöser","bold":true}]

# Es werden zwei Teams erstellt.
team add TMObjZae.3Team1 ["Objekt-Zähler.3: ",{"text":"Team1","color":"red","bold":true}]
team add TMObjZae.3Team2 ["Objekt-Zähler.3: ",{"text":"Team2","color":"blue","bold":true}]

# Für die beiden Teams wird eine jeweilige Farbe festgelegt.
team modify TMObjZae.3Team1 color red
team modify TMObjZae.3Team2 color blue

# Spieler im Umkreis von 15 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..15] minecraft:stick{EigObjZae.3Alle:true,EigObjZae.3Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Objekt-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Anzahl der Objekte"','"anzuzeigen zu lassen."'] } }

# Ein Piglin-Spawn-Ei das einen Piglin mit roten Helm erzeugen kann.
give @a[distance=..15] minecraft:piglin_spawn_egg{EigObjZae.3Alle:true,display:{Name:'{"text":"Team1","color":"red","bold":true}',Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{IsImmuneToZombification:true,Team:"TMObjZae.3Team1",Tags:["EtiObjZae.3Alle","EtiObjZae.3Objekt"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680} } } ],DeathLootTable:"minecraft:empty"} } 16

# Ein Piglin-Spawn-Ei das einen Piglin mit blauen Helm erzeugen kann.
give @a[distance=..15] minecraft:piglin_spawn_egg{EigObjZae.3Alle:true,display:{Name:'{"text":"Team2","color":"blue","bold":true}',Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{IsImmuneToZombification:true,Team:"TMObjZae.3Team2",Tags:["EtiObjZae.3Alle","EtiObjZae.3Objekt"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:255} } } ],DeathLootTable:"minecraft:empty"} } 16

# Ein Rüstungsständer der Kugel-Zonen erzeugen kann.
give @a[distance=..15] minecraft:armor_stand{EigObjZae.3Alle:true,display:{Name:'{"text":"Kugel","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Zone zu erstellen"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Kugel","color":"green","bold":true}',Tags:["EtiObjZae.3Alle","EtiObjZae.3Zone","EtiObjZae.3Kugel"]} }

# Ein Rüstungsständer der Kubus-Zonen erzeugen kann.
give @a[distance=..15] minecraft:armor_stand{EigObjZae.3Alle:true,display:{Name:'{"text":"Kubus","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Zone zu erstellen"']},EntityTag:{Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Kubus","color":"green","bold":true}',Tags:["EtiObjZae.3Alle","EtiObjZae.3Zone","EtiObjZae.3Kubus"],Rotation:[0.0f,0.0f]} }
