# Spielern im Umkreis von 25 Metern wird ein Etikett gegeben, wenn diese den Stock ausgewählt haben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigBewS.1Sensor:true}] run tag @s add EtiBewS.1Ausgewaehlt

# Wenn der Spieler den Stock nicht mehr ausgewählt hat und zuvor eine Titel-Nachricht erschien wird diese geleert.
title @a[tag=!EtiBewS.1Ausgewaehlt,tag=EtiBewS.1Auswahl] actionbar [""]
tag @a[tag=EtiBewS.1Ausgewaehlt,tag=!EtiBewS.1Auswahl] add EtiBewS.1Auswahl
tag @a[tag=!EtiBewS.1Ausgewaehlt,tag=EtiBewS.1Auswahl] remove EtiBewS.1Auswahl

# Wenn der Stock ausgewählt wurde, wird die Sensor-Funktion durch den Spieler aufgerufen.
execute as @a[tag=EtiBewS.1Ausgewaehlt] run function bewegungssensor:v1sensor

# Bei allen Spielern wird geprüft ob sich die Werte der Bewegung geändert haben und falls das eingetreten ist, wird dieser wieder auf null gesetzt.
scoreboard players set @a[scores={PZBewS.1Gehen=1..}] PZBewS.1Gehen 0
scoreboard players set @a[scores={PZBewS.1Plansch=1..}] PZBewS.1Plansch 0
scoreboard players set @a[scores={PZBewS.1Schwim=1..}] PZBewS.1Schwim 0
scoreboard players set @a[scores={PZBewS.1Sprint=1..}] PZBewS.1Sprint 0
scoreboard players set @a[scores={PZBewS.1Schl=1..}] PZBewS.1Schl 0
scoreboard players set @a[scores={PZBewS.1Sprung=1..},nbt={OnGround:true}] PZBewS.1Sprung 0

# Das Etikett zur Erfassung der Bewegung wird wieder entfernt.
tag @a[tag=EtiBewS.1Ausgewaehlt] remove EtiBewS.1Ausgewaehlt
