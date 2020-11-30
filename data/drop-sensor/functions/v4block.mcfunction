# Zuerst wird die Güterlore geleert, bevor sie die Ausbeute des Blockes unterm Spieler erhält.
data remove entity @e[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor,sort=nearest,limit=1] Items
execute at @s run loot replace entity @e[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor] container.0 mine ~ ~-0.5 ~

# Falls die Güterlore Gegenstände beinhaltet, so kann der Block grundsätzlich droppen und dann erhält die Güterlore dafür ein Etikett.
tag @e[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor,nbt={Items:[{}]}] add EtiDrSen.4Droppt

# Wenn die Güterlore das Etikett besitzt erhält der Spieler eine positive Titel-Nachricht, ansonsten eine negative.
execute if entity @e[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor,tag=EtiDrSen.4Droppt] run title @s actionbar ["",{"text":"Block kann droppen == ","color":"gray","bold":true},{"text":"wahr","color":"green","bold":true}]
execute if entity @e[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor,tag=!EtiDrSen.4Droppt] run title @s actionbar ["",{"text":"Block kann droppen == ","color":"gray","bold":true},{"text":"falsch","color":"red","bold":true}]

# Das Etikett wird danach wieder entfernt.
tag @e[type=minecraft:chest_minecart,tag=EtiDrSen.4Sensor,tag=EtiDrSen.4Droppt] remove EtiDrSen.4Droppt
