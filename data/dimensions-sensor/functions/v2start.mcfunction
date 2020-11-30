# Spieler im Umkreis von 15 Blöcken um die Befehlsquelle erhalten einen Stock mit einem Verzauberungsschimmer.
give @a[distance=..15] minecraft:stick{EigDimS.2Alle:true,EigDimS.2Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Dimensions-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach der Dimension"','"zu testen."'] } }

# Der Chunk wird dauerhaft aktiviert, damit der Dimensionswechsel auch in anderen Dimensionen angezeigt werden kann.
forceload add ~ ~
