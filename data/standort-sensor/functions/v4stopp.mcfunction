# Die Rüstungsständer im Inventar werden entfernt.
clear @a minecraft:armor_stand[minecraft:custom_data~{EigStaOS.4Alle:true}]

# Die Rüstungsständer als Drop wie auch als Objekt werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigStaOS.4Alle:true}] run kill @s
kill @e[tag=EtiStaOS.4Alle]
