# Die Punkte-Ziele für x, y und z Koordinaten, sowie für die Rotationen werden erstellt.
scoreboard objectives add PZBewS.2X dummy ["Bewegungssensor.2: ",{text:"Die X-Koordinate",bold:true}]
scoreboard objectives add PZBewS.2Y dummy ["Bewegungssensor.2: ",{text:"Die Y-Koordinate",bold:true}]
scoreboard objectives add PZBewS.2Z dummy ["Bewegungssensor.2: ",{text:"Die Z-Koordinate",bold:true}]
scoreboard objectives add PZBewS.2Ric dummy ["Bewegungssensor.2: ",{text:"Die Richtung",bold:true}]
scoreboard objectives add PZBewS.2Nei dummy ["Bewegungssensor.2: ",{text:"Die Neigung",bold:true}]

# Spielern im Umkreis wird ein Stock mit Verzauberungsschimmer gegeben, mit dem man das Erfassen der Bewegung aktivieren kann.
give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um nach der Bewegung","zu testen."],minecraft:custom_name={text:"Bewegungssensor",color:"dark_purple",bold:true},minecraft:custom_data={EigBewS.2Alle:true,EigBewS.2Sensor:true},minecraft:enchantment_glint_override=true]
