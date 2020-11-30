# Für die verschiedenen Inventar-Bereiche werden drei Punkte-Ziele  erstellt.
scoreboard objectives add PZInvS.3Ruest dummy ["Inventar-Sensor.3: ",{"text":"Anzahl der Rüstungs-Slots","bold":true}]
scoreboard objectives add PZInvS.3Schnell dummy ["Inventar-Sensor.3: ",{"text":"Anzahl der Schnellleisten-Slots","bold":true}]
scoreboard objectives add PZInvS.3Slots dummy ["Inventar-Sensor.3: ",{"text":"Anzahl der Slots","bold":true}]

# Spielern im Umkreis von 15 Blöcken wird allerlei möglicher Kram gegeben, der für alle Inventar-Bereiche benutzt werden kann.
give @a[distance=..15] minecraft:chiseled_quartz_block{EigInvS.3Alle:true,display:{Lore:['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"']} } 16
give @a[distance=..15] minecraft:golden_chestplate{EigInvS.3Alle:true,display:{Lore:['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"']} } 1
give @a[distance=..15] minecraft:stone_bricks{EigInvS.3Alle:true,display:{Lore:['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"']} } 32
give @a[distance=..15] minecraft:red_nether_brick_stairs{EigInvS.3Alle:true,display:{Lore:['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"']} } 128
give @a[distance=..15] minecraft:oak_boat{EigInvS.3Alle:true,display:{Lore:['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"']} } 2
give @a[distance=..15] minecraft:cactus{EigInvS.3Alle:true,display:{Lore:['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"']} } 16
give @a[distance=..15] minecraft:shield{EigInvS.3Alle:true,display:{Lore:['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"']} } 1
