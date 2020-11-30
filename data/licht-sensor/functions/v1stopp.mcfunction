# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZLichS.1Stufe

# Der Stock wird aus dem Inventar aller Spieler entfernt.
clear @a minecraft:stick{EigLichS.1Alle:true}

# Falls der Stock auf den Boden geworfen wurde, wird er entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigLichS.1Alle:true} } }]
