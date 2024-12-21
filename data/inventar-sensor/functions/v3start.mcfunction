# Für die verschiedenen Inventar-Bereiche werden drei Punkte-Ziele  erstellt.
scoreboard objectives add PZInvS.3Ruest dummy ["Inventar-Sensor.3: ",{"text":"Anzahl der Rüstungs-Slots","bold":true}]
scoreboard objectives add PZInvS.3Schnell dummy ["Inventar-Sensor.3: ",{"text":"Anzahl der Schnellleisten-Slots","bold":true}]
scoreboard objectives add PZInvS.3Slots dummy ["Inventar-Sensor.3: ",{"text":"Anzahl der Slots","bold":true}]

# Spielern im Umkreis von 15 Blöcken wird allerlei möglicher Kram gegeben, der für alle Inventar-Bereiche benutzt werden kann.
give @a[distance=..15] minecraft:chiseled_quartz_block[minecraft:lore=['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"'],minecraft:custom_data={EigInvS.3Alle:true}] 16
give @a[distance=..15] minecraft:golden_chestplate[minecraft:lore=['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"'],minecraft:custom_data={EigInvS.3Alle:true}] 1
give @a[distance=..15] minecraft:stone_bricks[minecraft:lore=['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"'],minecraft:custom_data={EigInvS.3Alle:true}] 32
give @a[distance=..15] minecraft:red_nether_brick_stairs[minecraft:lore=['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"'],minecraft:custom_data={EigInvS.3Alle:true}] 128
give @a[distance=..15] minecraft:oak_boat[minecraft:lore=['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"'],minecraft:custom_data={EigInvS.3Alle:true}] 2
give @a[distance=..15] minecraft:cactus[minecraft:lore=['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"'],minecraft:custom_data={EigInvS.3Alle:true}] 16
give @a[distance=..15] minecraft:shield[minecraft:lore=['"Bewge den Gegenstand im Inventar"','"oder droppe ihn mit Q"'],minecraft:custom_data={EigInvS.3Alle:true}] 1
