# Ein Punkte-Ziel wird erstellt, um die Werte dort zu speichern.
scoreboard objectives add PZHoehlS.1Wert dummy ["Höhlen-Sensor.1: ",{"text":"Zeit und Y-Koordinaten","bold":true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Koordinaten messen können.
give @a[distance=..15] minecraft:stick{EigHoehlS.1Alle:true,EigHoehlS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Höhlen-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um zu erfassen ob"','"man in einer Höhle ist."'] } }

# Ein Chunk wird dauerhaft geladen.
forceload add ~ ~
