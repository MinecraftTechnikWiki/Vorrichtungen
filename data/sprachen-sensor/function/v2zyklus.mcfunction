# Spieler die der Welt beitreten, lösen das Spawnen eines Kaninchens aus, welches auf Ebene null entsteht. Diese Spieler erhalten zu Beginn den Wert null.
execute at @a[tag=!EtiSprS.2Sprache] run summon minecraft:rabbit ~ 0 ~ {Invulnerable:true,NoGravity:true,DeathLootTable:"minecraft:empty",Tags:["EtiSprS.2Alle","EtiSprS.2Sensor"]}
scoreboard players set @a[tag=!EtiSprS.2Sprache] PZSprS.2Sprache 0

# Bei Spielern die noch nicht erfasst wurden, wird geprüft ob sich auf Ebene null ein Kaninchen aufhält, falls das so ist, wird die Funktion geladen.
execute as @a[tag=!EtiSprS.2Sprache] at @s positioned ~ 0 ~ if entity @e[distance=..1,type=minecraft:rabbit,tag=EtiSprS.2Sensor] run function sprachen-sensor:v2sensor

# Anschließend wird das Kaninchen getötet und Spieler erhalten das Etikett.
kill @e[type=minecraft:rabbit,tag=EtiSprS.2Sensor]
tag @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=0..}] add EtiSprS.2Sprache
