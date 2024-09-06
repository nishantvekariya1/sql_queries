use student_cse;

CREATE TABLE AUTHOR
( 
AUTHOR_ID varchar(5) primary key,
LASTNAME varchar(15) NOT NULL,
FIRSTNAME varchar(15) NOT NULL,
EMAIL varchar(40),
CITY varchar(15),
COUNTRY varchar(15));

desc AUTHOR;

CREATE TABLE BOOK
(BOOK_ID varchar(5) primary key check(BOOK_ID like "B%"),
BOOK_TITLE varchar (255) NOT NULL,
COPIES int check(COPIES>2));

desc BOOK;

CREATE TABLE  AUTHOR_LIST
(AUTHOR_ID varchar(5),
BOOK_ID varchar(5),
ROLE varchar(15),
primary key(AUTHOR_ID,BOOK_ID),
foreign key (AUTHOR_ID) references AUTHOR(AUTHOR_ID)
);

desc AUTHOR_LIST;

insert into AUTHOR values
("101","Vekariya","Nishant","nishant654@gmail.com","Amreli","India"),
("102","Nayak","Dev","devnayak87@gmail.com","Gandhinagar","India"),
("103","Barot","Maharshi","barot23@gmail.com","Sydeny","Australia"),
("104","Joshi","Rohit","rohit89@gmail.com","Tanzaniya","Aafrica"),
("105","Deep","Poja","deep786@gmail.com","London","England");

select * from AUTHOR;

insert into BOOK values
("B01","Rich dad poor dad",5),
("B02","Galvin",4),
("B03","Think and grow rich",6),
("B04","Marvel",8),
("B05","The Growman",10);

select * from BOOK;

alter table AUTHOR_LIST
add PUBLISHER varchar(30);

desc AUTHOR_LIST;