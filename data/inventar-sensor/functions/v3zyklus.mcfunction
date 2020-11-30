# Wenn der Spieler im Inventar Gegenstände verschoben oder gedroppt hat, besitzt er den Fortschritt und daraufhin wird seine Anzahl an belegter Slots ausgelesen und in einen Punktestand gespeichert.
execute as @a[advancements={inventar-sensor:v3inventar_geaendert=true}] store result score @s PZInvS.3Slots run data get entity @s Inventory

# Wenn sein Inventar komplett leer ist, erhält er eine Nachricht genau über diesen Umstand.
tellraw @a[advancements={inventar-sensor:v3inventar_geaendert=true},scores={PZInvS.3Slots=0}] ["Inventar-Sensor.3:\n",{"text":"Inventar leer == ","color":"gray","bold":true},{"text":"wahr","color":"green","bold":true}]

# Falls das Inventar nicht leer ist, wird die Inventar-Funktion durch ihn aufgerufen.
execute as @a[advancements={inventar-sensor:v3inventar_geaendert=true},scores={PZInvS.3Slots=1..}] run function inventar-sensor:v3inventar

#Jeder der den Fortschritt besitzt, bekommt den Fortschritt entfernt.
advancement revoke @a[advancements={inventar-sensor:v3inventar_geaendert=true}] only inventar-sensor:v3inventar_geaendert
