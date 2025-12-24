# Jede Form der zurückgelegten Strecke wird vom Spieler ausgelesen und in eine separate Variable aufsummiert.
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen = @s PZGeschwS.1Gehen
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Sprinten
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Schleichen
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Waten
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Tauchen
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Schwimmen
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Klettern
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Fallen
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Fliegen
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Lore
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Boot
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Pferd
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Schwein
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Schreiter
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Elytren
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Ghast
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen += @s PZGeschwS.1Nautilus

# Die Messung findet pro Tick statt, daher wird sie um den Faktor multipliziert um die Geschwindigkeit in Meter pro Sekunde anzugeben zu können.
scoreboard players operation VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen *= KonstGeschwS.1ZWANZIG PZGeschwS.1Gehen

# Die Meter pro Sekunde werden separat gespeichert.
scoreboard players operation VarGeschwS.1Meter PZGeschwS.1Gehen = VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen
scoreboard players operation VarGeschwS.1Meter PZGeschwS.1Gehen /= KonstGeschwS.1HUNDERT PZGeschwS.1Gehen

# Die Zentimeter pro Sekunde werden ebenfalls separat gespeichert und durch Modulo berechnet.
scoreboard players operation VarGeschwS.1Zentimeter PZGeschwS.1Gehen = VarGeschwS.1Geschwindigkeit PZGeschwS.1Gehen
scoreboard players operation VarGeschwS.1Zentimeter PZGeschwS.1Gehen %= KonstGeschwS.1HUNDERT PZGeschwS.1Gehen

# Die aktuelle Geschwindigkeit wird in der Aktionsleiste angezeigt.
title @a[tag=Ausgewaehlt] actionbar ["",{text:"Geschwindigkeit == ",color:"gray",bold:true},{score:{name:"VarGeschwS.1Meter",objective:"PZGeschwS.1Gehen"},color:"blue",bold:true},".",{score:{name:"VarGeschwS.1Zentimeter",objective:"PZGeschwS.1Gehen"},color:"blue",bold:true}," ",{text:"m/s",color:"blue",bold:true}]

# Die zurückgelegten Strecken werden wieder auf null gesetzt, damit sie immer nur exakt den Wert von einem Tick besitzen.
scoreboard players set @s PZGeschwS.1Gehen 0
scoreboard players set @s PZGeschwS.1Sprinten 0
scoreboard players set @s PZGeschwS.1Schleichen 0
scoreboard players set @s PZGeschwS.1Waten 0
scoreboard players set @s PZGeschwS.1Tauchen 0
scoreboard players set @s PZGeschwS.1Schwimmen 0
scoreboard players set @s PZGeschwS.1Klettern 0
scoreboard players set @s PZGeschwS.1Fallen 0 
scoreboard players set @s PZGeschwS.1Fliegen 0
scoreboard players set @s PZGeschwS.1Lore 0
scoreboard players set @s PZGeschwS.1Boot 0
scoreboard players set @s PZGeschwS.1Pferd 0
scoreboard players set @s PZGeschwS.1Schwein 0
scoreboard players set @s PZGeschwS.1Schreiter 0
scoreboard players set @s PZGeschwS.1Elytren 0
scoreboard players set @s PZGeschwS.1Ghast 0
scoreboard players set @s PZGeschwS.1Nautilus 0
