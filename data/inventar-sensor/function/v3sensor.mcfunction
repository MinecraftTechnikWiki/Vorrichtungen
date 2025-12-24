# Falls die Zweithand belegt war, bekommt der Spieler dafür ein Etikett. Das für die Zweithand wird wieder entfernt.
tag @s[tag=EtiInvS.3Zweithand] add EtiInvS.3ZweithandWarBelegt
tag @s[tag=EtiInvS.3Zweithand] remove EtiInvS.3Zweithand

# Nur wenn der Spieler etwas in der Zweithand hat, bekommt er das Etikett dafür.
execute if items entity @s weapon.offhand * run tag @s add EtiInvS.3Zweithand

# Je nach dem ob der Spieler vorher was hatte und jetzt nicht oder nichts besaß und jetzt was hat, so bekommt er ein Etikett.
tag @s[tag=EtiInvS.3Zweithand,tag=!EtiInvS.3ZweithandWarBelegt] add EtiInvS.3ZweithandGeaendert
tag @s[tag=!EtiInvS.3Zweithand,tag=EtiInvS.3ZweithandWarBelegt] add EtiInvS.3ZweithandGeaendert

# Wenn sich der Zweithand-Slot geändert hat, bekommt der Spieler eine Nachricht, entsprechend wie der Zustand des Zweithandslots ist.
tellraw @s ["Inventar-Sensor.3:"]
tellraw @s[tag=EtiInvS.3ZweithandGeaendert,tag=EtiInvS.3Zweithand] ["",{text:"Zweithandfeld geändert(Gegenstand) == ",color:"gray",bold:true},{text:"wahr",color:"green",bold:true}]
tellraw @s[tag=EtiInvS.3ZweithandGeaendert,tag=!EtiInvS.3Zweithand] ["",{text:"Zweithandfeld geändert(Gegenstand) == ",color:"gray",bold:true},{text:"falsch",color:"red",bold:true}]

# Die Etiketten werden wieder entfernt.
tag @s[tag=EtiInvS.3ZweithandWarBelegt] remove EtiInvS.3ZweithandWarBelegt
tag @s[tag=EtiInvS.3ZweithandGeaendert] remove EtiInvS.3ZweithandGeaendert

# Die belegten Rüstungsslots werden zwischengespeichert.
scoreboard players operation VarInvS.3Slots PZInvS.3Ruest = @s PZInvS.3Ruest

# Anschließend wird die neue Anzahl der Rüstungsslots ausgelesen.
execute store result score @s PZInvS.3Ruest if items entity @s armor.* *

# Falls die alte und neue Anzahl der Rüstungsslots nicht übereinstimmt, wurde was daran geändert und der Spieler erhält die Nachricht.
execute unless score VarInvS.3Slots PZInvS.3Ruest = @s PZInvS.3Ruest run tellraw @s ["",{text:"Rüstungsfelder geändert(Gegenstand) == ",color:"gray",bold:true},{score:{name:"@s",objective:"PZInvS.3Ruest"},color:"dark_purple",bold:true}]

# Die alte Anzahl der belegten Schnellleistenslots wird zwischen gespeichert.
scoreboard players operation VarInvS.3Slots PZInvS.3Schnell = @s PZInvS.3Schnell

# Die neue Anzahl der Schnellleistenslots wird ermittelt.
execute store result score @s PZInvS.3Schnell if items entity @s hotbar.* *

# Falls die alte und neue Anzahl unterschiedlich ist, wird die Nachricht ausgegeben.
execute unless score VarInvS.3Slots PZInvS.3Schnell = @s PZInvS.3Schnell run tellraw @s ["",{text:"Schnellleiste geändert(Gegenstand) == ",color:"gray",bold:true},{score:{name:"@s",objective:"PZInvS.3Schnell"},color:"dark_purple",bold:true}]

# Die alte Anzahl der Gegenstände im Inventar wird zwischen gespeichert.
scoreboard players operation VarInvS.3Slots PZInvS.3Slots = @s PZInvS.3Slots

# Die neue Anzahl der Gegenstände im Inventar wird ermittelt.
execute store result score @s PZInvS.3Slots if items entity @s inventory.* *

# Falls die alte und neue Anzahl unterschiedlich ist, wird die Nachricht ausgegeben.
execute unless score VarInvS.3Slots PZInvS.3Slots = @s PZInvS.3Slots run tellraw @s ["",{text:"Inventar geändert(Gegenstand) == ",color:"gray",bold:true},{score:{name:"@s",objective:"PZInvS.3Slots"},color:"dark_purple",bold:true}]
