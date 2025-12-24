# Ein Punkte-Ziel wird angelegt um die Entfernung zu speichern.
scoreboard objectives add PZEntfS.1Wert dummy ["Entfernungs-Sensor.1: ",{text:"Entfernung",bold:true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Entfernung messen können.
give @a[distance=..15] minecraft:compass[minecraft:lore=["Wähle den Kompass aus","um die Entferung","und das Delta-Y","anzuzeigen zu lassen."],minecraft:custom_name={text:"Entfernungs-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigEntfS.1Alle:true,EigEntfS.1Sensor:true},minecraft:enchantment_glint_override=true]

# Der Chunk wird aktiv, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~
