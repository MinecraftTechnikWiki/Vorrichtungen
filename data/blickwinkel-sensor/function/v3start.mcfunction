# Die Titel-Zeiten werden so eingestellt, dass der Titel nach kürzester Zeit wieder verschwindet.
title @a[distance=..25] times 0t 20t 0t

# Ein Rüstungsständer mit einem Beobachter im Kopfslot wird erzeugt.
summon minecraft:armor_stand ~-10 ~ ~ {Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:{text:"Schau auf mich!",bold:true},Tags:["EtiBlWS.3Alle","EtiBlWS.3Anschauen"],equipment:{head:{id:"minecraft:observer",count:1} } }

# Spielern im Umkreis von 15 Blöcken wird ein Rüstungsständer gegeben, mit dem man weitere Blickkontakt-Objekte platzieren kann.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={equipment:{head:{count:1,id:"minecraft:observer"} },CustomName:{text:"Schau auf mich!",bold:true},CustomNameVisible:true,Invisible:true,NoGravity:true,Small:true,Tags:["EtiBlWS.3Alle","EtiBlWS.3Anschauen"],id:"minecraft:armor_stand"},minecraft:custom_data={EigBlWS.3Alle:true}]
