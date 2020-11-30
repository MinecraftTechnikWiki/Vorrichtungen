#Die Titel-Zeiten werden so eingestellt, dass der Titel nach kürzester Zeit wieder verschwindet.
title @a[distance=..25] times 0 20 0

# Ein Rüstungsständer mit einem Beobachter im Kopfslot wird erzeugt.
summon minecraft:armor_stand ~-10 ~ ~ {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Schau auf mich!","bold":true}',Tags:["EtiBlWS.3Alle","EtiBlWS.3Anschauen"],ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b}]}

# Spielern im Umkreis von 15 Blöcken wird ein Rüstungsständer gegeben, mit dem man weitere Blickkontakt-Objekte platzieren kann.
give @a[distance=..15] minecraft:armor_stand{EigBlWS.3Alle:true,EntityTag:{Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Schau auf mich!","bold":true}',Tags:["EtiBlWS.3Alle","EtiBlWS.3Anschauen"],ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b} ] } }
