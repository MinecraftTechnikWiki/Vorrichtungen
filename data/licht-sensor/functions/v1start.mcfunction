# Ein Punkte-Ziel für das Speichern der Lichtstufe wird angelegt.
scoreboard objectives add PZLichS.1Stufe dummy ["Licht-Sensor.1: ",{"text":"Licht-Stufe","bold":true}]

# Den Spielern wird ein Stock mit Verzauberungsschimmer gegeben.
give @a[distance=..15] minecraft:stick{EigLichS.1Alle:true,EigLichS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Lichtstufen-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach der Lichtstufe"','"zu testen."'] } }
