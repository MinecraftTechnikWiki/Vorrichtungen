# Wenn der Spieler den Minimalwert um eins erhöhen oder ernidrigen will, so wird vorher überprüft ob dabei dieser nicht über den Maximalwert kommt oder kleiner null wird.
execute if entity @s[scores={PZObjZae.2Ausl=1}] if score VarObjZae.2Min PZObjZae.2Ausl < VarObjZae.2Max PZObjZae.2Ausl run scoreboard players add VarObjZae.2Min PZObjZae.2Ausl 1
execute if entity @s[scores={PZObjZae.2Ausl=-1}] if score VarObjZae.2Min PZObjZae.2Ausl matches 1.. run scoreboard players remove VarObjZae.2Min PZObjZae.2Ausl 1

# Wenn der Spieler den Maximalwert um eins erhöhen oder erniedrigen möchte, so wird beim verringern geschaut ob der Wert nicht kleiner als der Minimalwert wird.
execute if entity @s[scores={PZObjZae.2Ausl=2}] run scoreboard players add VarObjZae.2Max PZObjZae.2Ausl 1
execute if entity @s[scores={PZObjZae.2Ausl=-2}] if score VarObjZae.2Max PZObjZae.2Ausl > VarObjZae.2Min PZObjZae.2Ausl run scoreboard players remove VarObjZae.2Max PZObjZae.2Ausl 1

# Der Spieler erhält eine Nachricht, in der die Optionen bestehen, die Minimal- und Maximalwerte einzustellen und man sieht die aktuellen werte dieser.
tellraw @s ["Objekt-Zähler.2: ",{"text":"\nmin = ","bold":true},{"text":"min + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Minimum + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZObjZae.2Ausl set 1"} },{"text":"\nmin = ","bold":true},{"text":"min - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Minimum - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZObjZae.2Ausl set -1"} },{"text":"\nmin == ","bold":true},{"score":{"name":"VarObjZae.2Min","objective":"PZObjZae.2Ausl"},"color":"gold","bold":true},{"text":"\nmax = ","bold":true},{"text":"max + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Maximum + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZObjZae.2Ausl set 2"} },{"text":"\nmax = ","bold":true},{"text":"max - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Maximum - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZObjZae.2Ausl set -2"} },{"text":"\nmax == ","bold":true},{"score":{"name":"VarObjZae.2Max","objective":"PZObjZae.2Ausl"},"color":"dark_red","bold":true}]

# Anschließend wird dem Spieler die Berechtigung eingeräumt erneut den Auslöser zu aktivieren und sein Wert wird auf null gesetzt.
scoreboard players enable @s PZObjZae.2Ausl
scoreboard players set @s PZObjZae.2Ausl 0
