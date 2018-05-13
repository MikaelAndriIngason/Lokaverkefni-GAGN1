#1
#select heiti, utgefandiID
#FROM 0106012580_hopverk_gagn1.lag
#where flytjandiID = 2; #Imagine Dragons

#2
#þú sagðir að maður mátti sleppa listalog

#3
#select *
#FROM 0106012580_hopverk_gagn1.lag
#where tegundID = 3; #ég valdi pop í staðin vegna þess að það eru engin rapplög

#4
#select heiti, lengd, utgafudagur
#FROM 0106012580_hopverk_gagn1.lag
#where lengd >= 4.0 #ekkert lag er lengra en 5 mínútur svo ég gerði 4 mínútur
#order by lengd;

#5              
#þú sagðir að maður mátti sleppa listalog

#6
#SELECT nafn, heiti, stofnadur
#FROM 0106012580_hopverk_gagn1.notandalisti
#INNER JOIN 0106012580_hopverk_gagn1.notandi
#ON notandi.notandiID = notandalisti.notandiID
#where notandi.notandiId = 2; #Pétur

#7
#SELECT nafn, heiti, lengd
#FROM 0106012580_hopverk_gagn1.lag
#INNER JOIN 0106012580_hopverk_gagn1.flytjandi
#ON lag.flytjandiID = flytjandi.flytjandiID
#order by lengd desc
#LIMIT 5;

#8
#select tegund.tegundID, tegund.nafn, count(lag.tegundID) as 'Fjöldi laga'
#FROM 0106012580_hopverk_gagn1.lag
#INNER JOIN 0106012580_hopverk_gagn1.tegund
#where tegund.tegundID = lag.tegundID
#group by lag.tegundID
#ORDER by count(lag.tegundID) desc
#limit 3;

#9
#select notandi.nafn, count(notandalisti.notandiID) as 'Fjöldi lista'
#FROM 0106012580_hopverk_gagn1.notandi
#INNER JOIN 0106012580_hopverk_gagn1.notandalisti
#where notandi.notandiID = notandalisti.notandiID
#group by notandalisti.notandiID

#10
#select *
#FROM 0106012580_hopverk_gagn1.lag
#where heiti like 'a%' and heiti like '%s%';

#11
#select lag.heiti, utgefandi.nafn, lag.utgafudagur
#FROM 0106012580_hopverk_gagn1.lag
#INNER JOIN 0106012580_hopverk_gagn1.utgefandi
#ON lag.utgefandiID = utgefandi.utgefandiID
#where lag.utgafudagur <= "2015-00-00"

#12
#select round(AVG(lengd),2) as 'Meðallengd laga'
#FROM 0106012580_hopverk_gagn1.lag

#13
#select flytjandi.nafn, flytjandi.lysing, count(lag.flytjandiID) as 'Fjöldi laga'
#FROM 0106012580_hopverk_gagn1.flytjandi
#INNER JOIN 0106012580_hopverk_gagn1.lag
#on flytjandi.flytjandiID = lag.flytjandiID
#group by lag.flytjandiID; #Allir eru bara með 3 lög

#14
#select flytjandi.nafn, count(lag.flytjandiID) as 'Fjöldi laga'
#FROM 0106012580_hopverk_gagn1.flytjandi
#INNER JOIN 0106012580_hopverk_gagn1.lag
#on flytjandi.flytjandiID = lag.flytjandiID
#group by lag.flytjandiID;

#15 - parar saman nafni flytjanda og nafni laga
#select lag.heiti, flytjandi.nafn
#FROM 0106012580_hopverk_gagn1.flytjandi
#INNER JOIN 0106012580_hopverk_gagn1.lag
#on flytjandi.flytjandiID = lag.flytjandiID

#16 - fjöldi laga undir hverjum útgefanda
#select utgefandi.nafn, count(lag.utgefandiID) as 'Fjöldi laga'
#FROM 0106012580_hopverk_gagn1.utgefandi
#INNER JOIN 0106012580_hopverk_gagn1.lag
#on lag.utgefandiID = utgefandi.utgefandiID
#group by lag.utgefandiID;

#17 - meðallengd laga hjá útgefanda
#select utgefandi.nafn, round(AVG(lag.lengd),2) as 'Meðallengd laga'
#FROM 0106012580_hopverk_gagn1.utgefandi
#INNER JOIN 0106012580_hopverk_gagn1.lag
#on lag.utgefandiID = utgefandi.utgefandiID
#group by lag.utgefandiID;

#18 - stystu 3 lögin
#SELECT nafn, heiti, lengd
#FROM 0106012580_hopverk_gagn1.lag
#INNER JOIN 0106012580_hopverk_gagn1.flytjandi
#ON lag.flytjandiID = flytjandi.flytjandiID
#order by lengd asc
#LIMIT 3;

#19 - Öll lög sem hver útgefandi á
#select utgefandi.nafn, lag.heiti
#FROM 0106012580_hopverk_gagn1.utgefandi
#INNER JOIN 0106012580_hopverk_gagn1.lag
#on lag.utgefandiID = utgefandi.utgefandiID