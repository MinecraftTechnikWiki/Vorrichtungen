# Ein Punkte-Ziel wird angelegt um die Koordinaten zu speichern.
scoreboard objectives add PZKoordS.1Wert dummy ["Koordinaten-Sensor.1: ",{"text":"Koordinaten","bold":true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Koordinaten messen können.
give @a[distance=..15] minecraft:compass{EigKoordS.1Alle:true,EigKoordS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Koordinaten-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Kompass aus"','"um die Koordinaten"','"anzuzeigen zu lassen."'] } }

# Der Chunk wird aktiv, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~
