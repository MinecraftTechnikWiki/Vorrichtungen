# Ein Punkte-Ziel wird angelegt um die Zeitwerte zu speichern.
scoreboard objectives add PZUhrzeitS.2Wert dummy ["Uhrzeit-Sensor.2: ",{"text":"Zeitwerte","bold":true}]

# Konstante 10 für die Multiplikation.
scoreboard players set KonstUhrzeitS.2ZEHN PZUhrzeitS.2Wert 10

# Datenspeicher wird mit drei Eigenschaften angelegt.
data merge storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Ziffer:"",EigUhrzeitS.2Uhrzeit:"",EigUhrzeitS.2Zeit:[]}

# Den Spielern im Umkreis von 15 Blöcken wird ein Stock gegeben, mit dem sie sich die Uhrzeit anzeigen können.
give @a[distance=..15] minecraft:stick{EigUhrzeitS.2Alle:true,EigUhrzeitS.2Sensor:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Uhrzeit-Sensor","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Uhrzeit"','"anzuzeigen zu lassen."'] } }

# Markierer, der an der Position des Widerhol-Befehlsblock erzeugt wird.
summon minecraft:marker ~ ~ ~-1 {Tags:["EtiUhrzeitS.2Alle","EtiUhrzeitS.2Sensor"]}

# Der Chunk wird aktiv gehalten, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~

# Die Sensor-Funktion wird aufgerufen, welche für das Erhalten der Uhrzeit zuständig ist.
schedule function uhrzeit-sensor:v2sensor 1t replace
