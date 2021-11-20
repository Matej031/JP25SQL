drop database if exists Evidencijaposla;
create database Evidencijaposla character set utf8;
use Evidencijaposla;

create table radnik(
    sifra int not null primary key auto_increment,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    email varchar (50) not null,
    klijent int
);

create table Klijent(
    sifra int not null primary key auto_increment,
    naziv varchar (50) not null,
    radnik int
);

create table period_(
    sifra int not null primary key auto_increment,
    klijent int,
    radnik int,
    datumpocetka datetime,
    datumzavrsetka datetime,
    rok varchar (50) not null
);

alter table radnik add foreign key (klijent) references klijent(sifra);

alter table period_ add foreign key (klijent) references klijent(sifra);
alter table period_ add foreign key (radnik) references radnik(sifra);

insert into radnik(sifra,ime,prezime,email) values
(null,'Matej','Zovak','matejzovak@gmail.com'),
(null,'Bruno','Zovak','brunozovak@gmail.com'),
(null,'Vedran','Burek','vedranburek@gmail.com'),
(null,'Ante','Antunovic','anteantunovic@gmail.com'),
(null,'Juraj','Krizanic','jurajkrizanic@gmail.com');

insert into klijent(sifra,naziv) values
(null,'nike'),
(null,'adidas'),
(null,'puma'),
(null,'reebok'),
(null,'Ufc');

insert into period_(sifra,datumpocetka,datumzavrsetka,rok) values
(null,'2021-01-01','2021-03-31','10'),
(null,'2021-01-01','2021-03-31','10'),
(null,'2021-01-01','2021-03-31','10'),
(null,'2021-01-01','2021-03-31','10'),
(null,'2021-01-01','2021-03-31','10');




