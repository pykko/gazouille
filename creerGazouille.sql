drop database if exists gazouille ;
create database gazouille ;

use gazouille ;


create table Gazouilleur (
	idGazouilleur int not null ,
	nomGazouilleur varchar(30) not null ,
	primary key (idGazouilleur)
) ;


create table Gazouilli (
	idGazouilli int not null ,
	texte varchar(200) not null ,
	dateGazouilli date not null ,
	idGazouilleur int not null ,
	primary key( idGazouilli ) ,
	foreign key(idGazouilleur) references Gazouilleur(idGazouilleur)
) ;


create table Poster (
	abonne int not null ,
	suivi int not null ,
	primary key(abonne,suivi) ,
	foreign key(abonne) references Gazouilleur(idGazouilleur) ,
	foreign key(suivi) references Gazouilleur(idGazouilleur)
) ;
