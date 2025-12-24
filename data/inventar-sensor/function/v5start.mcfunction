# Es werden Punkte-Ziele erstellt, die das Öffnen von bestimmten Behälter-Inventaren erfassen können.
scoreboard objectives add PZInvS.5Werfer minecraft.custom:minecraft.inspect_dispenser ["Inventar-Sensor.5: ",{text:"Öffnen von Werfern",bold:true}]
scoreboard objectives add PZInvS.5Truhe minecraft.custom:minecraft.open_chest ["Inventar-Sensor.5: ",{text:"Öffnen von Truhen",bold:true}]
scoreboard objectives add PZInvS.5Ofen minecraft.custom:minecraft.interact_with_furnace ["Inventar-Sensor.5: ",{text:"Öffnen von Öfen",bold:true}]
scoreboard objectives add PZInvS.5Shulker minecraft.custom:minecraft.open_shulker_box ["Inventar-Sensor.5: ",{text:"Öffnen von Shulker-Kisten",bold:true}]
scoreboard objectives add PZInvS.5Fass minecraft.custom:minecraft.open_barrel ["Inventar-Sensor.5: ",{text:"Öffnen von Fässern",bold:true}]

# Alle Behälter die erfasst werden sollen werden in das Inventar des Spielers gelegt.
give @a[distance=..15] minecraft:dispenser[minecraft:lore=["Platziere den Behälter","und leg was rein"],minecraft:custom_data={EigInvS.5Alle:true}]
give @a[distance=..15] minecraft:chest[minecraft:lore=["Platziere den Behälter","und leg was rein"],minecraft:custom_data={EigInvS.5Alle:true}]
give @a[distance=..15] minecraft:furnace[minecraft:lore=["Platziere den Behälter","und leg was rein"],minecraft:custom_data={EigInvS.5Alle:true}]
give @a[distance=..15] minecraft:shulker_box[minecraft:lore=["Platziere den Behälter","und leg was rein"],minecraft:custom_data={EigInvS.5Alle:true}]
give @a[distance=..15] minecraft:barrel[minecraft:lore=["Platziere den Behälter","und leg was rein"],minecraft:custom_data={EigInvS.5Alle:true}]

# Alle Spieler im Umkreis von 15 Blöcken bekommen eine kurze Erklärung was sie machen müssen um den Sensor zu benutzen.
tellraw @a[distance=..15] ["Inventar-Sensor.5:\n",{text:"Platziere die Behälter und öffne sie und lege Gegenstände hinein oder nimm sie heraus.",bold:true}]
