# Die drei Koordinaten X, Y und Z werden in jeweils eine Variable gespeichert und dabei wird die Koordinate von einer Kommazahl in eine Ganzzahl umgewandelt.
execute store result score VarKoordS.1X PZKoordS.1Wert run data get entity @s Pos[0]
execute store result score VarKoordS.1Y PZKoordS.1Wert run data get entity @s Pos[1]
execute store result score VarKoordS.1Z PZKoordS.1Wert run data get entity @s Pos[2]

# Die drei Koordinaten werden mit Hilfe der drei Variablen ausgegeben.
title @s actionbar ["",{text:"X == ",color:"gray",bold:true},{score:{name:"VarKoordS.1X",objective:"PZKoordS.1Wert"},color:"red",bold:true},{text:" Y == ",color:"gray",bold:true},{score:{name:"VarKoordS.1Y",objective:"PZKoordS.1Wert"},color:"dark_green",bold:true},{text:" Z == ",color:"gray",bold:true},{score:{name:"VarKoordS.1Z",objective:"PZKoordS.1Wert"},color:"blue",bold:true}]
