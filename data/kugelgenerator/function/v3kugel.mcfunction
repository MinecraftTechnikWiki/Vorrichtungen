# Der Radius den die Kugel besitzen soll wird in die dafür vorgesehene Variable gespeichert und in der aufgerufenen Kugel-Radius-Funktion benötigt.
scoreboard players operation VarKugelG.3Radius PZKugelG.3Hor = VarKugelG.3Groesse PZKugelG.3Hor
execute positioned ^ ^ ^1 run function kugelgenerator:v3kugel_radius

# Die Richtung des Rüstungsständer dreht sich bei jedem Aufruf dieser Funktion um ein Grad und wenn sich von 360 bei null angelangt ist. hört sie auf sich selbst aufzurufen.
scoreboard players remove @s PZKugelG.3Hor 1
execute if score @s PZKugelG.3Hor matches 1.. rotated ~1 ~ run function kugelgenerator:v3kugel
