# Bei jeglicher Form der Bewegung erhält der Spieler das gleiche Etikett zur Markierung.
tag @s[scores={PZBewS.1Gehen=1..}] add EtiBewS.1Bewegung
tag @s[scores={PZBewS.1Plansch=1..}] add EtiBewS.1Bewegung
tag @s[scores={PZBewS.1Schwim=1..}] add EtiBewS.1Bewegung
tag @s[scores={PZBewS.1Sprint=1..}] add EtiBewS.1Bewegung
tag @s[scores={PZBewS.1Schl=1..}] add EtiBewS.1Bewegung
tag @s[scores={PZBewS.1Sprung=1..}] add EtiBewS.1Bewegung

# Nachdem keine Bewegung erfasst wurde, wird die Titel-Nachricht über der Schnellleiste geräumt.
title @s[tag=!EtiBewS.1Bewegung] actionbar [""]

# Wenn der Spieler sich bewegt hat, liegt einer der Bewegungswerte auf eins oder höher und das führt zur entsprechenden Nachricht.
title @s[tag=EtiBewS.1Bewegung,scores={PZBewS.1Gehen=1..}] actionbar ["",{text:"Gehen",color:"dark_purple",bold:true} ]
title @s[tag=EtiBewS.1Bewegung,scores={PZBewS.1Plansch=1..}] actionbar ["",{text:"Planschen",color:"dark_purple",bold:true} ]
title @s[tag=EtiBewS.1Bewegung,scores={PZBewS.1Schwim=1..}] actionbar ["",{text:"Schwimmen",color:"dark_purple",bold:true} ]
title @s[tag=EtiBewS.1Bewegung,scores={PZBewS.1Sprint=1..}] actionbar ["",{text:"Sprinten",color:"dark_purple",bold:true} ]
title @s[tag=EtiBewS.1Bewegung,scores={PZBewS.1Schl=1..}] actionbar ["",{text:"Schleichen",color:"dark_purple",bold:true} ]
title @s[tag=EtiBewS.1Bewegung,scores={PZBewS.1Sprung=1..}] actionbar ["",{text:"Springen",color:"dark_purple",bold:true} ]

# Anschließend werden die Etiketten wieder entfernt.
tag @s[tag=EtiBewS.1Bewegung] remove EtiBewS.1Bewegung
