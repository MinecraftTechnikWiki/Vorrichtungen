# Wenn der Spieler auf dem Boden steht und den Stock ausgewählt hat, erhaält er ein Etikett.
tag @a[nbt={OnGround:true,SelectedItem:{id:"minecraft:stick",tag:{EigDrSen.4Alle:true} } }] add EtiDrSen.4Erfassen

# Nur wenn der Spieler einen der beiden Stöcke ausgewählt hat, wird die entsprechende Funktion durch ihn geladen.
execute as @a[tag=EtiDrSen.4Erfassen,nbt={SelectedItem:{tag:{EigDrSen.4Block:true} } }] run function drop-sensor:v4block
execute as @a[tag=EtiDrSen.4Erfassen,nbt={SelectedItem:{tag:{EigDrSen.4Kreatur:true} } }] run function drop-sensor:v4objekt

# Das Etikett wird bei allen Spielern die es besitzen wieder entfernt.
tag @a[tag=EtiDrSen.4Erfassen] remove EtiDrSen.4Erfassen
