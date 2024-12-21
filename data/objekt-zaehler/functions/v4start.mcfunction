# Ein Punkte-Ziel wird erstellt.
scoreboard objectives add PZObjZae.4Anz dummy ["Objekt-Zähler.4: ",{"text":"Anzahl der Objekte","bold":true}]

# Ein Datenspeicher wird angelegt.
data merge storage objekt-zaehler:v4daten {EigObjZae.4Felder:[]}

# Jedem Spieler im Umkreis von 25 Blöcken wird ein Stock mit Verzauberungsschimmer gegeben.
give @a[distance=..25] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um die Anzahl der Objekte"','"anzuzeigen zu lassen."'],minecraft:custom_name='{"text":"Objekt-Sensor","color":"dark_purple","bold":true}',minecraft:custom_data={EigObjZae.4Alle:true,EigObjZae.4Sensor:true},minecraft:enchantment_glint_override=true]

# Die Spieler erhalten darüber hinaus sechs verschiedene Spawn-Eier mit denen lassen sich verschiedene Kreaturen erzeugen, um sie zu zählen.
give @a[distance=..25] minecraft:piglin_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",IsImmuneToZombification:true,Tags:["EtiObjZae.4Alle"],id:"minecraft:piglin"},minecraft:lore=['"Eine Kreatur zum"','"aufzählen"'],minecraft:custom_data={EigObjZae.4Alle:true}]

give @a[distance=..25] minecraft:hoglin_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",IsImmuneToZombification:true,Tags:["EtiObjZae.4Alle"],id:"minecraft:hoglin"},minecraft:lore=['"Eine Kreatur zum"','"aufzählen"'],minecraft:custom_data={EigObjZae.4Alle:true}]

give @a[distance=..25] minecraft:strider_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",Passengers:[{}],Tags:["EtiObjZae.4Alle"],id:"minecraft:strider"},minecraft:lore=['"Eine Kreatur zum"','"aufzählen"'],minecraft:custom_data={EigObjZae.4Alle:true}]

give @a[distance=..25] minecraft:zombified_piglin_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",Tags:["EtiObjZae.4Alle"],id:"minecraft:zombified_piglin"},minecraft:lore=['"Eine Kreatur zum"','"aufzählen"'],minecraft:custom_data={EigObjZae.4Alle:true}]

give @a[distance=..25] minecraft:zoglin_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",Tags:["EtiObjZae.4Alle"],id:"minecraft:zoglin"},minecraft:lore=['"Eine Kreatur zum"','"aufzählen"'],minecraft:custom_data={EigObjZae.4Alle:true}]

give @a[distance=..25] minecraft:piglin_brute_spawn_egg[minecraft:entity_data={DeathLootTable:"minecraft:empty",IsImmuneToZombification:true,Tags:["EtiObjZae.4Alle"],id:"minecraft:piglin_brute"},minecraft:lore=['"Eine Kreatur zum"','"aufzählen"'],minecraft:custom_data={EigObjZae.4Alle:true}]

# Um die Namen der Kreaturen anzuzeigen, wird ein Schild benötigt. Dieses wird an der Position des erzeugten Markierer platziert.
summon minecraft:marker ~ ~1 ~ {Tags:["EtiObjZae.4Alle","EtiObjZae.4Schild"]}
execute at @e[type=minecraft:marker,tag=EtiObjZae.4Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=12] replace
