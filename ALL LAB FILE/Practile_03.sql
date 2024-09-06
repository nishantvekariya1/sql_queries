-- Constraints practicle write check after datatype like this check(condition!)
use student_cse;

CREATE TABLE CLIENT_MASTER_1
(
CLIENTNO varchar(6) primary key check(CLIENTNO LIKE "C%"), 
NAME varchar(20) not null, 
ADDRESS1 varchar(30), 
ADDRESS2 varchar(30), 
CITY varchar(15), 
PINCODE integer(8), 
STATE varchar(15), 
BALDUE decimal(10,2));

desc CLIENT_MASTER_1;

CREATE TABLE PRODUCT_MASTER_1 
(
PRODUCT_NO varchar(6) primary key check(PRODUCT_NO like 'P%'), 
PRODUCT_DESCRIPTION varchar(15) not null, 
PROFIT_PERCENT numeric(4,2) not null, 
UNIT_MEASURE varchar(10), 
QTYONHAND int(8), 
RECODERL_VL int(8), 
SELL_PRICE numeric (8,2), 
COST_PRICE numeric (8,2));

desc PRODUCT_MASTER_1;

CREATE TABLE SALESMAN_MASTER_1
(
SALESMANNO varchar(6) primary key check(SALESMANNO LIKE "S%"), 
SALESMANNAME varchar(20) not null, 
ADDRESS1 varchar(30) not null, 
ADDRESS2 varchar(30), 
CITY varchar(20), 
PINCODE integer(8), 
STATE varchar(20), 
SALAMT Real(8,2) not null check(SALAMT != 0), 
TGTTOGET decimal(6,2) not null check(TGTTOGET != 0), 
YTDSALES double(6,2) not null, 
REMARKS varchar(60));

desc SALESMAN_MASTER_1;

insert into CLIENT_MASTER_1 values
('C00001','Ivan bayross',null,null,'Mumbai',400054,'Maharashtra',1500),
('C00002','Mamta muzumdar',null,null,'Madras',780001,'Tamil Nadu',0),
('C00003','Chhaya bankar',null,null,'Mumbai',400057,'Maharashtra',5000),
('C00004','Ashwini joshi',null,null,'Bangalore',560001,'Karnataka',0),
('C00005','Hansel colaco',null,null,'Mumbai',400060,'Maharashtra',2000),
('C00006','Deepak sharma',null,null,'Mangalore',560050,'Karnataka',0);

select * from CLIENT_MASTER_1;

insert into PRODUCT_MASTER_1 values 
('P00001', 'T-Shirt', '5' , 'Piece', '200','50','350','250'),
('P0345', ' Shirt', '6' , 'Piece', '150','50','500','350'),
('P06734', 'Cotton jeans', '5' , 'Piece', '100','20','600','450'),
('P07865', 'Jeans', '5' , 'Piece', '100','20','750','500'),
('P07868', 'Trousers', '2' , 'Piece', '150','50','850','550'),
('P07885', 'Pull-Overs', '2.5' , 'Piece', '80','30','700','450'),
('P07965', 'Denim jeans', '4' , 'Piece', '100','40','350','250'),
('P07975', 'Lycra tops', '5' , 'Piece', '70','30','300','175'),
('P08865', 'skirts', '5' , 'Piece', '75','30','450','300');

select * from PRODUCT_MASTER_1;

insert into SALESMAN_MASTER_1 values
('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good'),
('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good'),
('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good'),
('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good');

select * from SALESMAN_MASTER_1;