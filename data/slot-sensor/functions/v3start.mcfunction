# Ein Punkte-Ziel wird erstellt, dass für die Anzahl der Slots verwendet wird.
scoreboard objectives add PZSlotS.3Slot dummy ["Slot-Sensor.3: ",{"text":"Anzahl der Slots","bold":true}]

# Spielern im Umkreis von zehn Blöcken, werden verschiedene Gegenstände gegeben.
give @a[distance=..10] minecraft:observer{EigSlotS.3Alle:true,display:{Lore:['"Gegenstände in der Schnellleiste"','"auswählen um sie zu erfassen."','"Belegte Schnellleisten-Slots"','"werden erfasst."'] } } 16
give @a[distance=..10] minecraft:redstone{EigSlotS.3Alle:true,display:{Lore:['"Gegenstände in der Schnellleiste"','"auswählen um sie zu erfassen."','"Belegte Schnellleisten-Slots"','"werden erfasst."'] } } 32
give @a[distance=..10] minecraft:glass{EigSlotS.3Alle:true,display:{Lore:['"Gegenstände in der Schnellleiste"','"auswählen um sie zu erfassen."','"Belegte Schnellleisten-Slots"','"werden erfasst."'] } } 8
give @a[distance=..10] minecraft:quartz_slab{EigSlotS.3Alle:true,display:{Lore:['"Gegenstände in der Schnellleiste"','"auswählen um sie zu erfassen."','"Belegte Schnellleisten-Slots"','"werden erfasst."'] } } 12
