# In Blickrichtung des Spielers wird ein Markierer erzeugt der die Koordinaten-Funktion aufruft.
execute at @s positioned ^ ^ ^10 summon minecraft:marker run function abwesenheitssensor:v1koordinaten

# Der aktuell ausgewählte Inventarplatz des Spielers wird ausgelesen und in eine Variable gespeichert.
execute store result score VarAbwS.1Spieler PZAbwS.1Inventarplatz run data get entity @s SelectedItemSlot

# Nur wenn alle Koordinaten und der Inventarplatz ihren Wert vor einer Sekunde entsprechen und nicht gesprungen oder geschlichen wurde, bekommt der Spieler ein Etikett zur Markierung für die Abwesenheit.
execute if score VarAbwS.1Spieler PZAbwS.1X = @s PZAbwS.1X if score VarAbwS.1Spieler PZAbwS.1Y = @s PZAbwS.1Y if score VarAbwS.1Spieler PZAbwS.1Z = @s PZAbwS.1Z if score VarAbwS.1Spieler PZAbwS.1Inventarplatz = @s PZAbwS.1Inventarplatz unless entity @s[scores={PZAbwS.1Springen=1..}] unless entity @s[scores={PZAbwS.1Schleichen=1..}] run tag @s add EtiAbwS.1Abwesend

# Wenn der Spieler abwesend ist, wird pro Sekunde sein Wert erhöht um zu erfahren wie lange er abwesend ist.
scoreboard players add @s[tag=EtiAbwS.1Abwesend] PZAbwS.1Abwesend 1

# Erst ab fünf Sekunden wird das Interaktionsobjekt in Augenhöhe des Spielers erzeugt, um damit auch Rechts- und Linksklicks abzufragen zu können.
execute at @s[tag=EtiAbwS.1Abwesend,scores={PZAbwS.1Abwesend=5}] anchored eyes run summon minecraft:interaction ^ ^ ^ {width:0.2,height:0.2,Tags:[EtiAbwS.1Alle,EtiAbwS.1Mausklick]}

# Ist der Spieler schon mindestens 2,5 Minuten inaktiv, wird er in die Mannschaft der Abwesenden hinzugefügt.
team join TMAbwS.1Abwesend @s[team=!TMAbwS.1Abwesend,tag=EtiAbwS.1Abwesend,scores={PZAbwS.1Abwesend=150..}]

# Abwesende Spieler erhalten ständig die Abwesenheitsnachricht im Titel.
title @s[team=TMAbwS.1Abwesend,scores={PZAbwS.1Abwesend=150..}] title ["",{text:"Du bist Abwesend",color:"gold"}]
title @s[team=TMAbwS.1Abwesend,scores={PZAbwS.1Abwesend=150..}] subtitle ["",{text:"Bewege dich zum Aufwachen",color:"yellow"}]

# Wenn der Spieler mindestens fünf Sekunden abwesend war, wird das erzeugte Interaktionsobjekt wieder entfernt.
execute at @s[tag=!EtiAbwS.1Abwesend,scores={PZAbwS.1Abwesend=5..}] run kill @n[distance=..5,type=minecraft:interaction,tag=EtiAbwS.1Mausklick]

# Spieler erhalten eine Nachricht im Chat, wenn sie wieder aktiv sind.
tellraw @s[team=TMAbwS.1Abwesend,tag=!EtiAbwS.1Abwesend] ["Abwesenheitssensor.1:\n",{text:"Da du dich bewegt hast, wirst du nicht mehr als Abwesend erkannt.",color:"gold"}]

# Der Abwesenheitszähler wird wieder auf null zurück gesetzt, wenn der Spieler nicht mehr abwesend ist. Ebenso wird der Spieler aus der Mannschaft geworfen.
scoreboard players set @s[tag=!EtiAbwS.1Abwesend] PZAbwS.1Abwesend 0
team leave @s[team=TMAbwS.1Abwesend,tag=!EtiAbwS.1Abwesend]

# Das Etikett wird wieder entfernt, damit es nur zum Testen kurz vorhanden ist um es überprüfen zu können.
tag @s[tag=EtiAbwS.1Abwesend] remove EtiAbwS.1Abwesend

# Alles zuvor ausgelesenen und in Variablen gespeicherten Werte, werden in die Punktestände des Spielers übertragen.
scoreboard players operation @s PZAbwS.1X = VarAbwS.1Spieler PZAbwS.1X
scoreboard players operation @s PZAbwS.1Y = VarAbwS.1Spieler PZAbwS.1Y
scoreboard players operation @s PZAbwS.1Z = VarAbwS.1Spieler PZAbwS.1Z
scoreboard players operation @s PZAbwS.1Inventarplatz = VarAbwS.1Spieler PZAbwS.1Inventarplatz
scoreboard players set @s[scores={PZAbwS.1Springen=1..}] PZAbwS.1Springen 0
scoreboard players set @s[scores={PZAbwS.1Schleichen=1..}] PZAbwS.1Schleichen 0
