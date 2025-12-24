# Ein Punkte-Ziel wird erstellt, dass für die Anzahl der Slots verwendet wird.
scoreboard objectives add PZSlotS.3Slot dummy ["Slot-Sensor.3: ",{text:"Anzahl der Slots",bold:true}]

# Spielern im Umkreis von zehn Blöcken, werden verschiedene Gegenstände gegeben.
give @a[distance=..10] minecraft:observer[minecraft:lore=["Gegenstände in der Schnellleiste","auswählen um sie zu erfassen.","Belegte Schnellleisten-Slots","werden erfasst."],minecraft:custom_data={EigSlotS.3Alle:true}] 16
give @a[distance=..10] minecraft:redstone[minecraft:lore=["Gegenstände in der Schnellleiste","auswählen um sie zu erfassen.","Belegte Schnellleisten-Slots","werden erfasst."],minecraft:custom_data={EigSlotS.3Alle:true}] 32
give @a[distance=..10] minecraft:glass[minecraft:lore=["Gegenstände in der Schnellleiste","auswählen um sie zu erfassen.","Belegte Schnellleisten-Slots","werden erfasst."],minecraft:custom_data={EigSlotS.3Alle:true}] 8
give @a[distance=..10] minecraft:quartz_slab[minecraft:lore=["Gegenstände in der Schnellleiste","auswählen um sie zu erfassen.","Belegte Schnellleisten-Slots","werden erfasst."],minecraft:custom_data={EigSlotS.3Alle:true}] 12
