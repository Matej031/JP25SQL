drop database if exists salon_za_uljepsavanje;
create database salon_za_uljepsavanje;
use salon_za_uljepsavanje;

create table djelatnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    placa decimal(18,2) 
);

create table korisnik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    usluga int,
    broj_mobitela varchar(50),
    datum datetime    
);

create table usluga(
    sifra int not null primary key auto_increment,
    djelatnik int not null,
    naziv varchar(50) not null,
    cijena decimal(18,2)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    oib char(11)
);


alter table korisnik add foreign key (usluga) references usluga(sifra);

alter table usluga add foreign key (djelatnik) references djelatnik(sifra);

alter table djelatnik add foreign key (osoba) references osoba(sifra);
alter table korisnik add foreign key (osoba) references osoba(sifra);

insert into osoba(sifra,ime,prezime) values
(null,'Ivana','Ivic'),
(null,'Ana','Anic'),
(null,'Petra','Petric'),
(null,'Vesna','Muric'),
(null,'Sara','Maras');

insert into djelatnik(sifra,osoba) values
(null,1),
(null,2);

insert into usluga(sifra,djelatnik,naziv) values
(null,1,'Manikura'),
(null,2,'Pedikura');

insert into korisnik(sifra,osoba,usluga) values
(null,5,1),
(null,4,2),
(null,3,1),
(null,2,2),
(null,1,1);