# Es werden zwei Rüstungsständer erzeugt, wovon der erste einen grünen Kubus erzeugt und der zweite einen grauen.
summon minecraft:armor_stand ~5 ~-0.5 ~ {Small:true,Marker:true,Invisible:true,Tags:["EtiStaOS.4Alle","EtiStaOS.4Sensor","EtiStaOS.4Innen"],Rotation:[0.0f,0.0f]}
summon minecraft:armor_stand ~5 ~-0.5 ~ {Small:true,Marker:true,Invisible:true,Tags:["EtiStaOS.4Alle","EtiStaOS.4Sensor","EtiStaOS.4Aussen"],Rotation:[0.0f,0.0f]}

# Spielern wird in einem Umkreis von 15 Blöcken zwei Rüstungsständer gegeben. Ein grüner und ein grauer.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,Marker:true,Rotation:[0.0f,0.0f],Small:true,Tags:["EtiStaOS.4Alle","EtiStaOS.4Sensor","EtiStaOS.4Innen"],id:"minecraft:armor_stand"},minecraft:lore=['"Platziere den Rüstungsständer"','"um den Sensor zu aktivieren."','"Nur wenn der Spieler sich"','"innerhalb des Kubuses befindet,"','"wird er erkannt."'],minecraft:custom_name='{"text":"Grüner Kubus","color":"green","bold":true}',minecraft:custom_data={EigStaOS.4Alle:true}]

give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={Invisible:true,Marker:true,Rotation:[0.0f,0.0f],Small:true,Tags:["EtiStaOS.4Alle","EtiStaOS.4Sensor","EtiStaOS.4Aussen"],id:"minecraft:armor_stand"},minecraft:lore=['"Platziere den Rüstungsständer"','"um den Sensor zu aktivieren."','"Nur wenn der Spieler sich"','"außerhalb des Kubuses befindet,"','"kann er erkannt werden."'],minecraft:custom_name='{"text":"Grauer Kubus","color":"gray","bold":true}',minecraft:custom_data={EigStaOS.4Alle:true}]
