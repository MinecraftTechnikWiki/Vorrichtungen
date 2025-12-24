# Spieler die auf den Auslöser geklickt haben, sorgen dafür, dass die Größen-Variable den Wert vom Spieler übertragen bekommen. Der Wert vpom Spieler hängt von der angeklickten schaltfläche ab. Vorausgesetzt es wird keine Kugel in gleichen Augenblick erzeugt.
execute if entity @s[scores={PZKugelG.2Hor=3..5}] run scoreboard players operation VarKugelG.2Groesse PZKugelG.2Hor = @s PZKugelG.2Hor

# Spieler erhalten eine Chat-Nachricht in der sie die drei Größen der Kugel festlegen können, die sie mit dem Platzieren des Rüstungsständers erzeugen.
tellraw @s ["Kugelgenerator.2:\n",{text:"größe = ",bold:true},{text:"wert_3",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Wert 3"} },click_event:{action:"run_command",command:"/trigger PZKugelG.2Hor set 3"} },"\n",{text:"größe = ",bold:true},{text:"wert_4",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Wert 4"} },click_event:{action:"run_command",command:"/trigger PZKugelG.2Hor set 4"} },"\n",{text:"größe = ",bold:true},{text:"wert_5",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Wert 5"} },click_event:{action:"run_command",command:"/trigger PZKugelG.2Hor set 5"} },"\n",{text:"größe == ",bold:true},{text:"wert_",color:"dark_purple",bold:true},{score:{name:"VarKugelG.2Groesse",objective:"PZKugelG.2Hor"},color:"dark_purple",bold:true}]

# Anschließend erhalten die Spieler wieder die Möglichkeit auf den Auslöser zu klicken und ihr Punktestand wird auf null gesetzt.
scoreboard players enable @s PZKugelG.2Hor
scoreboard players set @s PZKugelG.2Hor 0
