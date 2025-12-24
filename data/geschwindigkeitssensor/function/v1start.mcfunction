# Punkte-Ziele für jede Art der zurückgelegten Strecke werden erstellt.
scoreboard objectives add PZGeschwS.1Gehen minecraft.custom:minecraft.walk_one_cm ["Geschwindigkeitssensor.1: ",{text:"Gehen",bold:true}]
scoreboard objectives add PZGeschwS.1Sprinten minecraft.custom:minecraft.sprint_one_cm ["Geschwindigkeitssensor.1: ",{text:"Sprinten",bold:true}]
scoreboard objectives add PZGeschwS.1Schleichen minecraft.custom:minecraft.crouch_one_cm ["Geschwindigkeitssensor.1: ",{text:"Schleichen",bold:true}]
scoreboard objectives add PZGeschwS.1Waten minecraft.custom:minecraft.walk_on_water_one_cm ["Geschwindigkeitssensor.1: ",{text:"Waten",bold:true}]
scoreboard objectives add PZGeschwS.1Tauchen minecraft.custom:minecraft.walk_under_water_one_cm ["Geschwindigkeitssensor.1: ",{text:"Tauchen",bold:true}]
scoreboard objectives add PZGeschwS.1Schwimmen minecraft.custom:minecraft.swim_one_cm ["Geschwindigkeitssensor.1: ",{text:"Schwimmen",bold:true}]
scoreboard objectives add PZGeschwS.1Klettern minecraft.custom:minecraft.climb_one_cm ["Geschwindigkeitssensor.1: ",{text:"Klettern",bold:true}]
scoreboard objectives add PZGeschwS.1Fallen minecraft.custom:minecraft.fall_one_cm ["Geschwindigkeitssensor.1: ",{text:"Fallen",bold:true}]
scoreboard objectives add PZGeschwS.1Fliegen minecraft.custom:minecraft.fly_one_cm ["Geschwindigkeitssensor.1: ",{text:"Fliegen",bold:true}]
scoreboard objectives add PZGeschwS.1Lore minecraft.custom:minecraft.minecart_one_cm ["Geschwindigkeitssensor.1: ",{text:"Lore",bold:true}]
scoreboard objectives add PZGeschwS.1Boot minecraft.custom:minecraft.boat_one_cm ["Geschwindigkeitssensor.1: ",{text:"Boot",bold:true}]
scoreboard objectives add PZGeschwS.1Pferd minecraft.custom:minecraft.horse_one_cm ["Geschwindigkeitssensor.1: ",{text:"Pferd",bold:true}]
scoreboard objectives add PZGeschwS.1Schwein minecraft.custom:minecraft.pig_one_cm ["Geschwindigkeitssensor.1: ",{text:"Schwein",bold:true}]
scoreboard objectives add PZGeschwS.1Schreiter minecraft.custom:minecraft.strider_one_cm ["Geschwindigkeitssensor.1: ",{text:"Schreiter",bold:true}]
scoreboard objectives add PZGeschwS.1Elytren minecraft.custom:minecraft.aviate_one_cm ["Geschwindigkeitssensor.1: ",{text:"Elytren",bold:true}]
scoreboard objectives add PZGeschwS.1Ghast minecraft.custom:minecraft.happy_ghast_one_cm ["Geschwindigkeitssensor.1: ",{text:"Ghast",bold:true}]
scoreboard objectives add PZGeschwS.1Nautilus minecraft.custom:minecraft.nautilus_one_cm ["Geschwindigkeitssensor.1: ",{text:"Nautilus",bold:true}]

# Zwei Konstanten.
scoreboard players set KonstGeschwS.1ZWANZIG PZGeschwS.1Gehen 20
scoreboard players set KonstGeschwS.1HUNDERT PZGeschwS.1Gehen 100

# Dem Spieler wird ein Stock mit Verzauberungsschimmer gegeben, um das Erfassen der Geschwindigkeit zu ermöglichen.
give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um nach der Bewegung","zu testen."],minecraft:custom_name={text:"Geschwindigkeitssensor",color:"dark_purple",bold:true},minecraft:custom_data={EigGeschwS.1Alle:true,EigGeschwS.1Sensor:true},minecraft:enchantment_glint_override=true]
