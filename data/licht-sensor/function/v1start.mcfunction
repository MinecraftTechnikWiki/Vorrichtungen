# Ein Punkte-Ziel für das Speichern der Lichtstufe wird angelegt.
scoreboard objectives add PZLichS.1Stufe dummy ["Licht-Sensor.1: ",{text:"Licht-Stufe",bold:true}]

# Den Spielern wird ein Stock mit Verzauberungsschimmer gegeben.
give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um nach der Lichtstufe","zu testen."],minecraft:custom_name={text:"Lichtstufen-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigLichS.1Alle:true,EigLichS.1Sensor:true},minecraft:enchantment_glint_override=true]
