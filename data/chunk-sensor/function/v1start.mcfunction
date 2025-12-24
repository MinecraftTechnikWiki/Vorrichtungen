# Ein Punkte-Ziel wird angelegt um die Koordinaten zu speichern.
scoreboard objectives add PZChunkS.1Wert dummy ["Chunk-Sensor.1: ",{text:"Chunk-Koordinaten",bold:true}]

# Eine Konstante die den Wert 16 besitzt wird festgelegt.
scoreboard players set KonstChunkS.1Chunk PZChunkS.1Wert 16

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Chunk-Koordinaten messen können.
give @a[distance=..15] minecraft:compass[minecraft:lore=["Wähle den Kompass aus","um die Chunk-Koordinaten","anzuzeigen zu lassen."],minecraft:custom_name={text:"Chunk-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigChunkS.1Alle:true,EigChunkS.1Sensor:true},minecraft:enchantment_glint_override=true]

# Der Chunk wird aktiv, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~
