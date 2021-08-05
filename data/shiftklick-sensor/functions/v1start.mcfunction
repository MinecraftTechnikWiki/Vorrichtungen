# Das Punkte-Ziel für das Erfassen von Shift-Klicks wird erstellt.
scoreboard objectives add PZShklS.1Shift minecraft.custom:minecraft.sneak_time ["Shiftklick-Sensor.1: ",{"text":"Schleich-Zeit","bold":true}]

# Den Spielern wird in einem Umkreis von 15 Blöcken ein Stock mit Verzauberungsschimmer gegeben, der verwendet wird um das Messen des Shift-Klicks zu aktivieren, sobald er gehalten wird.
give @a[distance=..15] minecraft:stick{EigShklS.1Alle:true,EigShklS.1Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Shiftklick-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um nach dem Shiftklick"','"zu testen."'] } }
