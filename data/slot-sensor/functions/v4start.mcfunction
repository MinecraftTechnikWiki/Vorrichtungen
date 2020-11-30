# Ein Punkte-Ziel wird erstellt, dass die Anzahl der Slots speichern kann.
scoreboard objectives add PZSlotS.4Slots dummy ["Slot-Sensor.4: ",{"text":"Anzahl der belegten Slots","bold":true}]

# Ein NBT-Speicher wird angelegt, der das Inventar und den Slot zwischenspeichern kann.
data merge storage slot-sensor:v4daten {EigSlotS.4Inventar:[],EigSlotS.4Slot:""}

# Es werden in einem Radius von 15 Blöcken verschiedene Gegenstände gegeben, die für das Überprüfen der Schnellleiste benutzt werden können.
give @a[distance=..15] minecraft:ink_sac{EigSlotS.4Alle:true} 64
give @a[distance=..15] minecraft:green_dye{EigSlotS.4Alle:true} 128
give @a[distance=..15] minecraft:egg{EigSlotS.4Alle:true} 32
give @a[distance=..15] minecraft:glowstone_dust{EigSlotS.4Alle:true} 192
give @a[distance=..15] minecraft:lava_bucket{EigSlotS.4Alle:true} 8
