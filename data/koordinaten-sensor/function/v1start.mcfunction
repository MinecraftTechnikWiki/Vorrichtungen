# Ein Punkte-Ziel wird angelegt um die Koordinaten zu speichern.
scoreboard objectives add PZKoordS.1Wert dummy ["Koordinaten-Sensor.1: ",{text:"Koordinaten",bold:true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Koordinaten messen können.
give @a[distance=..15] minecraft:compass[minecraft:lore=["Wähle den Kompass aus","um die Koordinaten","anzuzeigen zu lassen."],minecraft:custom_name={text:"Koordinaten-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigKoordS.1Alle:true,EigKoordS.1Sensor:true},minecraft:enchantment_glint_override=true]

# Der Chunk wird aktiv, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~
