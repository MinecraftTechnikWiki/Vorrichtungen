# Von der Position in der Nähe gelegenen Kugel-Zonen, wird die Anzahl der Piglins in den zwei Teams ermittelt.
execute at @n[distance=..5,type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] store result score VarObjZae.3Team1 PZObjZae.3Anz if entity @e[distance=..5,team=TMObjZae.3Team1]
execute at @n[distance=..5,type=minecraft:armor_stand,tag=EtiObjZae.3Kugel] store result score VarObjZae.3Team2 PZObjZae.3Anz if entity @e[distance=..5,team=TMObjZae.3Team2]

# Von der Position in der Nähe gelegenen Kubus-Zonen, wird die Anzahl der Piglins in den zwei Teams ermittelt.
execute positioned ~-5 ~ ~-5 at @n[dx=10,dy=5,dz=10,type=minecraft:armor_stand,tag=EtiObjZae.3Kubus] positioned ~-5 ~ ~-5 store result score VarObjZae.3Team1 PZObjZae.3Anz if entity @e[dx=10,dy=5,dz=10,team=TMObjZae.3Team1]
execute positioned ~-5 ~ ~-5 at @n[dx=10,dy=5,dz=10,type=minecraft:armor_stand,tag=EtiObjZae.3Kubus] positioned ~-5 ~ ~-5 store result score VarObjZae.3Team2 PZObjZae.3Anz if entity @e[dx=10,dy=5,dz=10,team=TMObjZae.3Team2]

# Der Spieler erhält eine Titel-Nachricht über der Schnellleiste, die die Anzahl der Piglins von den zwei Teams anzeigt.
title @s actionbar ["",{text:"team1 == ",color:"gray",bold:true},{score:{name:"VarObjZae.3Team1",objective:"PZObjZae.3Anz"},color:"red",bold:true},{text:", team2 == ",color:"gray",bold:true},{score:{name:"VarObjZae.3Team2",objective:"PZObjZae.3Anz"},color:"blue",bold:true}]
