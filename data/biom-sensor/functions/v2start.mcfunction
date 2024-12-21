# Den Spielern wird ein Stock mit Verzauberungsschimmer gegeben.
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um nach dem Biom"','"zu testen."'],minecraft:custom_name='{"text":"Biom-Sensor","color":"dark_purple","bold":true}',minecraft:custom_data={EigBiomS.2Alle:true,EigBiomS.2Sensor:true},minecraft:enchantment_glint_override=true]

# Der Chunk wird dauerhaft geladen.
forceload add ~ ~