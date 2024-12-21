# Punkte-Ziele für jede Bewegungsform wird erstellt.
scoreboard objectives add PZBewS.1Gehen minecraft.custom:minecraft.walk_one_cm ["Bewegungssensor.1: ",{"text":"Die gegangenen Zentimeter auf Land","bold":true}]
scoreboard objectives add PZBewS.1Plansch minecraft.custom:minecraft.walk_on_water_one_cm ["Bewegungssensor.1: ",{"text":"Die gegangenen Zentimeter im Wasser","bold":true}]
scoreboard objectives add PZBewS.1Schwim minecraft.custom:minecraft.walk_under_water_one_cm ["Bewegungssensor.1: ",{"text":"Die geschwommenen Zentimeter","bold":true}]
scoreboard objectives add PZBewS.1Sprint minecraft.custom:minecraft.sprint_one_cm ["Bewegungssensor.1: ",{"text":"Die gelaufenen Zentimeter","bold":true}]
scoreboard objectives add PZBewS.1Schl minecraft.custom:minecraft.crouch_one_cm ["Bewegungssensor.1: ",{"text":"Die geschlichenen Zentimeter","bold":true}]
scoreboard objectives add PZBewS.1Sprung minecraft.custom:minecraft.jump ["Bewegungssensor.1: ",{"text":"Springen","bold":true}]

# Dem Spieler wird ein Stock mit Verzauberungsschimmer gegeben, um das Erfassen der Bewegung zu ermöglichen.
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um nach der Bewegung"','"zu testen."'],minecraft:custom_name='{"text":"Bewegungssensor","color":"dark_purple","bold":true}',minecraft:custom_data={EigBewS.1Alle:true,EigBewS.1Sensor:true},minecraft:enchantment_glint_override=true]
