# Ein Punkte-Ziel wird erstellt, um die Werte dort zu speichern.
scoreboard objectives add PZHoehlS.1Wert dummy ["Höhlen-Sensor.1: ",{"text":"Ticks und Y-Koordinaten","bold":true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Koordinaten messen können.
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um zu erfassen ob"','"man in einer Höhle ist."'],minecraft:custom_name='{"text":"Höhlen-Sensor","color":"dark_purple","bold":true}',minecraft:custom_data={EigHoehlS.1Alle:true,EigHoehlS.1Sensor:true},minecraft:enchantment_glint_override=true]

# Ein Chunk wird dauerhaft geladen.
forceload add ~ ~
