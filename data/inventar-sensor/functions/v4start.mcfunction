# Das Droppen der Gegenstände wird mit diesem Punkte-Ziel erkannt.
scoreboard objectives add PZInvS.4Drop minecraft.custom:minecraft.drop ["Inventar-Sensor.4: ",{"text":"Droppen","bold":true}]

# Ein NBT-Speicher wird angelegt.
data merge storage inventar-sensor:v4daten {EigInvS.4ID:'{"text":"falsch","color":"red","bold":true}',EigInvS.4Stapel:'{"text":"falsch","color":"red","bold":true}',EigInvS.4SucheDrop:{},EigInvS.4Drop:{},EigInvS.4Inventar:[]}

# Spieler im Umkreis von 15 Blöcken, erhalten einen verzauberten Stock.
give @a[distance=..15] minecraft:stick{EigInvS.4Alle:true,EigInvS.4Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Inventar-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach einen Gegenstand"','"zu testen."'] } }

# Gegenstände werden gegeben die man für den Sensor nutzen kann.
give @a[distance=..15] minecraft:mossy_stone_brick_wall{EigInvS.4Alle:true,display:{Lore:['"Wähle den Sensor aus und"','"droppe den Gegenstand mit Q"','"um das Inventar nach"','"diesem Gegenstand suchen zu lassen"']} } 16
give @a[distance=..15] minecraft:stone_bricks{EigInvS.4Alle:true,display:{Lore:['"Wähle den Sensor aus und"','"droppe den Gegenstand mit Q"','"um das Inventar nach"','"diesem Gegenstand suchen zu lassen"']} } 16
give @a[distance=..15] minecraft:wither_rose{EigInvS.4Alle:true,display:{Lore:['"Wähle den Sensor aus und"','"droppe den Gegenstand mit Q"','"um das Inventar nach"','"diesem Gegenstand suchen zu lassen"']} } 16
give @a[distance=..15] minecraft:red_mushroom_block{EigInvS.4Alle:true,display:{Lore:['"Wähle den Sensor aus und"','"droppe den Gegenstand mit Q"','"um das Inventar nach"','"diesem Gegenstand suchen zu lassen"']} } 16
give @a[distance=..15] minecraft:lily_pad{EigInvS.4Alle:true,display:{Lore:['"Wähle den Sensor aus und"','"droppe den Gegenstand mit Q"','"um das Inventar nach"','"diesem Gegenstand suchen zu lassen"']} } 16

# Den Spielern wird eine Text-Nachricht ausgeben, die erklärt wie man den Sensor benutzen kann.
tellraw @a[distance=..15] ["Inventar-Sensor.4:\n",{"text":"Wähle in der Schnellleiste den Stock mit dem Namen 'Inventar-Sensor' aus und öffne mit E das Inventar und droppe mit Q einen beliebigen Gegenstand um bei allen Spielern, mit Sensor ausgewählt, nach diesem Gegenstand zu suchen. Beim Droppen von ganzen Stapeln, wird auch der Stapel getestet.","bold":true}]
