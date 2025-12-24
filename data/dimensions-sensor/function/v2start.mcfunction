# Spieler im Umkreis von 15 Blöcken um die Befehlsquelle erhalten einen Stock mit einem Verzauberungsschimmer.
give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um nach der Dimension","zu testen."],minecraft:custom_name={text:"Dimensions-Sensor",color:"dark_purple",bold:true},minecraft:custom_data={EigDimS.2Alle:true,EigDimS.2Sensor:true},minecraft:enchantment_glint_override=true]

# Der Chunk wird dauerhaft aktiviert, damit der Dimensionswechsel auch in anderen Dimensionen angezeigt werden kann.
forceload add ~ ~
