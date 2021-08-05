# Spielern im Umkreis von 25 Metern wird ein Etikett gegeben, wenn diese den Stock ausgewählt haben.
tag @a[distance=..25,nbt={SelectedItem:{tag:{EigBewS.1Sensor:true} } }] add EtiBewS.1Sensor

# Wenn der Spieler den Stock nicht mehr ausgewählt hat und zuvor eine Titel-Nachricht erschien wird diese geräumt.
title @a[tag=!EtiBewS.1Sensor,tag=EtiBewS.1Titel] actionbar [""]
tag @a[tag=EtiBewS.1Sensor,tag=!EtiBewS.1Titel] add EtiBewS.1Titel
tag @a[tag=!EtiBewS.1Sensor,tag=EtiBewS.1Titel] remove EtiBewS.1Titel

# Wenn der Stock ausgewählt wurde, wird die Erfassen-Funktion durch den Spieler aufgerufen.
execute as @a[tag=EtiBewS.1Sensor] run function bewegungssensor:v1erfassen

# Bei allen Spielern wird geprüft ob sich die Werte der Bewegung geändert haben und falls das eingetreten ist, wird dieser wieder auf null gesetzt.
scoreboard players set @a[scores={PZBewS.1Gehen=1..}] PZBewS.1Gehen 0
scoreboard players set @a[scores={PZBewS.1Plansch=1..}] PZBewS.1Plansch 0
scoreboard players set @a[scores={PZBewS.1Schwim=1..}] PZBewS.1Schwim 0
scoreboard players set @a[scores={PZBewS.1Sprint=1..}] PZBewS.1Sprint 0
scoreboard players set @a[scores={PZBewS.1Schl=1..}] PZBewS.1Schl 0
scoreboard players set @a[scores={PZBewS.1Sprung=1..},nbt={OnGround:true}] PZBewS.1Sprung 0

# Das Etikett zur Erfassung der Bewegung wird wieder entfernt.
tag @a[tag=EtiBewS.1Sensor] remove EtiBewS.1Sensor
