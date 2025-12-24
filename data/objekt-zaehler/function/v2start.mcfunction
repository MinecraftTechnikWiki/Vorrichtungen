# Es wird ein Punkte-Ziel für den Auslöser erstellt.
scoreboard objectives add PZObjZae.2Ausl trigger ["Objekt-Zähler.2: ",{text:"Auslöser",bold:true}]

# Zwei Variablen für das Minimum und das Maximum werden gesetzt.
scoreboard players set VarObjZae.2Min PZObjZae.2Ausl 0
scoreboard players set VarObjZae.2Max PZObjZae.2Ausl 10

# Spieler im Umkreis von 25 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..25] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um die Anzahl der Objekte","anzuzeigen zu lassen."],minecraft:custom_name={text:"Objekt-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigObjZae.2Alle:true,EigObjZae.2Sensor:true},minecraft:enchantment_glint_override=true]

# Ebenfalls erhalten die Spieler Piglin-Spawn-Eier.
give @a[distance=..25] minecraft:piglin_spawn_egg[minecraft:entity_data={equipment:{head:{count:1,id:"minecraft:leather_helmet"} },DeathLootTable:"minecraft:empty",IsImmuneToZombification:true,Tags:["EtiObjZae.2Alle","EtiObjZae.2Objekt"],id:"minecraft:piglin"},minecraft:lore=["Eine Kreatur zum","aufzählen"],minecraft:custom_data={EigObjZae.2Alle:true}] 16
