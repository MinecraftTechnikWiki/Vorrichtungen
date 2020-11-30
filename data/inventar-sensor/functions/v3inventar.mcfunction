# Falls die Zweithand belegt war, bekommt der Spieler dafür ein Etikett. Das für die Zweithand wird wieder entfernt.
tag @s[tag=EtiInvS.3Zweithand] add EtiInvS.3ZweithandWarBelegt
tag @s[tag=EtiInvS.3Zweithand] remove EtiInvS.3Zweithand

# Nur wenn der Spieler etwas in der Zweithand hat, bekommt er das Etikett dafür.
tag @s[nbt={Inventory:[{Slot:-106b}]}] add EtiInvS.3Zweithand

# Je nach dem ob der Spieler vorher was hatte und jetzt nicht oder nichts besaß und jetzt was hat, so bekommt er ein Etikett.
tag @s[tag=EtiInvS.3Zweithand,tag=!EtiInvS.3ZweithandWarBelegt] add EtiInvS.3Geaendert
tag @s[tag=!EtiInvS.3Zweithand,tag=EtiInvS.3ZweithandWarBelegt] add EtiInvS.3Geaendert

# Wenn sich der Zweithand-Slot geändert hat, bekommt der Spieler eine Nachricht, entsprechend wie der Zustand des Zweithandslots ist.
tellraw @s ["Inventar-Sensor.3:"]
tellraw @s[tag=EtiInvS.3Geaendert,tag=EtiInvS.3Zweithand] ["",{"text":"Zweithandfeld geändert(Slot) == ","color":"gray","bold":true},{"text":"wahr","color":"green","bold":true}]
tellraw @s[tag=EtiInvS.3Geaendert,tag=!EtiInvS.3Zweithand] ["",{"text":"Zweithandfeld geändert(Slot) == ","color":"gray","bold":true},{"text":"falsch","color":"red","bold":true}]

# Das Etikett wird wieder entfernt.
tag @s[tag=EtiInvS.3ZweithandWarBelegt] remove EtiInvS.3ZweithandWarBelegt

# Die belegten Rüstungsslots werden zwischengespeichert.
scoreboard players operation VarInvS.3Slots PZInvS.3Ruest = @s PZInvS.3Ruest

# Anschließend wird die neue Anzahl der Rüstungsslots ausgelesen.
execute store success score @s PZInvS.3Ruest if entity @s[nbt={Inventory:[{Slot:100b}]}]
scoreboard players add @s[nbt={Inventory:[{Slot:101b}]}] PZInvS.3Ruest 1
scoreboard players add @s[nbt={Inventory:[{Slot:102b}]}] PZInvS.3Ruest 1
scoreboard players add @s[nbt={Inventory:[{Slot:103b}]}] PZInvS.3Ruest 1

# Falls die alte und neue Anzahl der Rüstungsslots nicht übereinstimmt, wurde was daran geändert und der Spieler erhält eine Nachricht.
execute unless score VarInvS.3Slots PZInvS.3Ruest = @s PZInvS.3Ruest run tellraw @s ["",{"text":"Rüstungsfelder geändert(Slots) == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZInvS.3Ruest"},"color":"dark_purple","bold":true}]

# Die alte Anzahl der belegten Schnellleistenslots wird zwischen gespeichert.
scoreboard players operation VarInvS.3Slots PZInvS.3Schnell = @s PZInvS.3Schnell

# Die neue Anzahl der Schnellleistenslots wird ermittelt.
execute store success score @s PZInvS.3Schnell if entity @s[nbt={Inventory:[{Slot:0b}]}]
scoreboard players add @s[nbt={Inventory:[{Slot:1b}]}] PZInvS.3Schnell 1
scoreboard players add @s[nbt={Inventory:[{Slot:2b}]}] PZInvS.3Schnell 1
scoreboard players add @s[nbt={Inventory:[{Slot:3b}]}] PZInvS.3Schnell 1
scoreboard players add @s[nbt={Inventory:[{Slot:4b}]}] PZInvS.3Schnell 1
scoreboard players add @s[nbt={Inventory:[{Slot:5b}]}] PZInvS.3Schnell 1
scoreboard players add @s[nbt={Inventory:[{Slot:6b}]}] PZInvS.3Schnell 1
scoreboard players add @s[nbt={Inventory:[{Slot:7b}]}] PZInvS.3Schnell 1
scoreboard players add @s[nbt={Inventory:[{Slot:8b}]}] PZInvS.3Schnell 1

# Falls die alte und neue Anzahl unterschiedlich ist, wird eine Nachricht ausgegeben.
execute unless score VarInvS.3Slots PZInvS.3Schnell = @s PZInvS.3Schnell run tellraw @s ["",{"text":"Schnellleiste geändert(Slots) == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZInvS.3Schnell"},"color":"dark_purple","bold":true}]

# Falls sich nichts in den drei Inventar-Bereichen geändert hat, wird ein Etikett dafür vergeben.
execute if entity @s[tag=!EtiInvS.3Geaendert] if score VarInvS.3Slots PZInvS.3Ruest = @s PZInvS.3Ruest if score VarInvS.3Slots PZInvS.3Schnell = @s PZInvS.3Schnell run tag @s add EtiInvS.3Inventar

# Alle Slots der anderen Inventar-Bereiche werden abgezogen um die Anzahl der Slots im Inventar ohne Schnellleiste zu ermitteln.
scoreboard players remove @s[tag=EtiInvS.3Inventar,tag=EtiInvS.3Zweithand] PZInvS.3Slots 1
execute if entity @s[tag=EtiInvS.3Inventar] run scoreboard players operation @s PZInvS.3Slots -= @s PZInvS.3Ruest
execute if entity @s[tag=EtiInvS.3Inventar] run scoreboard players operation @s PZInvS.3Slots -= @s PZInvS.3Schnell

# Je nach übrigen Slots wird eine entsprechende Nachricht ausgeben.
tellraw @s[tag=EtiInvS.3Inventar,scores={PZInvS.3Slots=1..}] ["",{"text":"Inventar ohne Schnellleiste geändert(Slots) == ","color":"gray","bold":true},{"score":{"name":"@s","objective":"PZInvS.3Slots"},"color":"dark_purple","bold":true}]
tellraw @a[tag=EtiInvS.3Inventar,scores={PZInvS.3Slots=0}] ["",{"text":"Inventar leer == ","color":"gray","bold":true},{"text":"falsch","color":"red","bold":true}]

# Die Etiketten werden wieder entfernt.
tag @s[tag=EtiInvS.3Inventar] remove EtiInvS.3Inventar
tag @s[tag=EtiInvS.3Geaendert] remove EtiInvS.3Geaendert
