# Die Stapel-Variable wird auf null gesetzt und das Inventar des Spielers wird in den Datenspeicher geladen. Ebenfalls wird die Suche der ID als falsch markiert, sodass sie nur dann auf wahr steht, wenn sie später gefunden wird.
scoreboard players set VarInvS.4Stapel PZInvS.4Drop 0
data modify storage inventar-sensor:v4daten "EigInvS.4Inventar" set from entity @s Inventory
data merge storage inventar-sensor:v4daten {EigInvS.4ID:{text:"falsch",color:"red",bold:true} }

# Die Suchen-Funktion wird aufgerufen.
function inventar-sensor:v4suchen

# Falls die Stapel-Werte mit berücksichtigt werden sollen und wenn die vorgebene Stapel-Zahl und die gefundene Stapel-Zahl übereinstimmt, wird entsprechend der Datenspeicher aktualisiert und auch umgekehrt, wenn sie nicht übereinstimmen.
execute if score VarInvS.4DropStapel PZInvS.4Drop matches 2.. if score VarInvS.4DropStapel PZInvS.4Drop = VarInvS.4Stapel PZInvS.4Drop run data merge storage inventar-sensor:v4daten {EigInvS.4Stapel:{text:"wahr",color:"green",bold:true} }
execute if score VarInvS.4DropStapel PZInvS.4Drop matches 2.. unless score VarInvS.4DropStapel PZInvS.4Drop = VarInvS.4Stapel PZInvS.4Drop run data merge storage inventar-sensor:v4daten {EigInvS.4Stapel:{text:"falsch",color:"red",bold:true} }

# Wenn nur nach der ID und nicht nach der Stapel-Anzahl gesucht wird, erhält der Spieler über der Schnellleiste die ID-Suche.
execute if score VarInvS.4DropStapel PZInvS.4Drop matches 1 run title @s actionbar ["",{storage:"inventar-sensor:v4daten",nbt:'"EigInvS.4SucheDrop".id',color:"dark_purple",bold:true},{text:" in Inventar == ",color:"gray",bold:true},{storage:"inventar-sensor:v4daten",nbt:'"EigInvS.4ID"',interpret:true}]

# Wenn auch die Stapel-Zahl beachtet werden soll, wird auch diese über der Schnellleiste mit angegeben.
execute if score VarInvS.4DropStapel PZInvS.4Drop matches 2.. run title @s actionbar ["",{storage:"inventar-sensor:v4daten",nbt:'"EigInvS.4SucheDrop".id',color:"dark_purple",bold:true},{text:" in Inventar == ",color:"gray",bold:true},{storage:"inventar-sensor:v4daten",nbt:'"EigInvS.4ID"',interpret:true},{text:" Stapel(",color:"gray",bold:true},{score:{name:"VarInvS.4DropStapel",objective:"PZInvS.4Drop"},color:"dark_purple",bold:true},{text:") == ",color:"gray",bold:true},{storage:"inventar-sensor:v4daten",nbt:'"EigInvS.4Stapel"',interpret:true}]
