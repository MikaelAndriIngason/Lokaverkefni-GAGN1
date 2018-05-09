#CREATE TABLE 0106012580_hopverk_gagn1.flytjandi
#(
#    flytjandiID int primary key auto_increment,
#    nafn varchar(75) not null,
#    stofndagur varchar(10),
#    lokadagur varchar(10),
#    lysing text    
#);

#CREATE TABLE 0106012580_hopverk_gagn1.lag
#(
#    lagID int primary key auto_increment,
#    heiti varchar(75),
#    lengd decimal(5,2),
#    texti text,
#    utgafudagur date,
#    tegundID int,
#    utgefandiID int,
#    flytjandiID int,
#    
#    constraint lag_tegund_fk foreign key(tegundID) references tegund(tegundID),
#    constraint lag_utgefandi_fk foreign key(utgefandiID) references utgefandi(utgefandiID),
#    constraint lag_flytjandi_fk foreign key(flytjandiID) references flytjandi(flytjandiID)
#);

#CREATE TABLE 0106012580_hopverk_gagn1.tegund
#(
#    tegundID int primary key auto_increment,
#    nafn varchar(75)
#);

#CREATE TABLE 0106012580_hopverk_gagn1.utgefandi
#(
#    utgefandiID int primary key auto_increment,
#    nafn varchar(75),
#    stadsetning varchar(125),
#    email varchar(125)
#);

#CREATE TABLE 0106012580_hopverk_gagn1.notandi
#(
#    notandiID int primary key auto_increment,
#    nafn varchar(75),
#    faedingardagur date,
#    heimilisfang varchar(65),
#    netfang varchar(125)
#);

#CREATE TABLE 0106012580_hopverk_gagn1.notandalisti
#(
#    listiID int primary key auto_increment,
#    heiti varchar(75),
#    stofnadur date,
#    notandiID int,
#    
#    constraint notandalisti_notandi_fk foreign key(notandiID) references notandi(notandiID)
#);

#CREATE TABLE 0106012580_hopverk_gagn1.listalog
#(
#    listaLagID int primary key auto_increment,
#    listiID int not null,
#    lagID int not null,
#    rod int,
#    
#    constraint listalog_listi_fk foreign key(listiID) references notandalisti(notandiID),
#    constraint listalog_lag_fk foreign key(lagID) references lag(lagID)
#);


