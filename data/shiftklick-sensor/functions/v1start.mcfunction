# Das Punkte-Ziel für das Erfassen von Shift-Klicks wird erstellt.
scoreboard objectives add PZShklS.1Shift minecraft.custom:minecraft.sneak_time ["Shiftklick-Sensor.1: ",{"text":"Schleich-Zeit","bold":true}]

# Den Spielern wird in einem Umkreis von 15 Blöcken ein Stock mit Verzauberungsschimmer gegeben, der verwendet wird um das Messen des Shift-Klicks zu aktivieren, sobald er gehalten wird.
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um nach dem Shiftklick"','"zu testen."'],minecraft:custom_name='{"text":"Shiftklick-Sensor","color":"dark_purple","bold":true}',minecraft:custom_data={EigShklS.1Alle:true,EigShklS.1Sensor:true},minecraft:enchantment_glint_override=true]
