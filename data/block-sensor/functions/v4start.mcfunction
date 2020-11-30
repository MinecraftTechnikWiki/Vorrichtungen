# Ein Rüstungsständer wird erstellt, auf dem eine Güterlore platz findet.
summon minecraft:armor_stand ~ ~1 ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiBlockS.4Alle"],Passengers:[{id:"minecraft:chest_minecart",NoGravity:true,Tags:["EtiBlockS.4Alle","EtiBlockS.4Sensor"]}]}

# Dem erst gelegenen Spieler wird ein Etikett, zur Identifizierung gegeben. Er bekommt einen Stock, der für das Anzeigen der Blöcken benutzt werden kann.
tag @p[distance=..25] add EtiBlockS.4Spieler
give @p[tag=EtiBlockS.4Spieler] minecraft:stick{EigBlockS.4Alle:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Block-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um den Block unter dir zu anzuzeigen."'] } }
