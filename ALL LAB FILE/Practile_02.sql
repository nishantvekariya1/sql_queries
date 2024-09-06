-- DML(DATA MANIPULATION) query
use student_cse;

select name from CLIENT_MASTER; 

select * from CLIENT_MASTER;

select NAME, CITY, STATE from CLIENT_MASTER; 

select DESCRIPTION from PRODUCT_MASTER; 

select * from CLIENT_MASTER where CITY = 'Mumbai'; 

select SALESMANNAME from SALESMAN_MASTER 
where SALAMT = '3000'; 

-- SET sql_safe_updates=0; turn off safe mode
-- SET sql_safe_updates=1; turn on safe mode
SET sql_safe_updates=0;
update CLIENT_MASTER set CITY = 'Bangalore' 
where CLIENTNO = 'C00005'; 

update CLIENT_MASTER set BALDUE = '1000' 
where CLIENTNO = 'C00001'; 

update PRODUCT_MASTER set COSTPRICE = '950' 
where DESCRIPTION = 'Trousers';

update SALESMAN_MASTER set CITY = 'Pune';

delete from SALESMAN_MASTER 
where SALAMT = '3500'; 

delete from PRODUCT_MASTER 
where QTYONHAND = '100'; 

delete from CLIENT_MASTER 
where STATE = "Tamil Nadu"; 

alter table CLIENT_MASTER add TELEPHONE integer; 

alter table PRODUCT_MASTER modify column SELLPRICE decimal(10,2);

drop table CLIENT_MASTER;

alter table SALESMAN_MASTER rename to SMAN_MAST; 