# Wenn nicht gerade eine Kugel generiert wird, kann der Spieler die Kugelgröße nach belieben größer oder keliner einstellen.
execute if entity @s[scores={PZKugelG.3Hor=1}] if score VarKugelG.3Groesse PZKugelG.3Hor matches ..23 run scoreboard players add VarKugelG.3Groesse PZKugelG.3Hor 1
execute if entity @s[scores={PZKugelG.3Hor=2}] if score VarKugelG.3Groesse PZKugelG.3Hor matches 2.. run scoreboard players remove VarKugelG.3Groesse PZKugelG.3Hor 1

# Ebenfalls darf nicht gerade eine Kugel generiert werden, wenn man sie auf hohl oder gefüllt einstellen möchte.
execute if entity @s[scores={PZKugelG.3Hor=3}] run data merge entity @e[type=minecraft:marker,tag=EtiKugelG.3Hohl,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
execute if entity @s[scores={PZKugelG.3Hor=4}] run data merge entity @e[type=minecraft:marker,tag=EtiKugelG.3Hohl,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

# Der Spieler bekommt eine Chat-Nachricht, dort kann er die Kugel-Größe sowie die Hohlheit einstellen.
tellraw @s ["Kugelgenerator.3:\n",{"text":"größe (","bold":true},{"text":"=größe + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für größe + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 1"} },{"text":",","bold":true},{"text":"=größe - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für größe - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 2"} },{"text":") == ","bold":true},{"score":{"name":"VarKugelG.3Groesse","objective":"PZKugelG.3Hor"},"color":"dark_purple","bold":true},"\n",{"text":"hohl (","bold":true},{"text":"=wahr","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für innen hohl = wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 3"} },{"text":",","bold":true},{"text":"=falsch","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für hohl = falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZKugelG.3Hor set 4"} },{"text":") == ","bold":true},{"entity":"@e[type=minecraft:marker,tag=EtiKugelG.3Hohl,sort=nearest,limit=1]","nbt":"CustomName","interpret":true} ]

# Nach dem Einstellen wird der Spieler erneut für das Klicken des Auslösers berechtigt und er erhält den Wert null.
scoreboard players enable @s PZKugelG.3Hor
scoreboard players set @s PZKugelG.3Hor 0
