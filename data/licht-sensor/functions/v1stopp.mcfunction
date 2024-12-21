# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZLichS.1Stufe

# Das Etikett wird entfernt, falls es noch vorhanden ist.
tag @a[tag=EtiLichS.1Auswahl] remove EtiLichS.1Auswahl

# Der Stock wird aus dem Inventar aller Spieler entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigLichS.1Alle:true}]

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigLichS.1Alle:true}] run kill @s
