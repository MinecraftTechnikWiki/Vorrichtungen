# Punkte-Ziele für die Position und Tätigkeiten werden erstellt.
scoreboard objectives add PZAbwS.1Springen minecraft.custom:minecraft.jump ["Abwesenheitssensor.1: ",{text:"Springen",bold:true}]
scoreboard objectives add PZAbwS.1Schleichen minecraft.custom:minecraft.sneak_time ["Abwesenheitssensor.1: ",{text:"Schleichen",bold:true}]
scoreboard objectives add PZAbwS.1Inventarplatz dummy ["Abwesenheitssensor.1: ",{text:"Inventarplatz",bold:true}]
scoreboard objectives add PZAbwS.1Abwesend dummy ["Abwesenheitssensor.1: ",{text:"Abwesend",bold:true}]
scoreboard objectives add PZAbwS.1X dummy ["Abwesenheitssensor.1: ",{text:"X-Position",bold:true}]
scoreboard objectives add PZAbwS.1Y dummy ["Abwesenheitssensor.1: ",{text:"Y-Position",bold:true}]
scoreboard objectives add PZAbwS.1Z dummy ["Abwesenheitssensor.1: ",{text:"Z-Position",bold:true}]

# Spieler die abwesend sind, werden in eine Mannschaft gesteckt.
team add TMAbwS.1Abwesend ["Abwesenheitssensor.1: ",{text:"Abwesende",color:"gray",bold:true}]
team modify TMAbwS.1Abwesend suffix {text:"[AFK]",color:"gray",bold:true}
team modify TMAbwS.1Abwesend color gray

# Rückmeldung für das Einschalten des Abwesenheitssensors.
tellraw @a ["Abwesenheitssensor.1:\n",{text:"Die Abwesenheit von Spielern wird geprüft",color:"gray",bold:true}]

# Die Sensor-Funktion wird in einer Sekunde aufgerufen.
schedule function abwesenheitssensor:v1sensor 1s replace
