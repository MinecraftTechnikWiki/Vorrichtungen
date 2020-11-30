# Spieler die gerade auftauchen lassen auf Ebene null unter sich ein Kaninchen erzeugen und der Wert wird auf null gesetzt
execute at @a[tag=!EtiSprS.2Sprache] run summon minecraft:rabbit ~ 0 ~ {Invulnerable:true,NoGravity:true,DeathLootTable:"minecraft:empty",Tags:["EtiSprS.2Alle"]}
scoreboard players set @a[tag=!EtiSprS.2Sprache] PZSprS.2Sprache 0

# Bei Spielern die noch nicht erfasst wurden, wird geprüft ob sich auf Ebene null ein Kaninchen aufhält, falls das so ist, wird die Funktion geladen
execute as @a[tag=!EtiSprS.2Sprache] at @s positioned ~ 0 ~ if entity @e[distance=..1,type=minecraft:rabbit,tag=EtiSprS.2Alle] run function sprachen-sensor:v2sprache

# Je nach erfasster Sprache wird dem Spieler eine Chat-Nachricht ausgegeben. Falls keine Sprache gefunden wurde, besitzt der Spieler den Wert null
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=0..}] ["Sprachen-Sensor.2: "]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=0}] ["",{"text":"Die Sprache konnte leider nicht erkannt werden","color":"red","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=1}] ["",{"text":"Diese Welt wird in deutscher Sprache gespielt","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=2}] ["",{"text":"This world is played in English","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=3}] ["",{"text":"Ce monde se joue en français","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=4}] ["",{"text":"Este mundo se juega en español","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=5}] ["",{"text":"Questo mondo è suonato in italiano","bold":true} ]

# Anschließend wird das Kaninchen getötet und Spieler erhalten das Etikett
kill @e[tag=EtiSprS.2Alle]
tag @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=0..}] add EtiSprS.2Sprache
