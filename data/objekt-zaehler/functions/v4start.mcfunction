# Ein Punkte-Ziel wird erstellt.
scoreboard objectives add PZObjZae.4Anz dummy ["Objekt-Zähler.4: ",{"text":"Anzahl der Objekte","bold":true}]

# Ein NBT-Speicher wird angelegt.
data merge storage objekt-zaehler:v4daten {EigObjZae.4Felder:[]}

# Jedem Spieler im Umkreis von 25 Blöcken wird ein Stock mit Verzauberungsschimmer gegeben.
give @a[distance=..25] minecraft:stick{EigObjZae.4Alle:true,EigObjZae.4Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Objekt-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Anzahl der Objekte"','"anzuzeigen zu lassen."'] } }

# Die Spieler erhalten darüber hinaus sechs verschiedene Spawn-Eier mit denen lassen sich verschiedene Kreaturen erzeugen, um sie zu zählen.
give @a[distance=..25] minecraft:piglin_spawn_egg{EigObjZae.4Alle:true,display:{Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{IsImmuneToZombification:true,Tags:["EtiObjZae.4Alle"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:hoglin_spawn_egg{EigObjZae.4Alle:true,display:{Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{IsImmuneToZombification:true,Tags:["EtiObjZae.4Alle"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:strider_spawn_egg{EigObjZae.4Alle:true,display:{Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{Passengers:[{}],Tags:["EtiObjZae.4Alle"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:zombified_piglin_spawn_egg{EigObjZae.4Alle:true,display:{Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{Tags:["EtiObjZae.4Alle"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:zoglin_spawn_egg{EigObjZae.4Alle:true,display:{Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{Tags:["EtiObjZae.4Alle"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:piglin_brute_spawn_egg{EigObjZae.4Alle:true,display:{Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{IsImmuneToZombification:true,Tags:["EtiObjZae.4Alle"],DeathLootTable:"minecraft:empty"} }

# Um die Namen der Kreaturen anzuzeigen, wird ein Schild benötigt. Dieses wird an der Position der erzeugten Partikelwolke platziert.
summon minecraft:marker ~ ~1 ~ {Tags:["EtiObjZae.4Alle","EtiObjZae.4Schild"]}
execute at @e[type=minecraft:marker,tag=EtiObjZae.4Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=12] replace
