create database QuanLyBanHang;
use QuanLyBanHang;
create table Customers(
cID int auto_increment primary key,
cName varchar(255),
cAge int
);
create table Orders(
oID int auto_increment primary key,
cID int, foreign key(cID) references Customers(cID),
oDate date,
oTotalPrice integer
);
create table OrderDetail(
oID int not null,
pID int not null,
primary key(oID,pID),
foreign key(oID) references Orders(oID),
foreign key(pID) references Product(pID),
odQTY char
);
create table Product(
pID int auto_increment primary key,
pName varchar(255),
pPrice integer
);
