# Allen Spielern im Umkreis von 15 Blöcken wird jeweils ein Stock mit Verzauberungsschimmer gegeben.
give @a[distance=..15] minecraft:stick{EigBiomS.3Alle:true,EigBiomS.3Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Biom-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach dem Biom"','"zu testen."'] } }

# Der Chunk wird dauerhaft geladen.
forceload add ~ ~