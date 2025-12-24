# Ein Punkte-Ziel wird angelegt um die Sichtweite als Punktestände zu speichern.
scoreboard objectives add PZSichtWS.1Wert dummy ["Sichtweiten-Sensor.1: ",{text:"Wert der Weite",bold:true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Sichtweite messen können.
give @a[distance=..15] minecraft:compass[minecraft:lore=["Wähle den Kompass aus","um die Sichtweite","anzuzeigen zu lassen."],minecraft:custom_name={text:"Sichtweiten-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigSichtWS.1Alle:true,EigSichtWS.1Sensor:true},minecraft:enchantment_glint_override=true]

# Der Chunk wird aktiv, damit der Sensor auch weit ab vom Spieler noch funktioniert.
forceload add ~ ~
