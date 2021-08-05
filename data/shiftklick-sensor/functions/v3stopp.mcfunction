# Das Etikett zur Auswahl des Stockes und für den Shiftklick, werden wieder entfernt, falls sie noch vorhanden waren.
tag @a[tag=EtiShklS.3Auswahl] remove EtiShklS.3Auswahl
tag @a[tag=EtiShklS.3Auswahl] remove EtiShklS.3Shift

# Der noch eventuell vorhande Fortschritt wird entfernt.
advancement revoke @a[advancements={shiftklick-sensor:v3shift=true}] only shiftklick-sensor:v3shift

# Der Stock wird aus dem Inventar entfernt.
clear @a minecraft:stick{EigShklS.3Alle:true}

# Falls der Stock auf dem Boden geworfen wurde, wird der Drop entfernt.
kill @e[type=minecraft:item,nbt={Item:{tag:{EigShklS.3Alle:true} } }]
