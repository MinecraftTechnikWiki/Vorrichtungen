# Es wird ein Punkte-Ziel für den Auslöser erstellt.
scoreboard objectives add PZObjZae.2Ausl trigger ["Objekt-Zähler.2: ",{"text":"Auslöser","bold":true}]

# Zwei Variablen für das Minimum und das Maximum werden gesetzt.
scoreboard players set VarObjZae.2Min PZObjZae.2Ausl 0
scoreboard players set VarObjZae.2Max PZObjZae.2Ausl 10

# Spieler im Umkreis von 25 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..25] minecraft:stick{EigObjZae.2Alle:true,EigObjZae.2Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Objekt-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Anzahl der Objekte"','"anzuzeigen zu lassen."'] } }

# Ebenfalls erhalten die Spieler Piglin-Spawn-Eier.
give @a[distance=..25] minecraft:piglin_spawn_egg{EigObjZae.2Alle:true,display:{Lore:['"Eine Kreatur zum"','"aufzählen"'] },EntityTag:{IsImmuneToZombification:true,Tags:["EtiObjZae.2Alle","EtiObjZae.2Objekt"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],DeathLootTable:"minecraft:empty"} } 16
