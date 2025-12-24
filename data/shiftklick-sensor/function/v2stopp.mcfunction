# Das Etikett zur Auswahl des Stockes und für den Shiftklick, werden wieder entfernt, falls sie noch vorhanden waren.
tag @a[tag=EtiShklS.2Auswahl] remove EtiShklS.2Auswahl
tag @a[tag=EtiShklS.2Shift] remove EtiShklS.2Shift

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick[minecraft:custom_data~{EigShklS.2Alle:true}]

# Falls der Stock auf dem Boden geworfen wurde, wird der Drop entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigShklS.2Alle:true}] run kill @s
