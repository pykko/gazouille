drop database if exists gazouille ;
create database gazouille ;

use gazouille ;


create table Gazouilleur (
	idGazouilleur int not null ,
	nomGazouilleur varchar(30) not null ,
	primary key (idGazouilleur)
) ;


create table Gazouillis (
	idGazouillis int not null ,
	texte varchar(200) not null ,
	dateGazouillis date not null ,
	idGazouilleur int not null ,
	primary key( idGazouillis ) ,
	foreign key(idGazouilleur) references Gazouilleur(idGazouilleur)
) ;


create table Suivre (
	abonne int not null ,
	suivi int not null ,
	primary key(abonne,suivi) ,
	foreign key(abonne) references Gazouilleur(idGazouilleur) ,
	foreign key(suivi) references Gazouilleur(idGazouilleur)
) ;
