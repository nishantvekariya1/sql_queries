-- DDL(DATA DEFINATION) query
create database student_cse;
use student_cse;

CREATE TABLE CLIENT_MASTER
(CLIENTNO varchar(6), 
NAME varchar(20), 
ADDRESS1 varchar(30), 
ADDRESS2 varchar(30), 
CITY varchar(15), 
PINCODE integer, 
STATE varchar(15), 
BALDUE decimal(10,2));

DESC CLIENT_MASTER;

CREATE TABLE PRODUCT_MASTER
(PRODUCTTNO varchar(6), 
DESCRIPTION varchar(15), 
PROFITPERCENT decimal(4,2), 
UNITMEASURE varchar(10), 
QTYONHAND integer, 
REORDERVL integer, 
SELLPRICE decimal(8,2), 
COSTPRICE decimal(8,2));

DESC PRODUCT_MASTER;

CREATE TABLE SALESMAN_MASTER
(SALESMANNO varchar(6), 
SALESMANNAME varchar(20), 
ADDRESS1 varchar(30), 
ADDRESS2 varchar(30), 
CITY varchar(20), 
PINCODE integer, 
STATE varchar(20), 
SALAMT Real, 
TGTTOGET decimal, 
YTDSALES double(6,2), 
REMARKS varchar(60));

DESC SALESMAN_MASTER;

insert into CLIENT_MASTER values
('C00001','Ivan bayross',null,null,'Mumbai',400054,'Maharashtra',1500),
('C00002','Mamta muzumdar',null,null,'Madras',780001,'Tamil Nadu',0),
('C00003','Chhaya bankar',null,null,'Mumbai',400057,'Maharashtra',5000),
('C00004','Ashwini joshi',null,null,'Bangalore',560001,'Karnataka',0),
('C00005','Hansel colaco',null,null,'Mumbai',400060,'Maharashtra',2000),
('C00006','Deepak sharma',null,null,'Mangalore',560050,'Karnataka',0); 

select * from CLIENT_MASTER; 

insert into PRODUCT_MASTER values 
('P00001','T-Shirt',5,'Piece',200,50,350,250),
('P0345','Shirt',6,'Piece',150,50,500,350),
('P06734','Cotton jeans',5,'Piece',100,20,600,450),
('P07865','Jeans',5,'Piece',100,20,750,500),
('P07868','Trousers',2,'Piece',150,50,850,550), 
('P07885','Pull Overs',2.5,'Piece',80,30,700,450), 
('P07965','Denim jeans',4,'Piece',100,40,350,250),
('P07975','Lyca tops',5,'Piece',70,30,300,175),
('P08865','Skirts',5,'Piece',75,30,450,300); 

select * from PRODUCT_MASTER; 

insert into SALESMAN_MASTER values
('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good'),
('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good'),
('S00003','Raj','P- 7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good'),
('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good'); 

select * from SALESMAN_MASTER; 
