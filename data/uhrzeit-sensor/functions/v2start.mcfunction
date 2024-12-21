# Ein Punkte-Ziel wird angelegt um die Zeitwerte zu speichern.
scoreboard objectives add PZUhrzeitS.2Wert dummy ["Uhrzeit-Sensor.2: ",{"text":"Zeitwerte","bold":true}]

# Konstante 10 für die Multiplikation.
scoreboard players set KonstUhrzeitS.2ZEHN PZUhrzeitS.2Wert 10

# Datenspeicher wird mit drei Eigenschaften angelegt.
data merge storage uhrzeit-sensor:v2daten {EigUhrzeitS.2Uhrzeit:"",EigUhrzeitS.2Zeit:["00","00","00"]}

# Den Spielern im Umkreis von 15 Blöcken wird ein Stock gegeben, mit dem sie sich die Uhrzeit anzeigen können.
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um die Uhrzeit"','"anzuzeigen zu lassen."'],minecraft:custom_name='{"text":"Uhrzeit-Sensor","color":"dark_purple","bold":true}',minecraft:custom_data={EigUhrzeitS.2Alle:true,EigUhrzeitS.2Sensor:true},minecraft:enchantment_glint_override=true]

# Markierer, der an der Position des Wiederhol-Befehlsblock erzeugt wird.
summon minecraft:marker ~ ~ ~-1 {Tags:["EtiUhrzeitS.2Alle","EtiUhrzeitS.2Sensor"]}

# Der Chunk wird aktiv gehalten, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~

# Die Sensor-Funktion wird aufgerufen, welche für das Erhalten der Uhrzeit zuständig ist.
schedule function uhrzeit-sensor:v2sensor 1t replace
