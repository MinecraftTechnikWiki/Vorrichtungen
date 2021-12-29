# Ein Punkte-Ziel wird angelegt um die Entfernung zu speichern.
scoreboard objectives add PZEntfS.1Wert dummy ["Entfernungs-Sensor.1: ",{"text":"Entfernung","bold":true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Entfernung messen können.
give @a[distance=..15] minecraft:compass{EigEntfS.1Alle:true,EigEntfS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Entfernungs-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Kompass aus"','"um die Entferung"','"und das Delta-Y"','"anzuzeigen zu lassen."'] } }

# Der Chunk wird aktiv, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~
