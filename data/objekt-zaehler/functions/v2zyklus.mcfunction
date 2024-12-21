# Wenn Spieler den Stock ausgewählt haben, erhalten sie ein Etikett dafür.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigObjZae.2Sensor:true}] run tag @s add EtiObjZae.2Ausgewaehlt

# Nur wenn man das Etikett gerade ausgewählt hat, wird einem der Auslöser-Wert auf -99 gesetzt, damit die Funktion aufgerufen wird.
scoreboard players set @a[tag=EtiObjZae.2Ausgewaehlt,tag=!EtiObjZae.2Auswahl] PZObjZae.2Ausl -99

# Wenn man den Stock gerade ausgewählt hat, erhält man ein weiteres Etikett, wenn man ihn nicht mehr ausgewählt hat, wird einem das Etikett wieder entfernt.
tag @a[tag=EtiObjZae.2Ausgewaehlt,tag=!EtiObjZae.2Auswahl] add EtiObjZae.2Auswahl
tag @a[tag=!EtiObjZae.2Ausgewaehlt,tag=EtiObjZae.2Auswahl] remove EtiObjZae.2Auswahl

# Wenn man den Stock ausgewählt hat und nicht den Wert null besitzt, wird die Auslöser-Funktion geladen.
execute as @a[tag=EtiObjZae.2Ausgewaehlt] unless entity @s[scores={PZObjZae.2Ausl=0}] run function objekt-zaehler:v2ausloeser

# Wenn man den Stock ausgewählt hat, wird die Anzahl der Piglins die man erzeugt hat, ermittelt.
execute if entity @p[tag=EtiObjZae.2Ausgewaehlt] store result score VarObjZae.2Anzahl PZObjZae.2Ausl if entity @e[type=minecraft:piglin,tag=EtiObjZae.2Objekt]

# Wenn die maximale Anzahl nicht bei null liegt, wird diese als Obergrenze für die Piglins verwendet.
execute unless score VarObjZae.2Max PZObjZae.2Ausl matches 0 run title @a[tag=EtiObjZae.2Ausgewaehlt] actionbar ["",{"text":"min(","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Min","objective":"PZObjZae.2Ausl"},"color":"gold","bold":true},{"text":") <= ","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Anzahl","objective":"PZObjZae.2Ausl"},"color":"dark_purple","bold":true},{"text":" <= max(","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Max","objective":"PZObjZae.2Ausl"},"color":"dark_red","bold":true},{"text":")","color":"gray","bold":true}]

# Wenn die maximale Anzahl bei null liegt, wird keine Obergrenze für die gezählten Piglins angenommen.
execute if score VarObjZae.2Max PZObjZae.2Ausl matches 0 run title @a[tag=EtiObjZae.2Ausgewaehlt] actionbar ["",{"text":"min(","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Min","objective":"PZObjZae.2Ausl"},"color":"gold","bold":true},{"text":") <= ","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Anzahl","objective":"PZObjZae.2Ausl"},"color":"dark_purple","bold":true},{"text":" <= max(","color":"gray","bold":true},{"text":"∞","color":"dark_red","bold":true},{"text":")","color":"gray","bold":true}]

# Wenn die Anzahl der Piglins größer ist, als der Maximalwert, so wird eine Nachricht ausgegeben.
execute unless score VarObjZae.2Max PZObjZae.2Ausl matches 0 if score VarObjZae.2Anzahl PZObjZae.2Ausl > VarObjZae.2Max PZObjZae.2Ausl run tellraw @a[tag=EtiObjZae.2Ausgewaehlt,tag=!EtiObjZae.2Grenze] ["Objekt-Zähler.2:\n",{"text":"(anzahl <= max) == ","color":"gray","bold":true},{"text":"falsch","color":"red","bold":true} ]

# Spieler erhalten ein Etikett, wenn die Obergrenze überschritten wird und es wird erst wieder entfernt, wenn die Obergrenze unterschritten wird. Das Etikett sorgt dafür, dass die Nachricht nur einmal angezeigt wird, auch wenn die Obergrenze über mherere Ticks überschritten wird.
execute unless score VarObjZae.2Max PZObjZae.2Ausl matches 0 if score VarObjZae.2Anzahl PZObjZae.2Ausl > VarObjZae.2Max PZObjZae.2Ausl run tag @a[tag=EtiObjZae.2Ausgewaehlt,tag=!EtiObjZae.2Grenze] add EtiObjZae.2Grenze
execute unless score VarObjZae.2Max PZObjZae.2Ausl matches 0 if score VarObjZae.2Anzahl PZObjZae.2Ausl <= VarObjZae.2Max PZObjZae.2Ausl run tag @a[tag=EtiObjZae.2Ausgewaehlt,tag=EtiObjZae.2Grenze] remove EtiObjZae.2Grenze

# Wenn die Obergrenze überschritten wird, wird jeden Tick ein Piglin entfernt, solange bis die Obergrenze nicht mehr überschritten wird.
execute unless score VarObjZae.2Max PZObjZae.2Ausl matches 0 if score VarObjZae.2Anzahl PZObjZae.2Ausl > VarObjZae.2Max PZObjZae.2Ausl at @p[tag=EtiObjZae.2Ausgewaehlt] run kill @e[type=minecraft:piglin,tag=EtiObjZae.2Objekt,sort=nearest,limit=1]

# Wenn die Anzahl der Piglins kleiner ist, als die eingestellte Mindest-Anzahl, so wird jeden Tick an einem zufälligen Spieler ein neuer Piglin erzeugt.
execute if score VarObjZae.2Anzahl PZObjZae.2Ausl < VarObjZae.2Min PZObjZae.2Ausl run tellraw @a[tag=EtiObjZae.2Ausgewaehlt] ["Objekt-Zähler.2:\n",{"text":"(anzahl < min) == ","color":"gray","bold":true},{"text":"wahr","color":"green","bold":true} ]
execute if score VarObjZae.2Anzahl PZObjZae.2Ausl < VarObjZae.2Min PZObjZae.2Ausl at @r[tag=EtiObjZae.2Ausgewaehlt] run summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:true,Tags:["EtiObjZae.2Alle","EtiObjZae.2Objekt"],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",count:1} ] }

# Damit die Spieler nur dann das Etikett besitzen, wenn sie den Stock ausgewählt haben, wird ihnen das Etikett entfernt.
tag @a[tag=EtiObjZae.2Ausgewaehlt] remove EtiObjZae.2Ausgewaehlt
