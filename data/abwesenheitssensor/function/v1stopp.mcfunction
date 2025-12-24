# Die Punkte-Ziele werden entfernt.
scoreboard objectives remove PZAbwS.1Springen
scoreboard objectives remove PZAbwS.1Schleichen
scoreboard objectives remove PZAbwS.1Inventarplatz
scoreboard objectives remove PZAbwS.1Abwesend
scoreboard objectives remove PZAbwS.1X
scoreboard objectives remove PZAbwS.1Y
scoreboard objectives remove PZAbwS.1Z

# Die Mannschaft wird entfernt.
team remove TMAbwS.1Abwesend

# Eventuell vorhandene Interaktionsobjekte werden entfernt.
kill @e[type=minecraft:interaction,tag=EtiAbwS.1Alle]

# Rückmeldung dass der Abwesenheitssensor ausgeschaltet wurde.
tellraw @a ["Abwesenheitssensor.1:\n",{text:"Die Abwesenheit von Spielern wird nicht geprüft",color:"gray",bold:true}]

# Die Sensor-Funktion wird nicht mehr jede Sekunde ausgeführt.
schedule clear abwesenheitssensor:v1sensor
