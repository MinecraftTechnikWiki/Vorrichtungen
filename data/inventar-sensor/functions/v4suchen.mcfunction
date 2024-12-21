# Der erste Slot des gespeicherten Inventars im Datenspeicher wird in eine temporäre Eigenschaft gespeichert und im Inventar gelöscht.
data modify storage inventar-sensor:v4daten "EigInvS.4Drop" set from storage inventar-sensor:v4daten "EigInvS.4Inventar"[0]
data remove storage inventar-sensor:v4daten "EigInvS.4Inventar"[0]

# Nun wird die gesuchte ID mit der vorhanden ID verglichen, in dem die gesuchte in die vorhandene gespeichert wird. Wenn das gelingt, war es eine andere ID, wenn es nicht gelingt, ist es die gesuchte ID. Beides wird in einer Variable gespeichert.
execute store success score VarInvS.4NichtGefunden PZInvS.4Drop run data modify storage inventar-sensor:v4daten "EigInvS.4Drop".id set from storage inventar-sensor:v4daten "EigInvS.4SucheDrop".id

# Wenn die ID übereinstimmte, so besitzt die Variable den Wert null und dann wird die entsprechende Eigenschaft des Datenspeichers aktualisiert.
execute if score VarInvS.4NichtGefunden PZInvS.4Drop matches 0 run data merge storage inventar-sensor:v4daten {EigInvS.4ID:'{"text":"wahr","color":"green","bold":true}'}

# Wenn nach der Stapel-Anzahl gesucht wird und die ID übereinstimmt, dann wird die Stapel-Zahl ausgelesen, in eine separate Variable gespeichert und anschließend mit der Gesamt-Anzahl des Stapels aufsummiert.
execute if score VarInvS.4DropStapel PZInvS.4Drop matches 2.. if score VarInvS.4NichtGefunden PZInvS.4Drop matches 0 store result score VarInvS.4SucheStapel PZInvS.4Drop run data get storage inventar-sensor:v4daten "EigInvS.4Drop".Count
execute if score VarInvS.4DropStapel PZInvS.4Drop matches 2.. if score VarInvS.4NichtGefunden PZInvS.4Drop matches 0 run scoreboard players operation VarInvS.4Stapel PZInvS.4Drop += VarInvS.4SucheStapel PZInvS.4Drop

# Falls das kopierte Inventar des Datenspeichers noch nicht leer ist, wird die Suchen-Funktion selbst nochmals aufgerufen.
execute if data storage inventar-sensor:v4daten {EigInvS.4Inventar:[{}]} run function inventar-sensor:v4suchen
