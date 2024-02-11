# Ein Punkte-Ziel wird angelegt um die Sichtweite als Punktestände zu speichern.
scoreboard objectives add PZSichtWS.1Wert dummy ["Sichtweiten-Sensor.1: ",{"text":"Wert der Weite","bold":true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Sichtweite messen können.
give @a[distance=..15] minecraft:compass{EigSichtWS.1Alle:true,EigSichtWS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Sichtweiten-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Kompass aus"','"um die Sichtweite"','"anzuzeigen zu lassen."'] } }

# Der Chunk wird aktiv, damit der Sensor auch weit ab vom Spieler noch funktioniert.
forceload add ~ ~
