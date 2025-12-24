# Die Anzahl der Slot vor einem Tick wird zwischengespeichert.
scoreboard players operation VarSlotS.3Slots PZSlotS.3Slot = @s PZSlotS.3Slot

# Damit der Wert der Slots überschrieben wird, wird zuerst geprüft ob der erste Slot existiert, egal ob er existiert oder nicht, der Wert wird überschrieben. Danach bekommt der Spieler den Wert jeweils um eins erhöht, für jeden Slot der belegt ist.
execute store success score @s PZSlotS.3Slot if entity @s[nbt={Inventory:[{Slot:0b}]}]
scoreboard players add @s[nbt={Inventory:[{Slot:1b}]}] PZSlotS.3Slot 1
scoreboard players add @s[nbt={Inventory:[{Slot:2b}]}] PZSlotS.3Slot 1
scoreboard players add @s[nbt={Inventory:[{Slot:3b}]}] PZSlotS.3Slot 1
scoreboard players add @s[nbt={Inventory:[{Slot:4b}]}] PZSlotS.3Slot 1
scoreboard players add @s[nbt={Inventory:[{Slot:5b}]}] PZSlotS.3Slot 1
scoreboard players add @s[nbt={Inventory:[{Slot:6b}]}] PZSlotS.3Slot 1
scoreboard players add @s[nbt={Inventory:[{Slot:7b}]}] PZSlotS.3Slot 1
scoreboard players add @s[nbt={Inventory:[{Slot:8b}]}] PZSlotS.3Slot 1

# Wenn der alte und neue Wert der Slot-Anzahl nicht übereinstimmt, wird eine entsprechende Nachricht ausgegeben.
execute unless score VarSlotS.3Slots PZSlotS.3Slot = @s PZSlotS.3Slot run tellraw @s ["Slot-Sensor.3:\n",{text:"Schnellleiste geändert == ",color:"gray",bold:true},{text:"wahr",color:"green",bold:true},"\n",{text:"Alte Anzahl == ",color:"gray",bold:true},{score:{name:"VarSlotS.3Slots",objective:"PZSlotS.3Slot"},color:"dark_purple",bold:true},"\n",{text:"Aktuelle Anzahl == ",color:"gray",bold:true},{score:{name:"@s",objective:"PZSlotS.3Slot"},color:"dark_purple",bold:true}]
