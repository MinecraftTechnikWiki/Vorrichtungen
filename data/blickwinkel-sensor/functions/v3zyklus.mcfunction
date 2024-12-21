# Von der Position des Rüstungsständers wird im Umkreis von 25 Blöcken getestet ob Spieler (und keine Zuschauer) sich dort aufhalten. Von der Position dieser Spieler wird in Augenhöhe die Kontakt-Funktion aufgerufen.
execute at @e[type=minecraft:armor_stand,tag=EtiBlWS.3Anschauen] as @a[distance=..25,gamemode=!spectator] at @s anchored eyes run function blickwinkel-sensor:v3kontakt

# Falls im Umkreis um den Rüstungsständer Spieler ohne das Etikett für den Blickkontakt herumstehen, erhalten sie die Titel-Nachricht, dass sie keinen Blickkontakt mit dem Rüstungsständer haben.
execute at @e[type=minecraft:armor_stand,tag=EtiBlWS.3Anschauen] run title @a[distance=..25,gamemode=!spectator,tag=!EtiBlWS.3Blickkontakt] actionbar ["",{"text":"[ ","color":"gold"},{"text":"kein Blickkontakt","color":"red","bold":true},{"text":" ]","color":"gold"} ]

# Falls Spieler das Etikett besitzen, wird es wieder entfernt.
tag @a[tag=EtiBlWS.3Blickkontakt] remove EtiBlWS.3Blickkontakt
