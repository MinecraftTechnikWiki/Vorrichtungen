# Die Koordinaten des Markierers werden ausgelesen und in eine Variable gespeichert. Hierdurch wird gleichzeitig auch die Neigung und Richtung des Spielers abgedeckt.
execute store result score VarAbwS.1Spieler PZAbwS.1X run data get entity @s Pos[0] 100
execute store result score VarAbwS.1Spieler PZAbwS.1Y run data get entity @s Pos[0] 100
execute store result score VarAbwS.1Spieler PZAbwS.1Z run data get entity @s Pos[0] 100

# Anschließend wird der Markierer wird entfernt.
kill @s
