# Das Punkte-Ziel wird wieder entfernt.
scoreboard objectives remove PZShklS.1Shift

# Das Etikett zur Auswahl des Stockes und für den Shiftklick, werden wieder entfernt, falls sie noch vorhanden waren.
tag @a[tag=EtiShklS.1Auswahl] remove EtiShklS.1Auswahl
tag @a[tag=EtiShklS.1Shift] remove EtiShklS.1Shift

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick{EigShklS.1Alle:true}

# Falls der Stock auf dem Boden geworfen wurde, wird der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigShklS.1Alle:true} } }]
