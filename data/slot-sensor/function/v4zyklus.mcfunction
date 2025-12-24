# Nur wenn der Spieler einen Gegenstand in der Schnellleiste ausgewählt hat, bekommt er das Etikett dafür.
tag @a[distance=..25,nbt={SelectedItem:{} }] add EtiSlotS.4Ausgewaehlt

# Wenn der Spieler das Etikett besitzt, wird von ihm aus die Sensor-Funktion geladen.
execute as @a[distance=..25,tag=EtiSlotS.4Ausgewaehlt] run function slot-sensor:v4sensor

# Spieler die etwas ausgewählt haben, bekommen die Anzahl der Slots als Wert in ihren jeweiligen Punktestand. Wenn die Anzahl mindestens bei eins liegt, wird ihnen die Anzahl der belegten Slots als Titel-Nachricht ausgegeben.
execute as @a[distance=..25,tag=!EtiSlotS.4Ausgewaehlt] store result score @s PZSlotS.4Slots run data get entity @s Inventory
execute as @a[distance=..25,tag=!EtiSlotS.4Ausgewaehlt,scores={PZSlotS.4Slots=1..}] run title @s actionbar ["",{text:"Belegte Slots == ",color:"gray",bold:true},{score:{name:"@s",objective:"PZSlotS.4Slots"},color:"dark_purple",bold:true}]

# Falls die Spieler nichts im Inventar haben, wird in der Titel-Nachricht angezeigt, dass das Inventar leer ist.
execute as @a[distance=..25,tag=!EtiSlotS.4Ausgewaehlt,scores={PZSlotS.4Slots=0}] run title @s actionbar ["",{text:"Inventar belegt == ",color:"gray",bold:true},{text:"falsch",color:"red",bold:true}]

# Das Etikett wird wieder entfernt, sofern es vorhanden war.
tag @a[tag=EtiSlotS.4Ausgewaehlt] remove EtiSlotS.4Ausgewaehlt
