use student_cse;

-- Supplier-(scode,sname,scity,turnover)
-- Part-(pcode,weigh,color,cost,sellingprice)
-- Supplier_Part-(scode,pcode,qty)
-- sum => calculate the total
-- avg => calculate avarage
-- max => give max values
-- min => giv min value
-- count => give the total number of rows


create table Supplier(
	scode varchar(10) primary key,
	sname varchar(20),
	city varchar(20),
	turnover integer(10)
);

create table Part(
	pcode varchar(10) primary key,
    weigh int(5),
    color varchar(10),
    cost varchar(5),
    sellingprice integer
);

create table Supplier_Part(
	scode varchar(10),
    pcode varchar(10),
    qty integer,
    primary key(scode,pcode),
    foreign key (scode) references Supplier(scode),
    foreign key (pcode) references Part(pcode)
);

insert into Supplier values 
(101,'Prem','Ahmedabad',null),
(108,'Dev','Bombay',50),
(104,'Nishant','Delhi',null),
(103,'Maharshi','Chennai',30);
select * from Supplier;

insert into Part values 
(201,40,'Blue',30,100),
(202,20,'Pink',28,100),
(206,30,'Red',20,100),
(204,28,'Yellow',40,100);
select * from Part;

insert into Supplier_Part values 
(101,201,10),
(108,202,20),
(104,206,30),
(103,204,100);
select * from Supplier_Part;

select scode,pcode from Supplier_Part order by scode asc;

select * from Supplier where scity="Bombay" and turnover=50;

select count(scode) from Supplier;

select pcode from Part where weigh>25 and weigh<35;
-- select pcode from Part where weigh between 25 and 35;

select scode from Supplier where turnover is null;

select pcode from Part where cost="20" or cost="30" or cost="40";
-- select pcode from Part where cost in (20,30,40);

select sum(qty) from Supplier_Part where pcode=202;
-- select sum qty from Supplier_Part where pcode=202;

select sname from Supplier where scode=(select scode from Supplier_Part where pcode=202);
-- select sname from Supplier where scode in (select scode from Supplier_Part where pcode=202);

select pcode from Part where cost > (select avg(cost) from Part);

select scode,turnover from Supplier order by turnover desc;

-- 11)Find the total weigh of all parts of black color
select sum(weigh) from Part where color="Blue";

-- 12)Find the profit for all parts whose cost is greater than 50
select sum(sellingprice - cost) from Part where cost>25;
-- select (sellingprice - cost) as profit from Part where cost>25;

-- 13)Find the max sellingprice of all parts with different color except Blue color
select color,max(sellingprice) from Part where not color="Blue" group by color;
-- select color max(sellingprice) as MAX_SP from Part where color<> 'Blue' group by color;
-- which has also pcode 2
-- select color max(sellingprice) as MAX_SP from Part where color<> 'Blue' group by color having count(pcode)>=2;