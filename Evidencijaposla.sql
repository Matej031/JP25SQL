drop database if exists Evidencijaposla;
create database Evidencijaposla character set utf8;
use Evidencijaposla;

create table radnici(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    email varchar (50) not null
);

create table partneri(
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    email varchar (50) not null,
    rokovi int,
    radnici int
);

create table rokovi(
    sifra int not null primary key auto_increment,
    datum_primitka datetime,
    datum_zavrsetka datetime,
    partneri int
);

alter table partneri add foreign key (rokovi) references rokovi(sifra);
alter table partneri add foreign key (radnici) references radnici(sifra);

alter table rokovi add foreign key (partneri) references partneri(sifra);

insert into radnici(sifra,ime,prezime,email)
values
(null,'Matej','Zovak','matejzovak@gmail.com'),
(null,'Bruno','Zovak','brunozovak@gmail.com'),
(null,'Vedran','Burek','vedranburek@gmail.com'),
(null,'Ante','Antunović','anteantunovic@gmail.com'),
(null,'Juraj','Križanić','jurajkrizanic@gmail.com');

insert into partneri(sifra,naziv,email)
values
(null,'nike','nike@gmail.com'),
(null,'adidas','adidas@gmail.com'),
(null,'puma','puma@gmail.com'),
(null,'reebok','reebok@gmail.com'),
(null,'Ufc','Ufc@gmail.com');

insert into rokovi(sifra,datum_primitka,datum_zavrsetka)
values
(null,'2021-01-01','2021-03-31'),
(null,'2021-01-01','2021-03-31'),
(null,'2021-01-01','2021-03-31'),
(null,'2021-01-01','2021-03-31'),
(null,'2021-01-01','2021-03-31');