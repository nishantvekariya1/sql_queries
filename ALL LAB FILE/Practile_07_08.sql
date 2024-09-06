use student_cse;

show tables;

create table EMP
(EMPNO int,
ENAME varchar(10),
JOB varchar(10),
MGR int,
HIRDATE date,
SAL int,
COMM int,
DEPTNO int,
foreign key (DEPTNO) references DEPT(DEPTNO));

create table DEPT
(DEPTNO int primary key,
DNAME varchar(20),
LOC varchar(20));

insert into EMP value
(7369,"SMITH","CLERK",7902,'1980-12-17',500,800,20),
(7499,"ALLEN","SALESMAN",7698,'1981-02-20',1600,300,30),
(7521 ,"WARD","SALESMAN",7698 ,'1981-02-22',1250,500,30),
(7566 ,"JONES","MANAGER",7839 ,'1981-04-02',2975 ,20,null ),
(7654 ,"MARTIN","SALESMAN",7698 ,'1981-09-28',1250,1400,30),
(7698 ,"BLAKE","MANAGER",7839 ,'1981-05-01',2850 ,30,null),
(7782 ,"CLARK","MANAGER",7839 ,'1981-06-09',2450,10,null),
(7788 ,"SCOTT","ANALYST",7566 ,'1982-12-09',3000,20,null),
(7839 ,"KING","PRESIDENT",null ,'1981-11-17',5000,10,null),
(7844 ,"TURNER","SALESMAN",7698,'1981-09-08',1500 ,0,30),
(7876,"ADAMS"," CLERK", 7788,'1983-01-12', 1100, 20,null),
(7900 ,"JAMES" ,"CLERK" ,7698 ,'1981-12-03', 950, 30,null),
(7902,"FORD", "ANALYST", 7566 ,'1981-12-03', 3000 ,20,null),
(7934 ,"MILLER", "CLERK" ,7782 ,'1982-01-23',1300 ,10,null);

select * from EMP;

insert into DEPT value
(10 ,"ACCOUNTING", "NEW YORK"),
(20, "RESEARCH", "DALLAS"),
(30, "SALES","CHICAGO"),
(40, "OPERATIONS","BOSTON");

select * from DEPT;

DROP TABLE EMP;
DROP TABLE DEPT;

select ENAME from EMP where SAL > (select SAL from EMP where ENAME="BLAKE"); -- 1

select ENAME from EMP where JOB in (select JOB from EMP where ENAME="ALLEN"); -- 2

select ENAME from EMP where SAL in (select SAL from EMP where ENAME="FORD" or ENAME="SMITH") order by ENAME desc; -- 3

select ENAME from EMP where JOB in (select JOB from EMP where ENAME="MILLER") or SAL > (select SAL from EMP where ENAME="ALLEN"); -- 4

select ENAME,max(SAL) from EMP where DEPTNO in(select DEPTNO from DEPT where DEPTNO=30); -- 5
select ENAME from EMP where SAL = (select max(SAL) as M from EMP where DEPTNO = (select DEPTNO from DEPT where DNAME="SALES"));

select * from EMP where HIREDATE < (select max(HIREDATE) from EMP where MGR in (select EMPNO from EMP where ENAME = 'KING')); -- 6

insert into EMP value
(7777,"XYZ",null,null,'2022-01-01',2850,null,20);

select E.ENAME,E.DEPTNO from EMP E where E.SAL in(select max(SAL) from EMP group by DEPTNO); -- 7
select DEPTNO,ENAME from EMP,(select DEPTNO as D,max(SAL) as M from EMP group by DEPTNO) as E where SAL = M and DEPTNO = D;

select * from EMP where SAL =(select (max(SAL)+min(SAL))/2 from EMP); -- 8

select  *  from  EMP  E  where  HIRDATE  in  (select  HIRDATE  from  EMP  where  E.EMPNO  <> EMPNO); -- 9
select e1.ENAME from EMP e1, EMP e2 where e1.HIRDATE = e2.HIRDATE and e1.EMPNO <> e2.EMPNO;

select * from EMP E where HIRDATE < (select HIRDATE from EMP where EMPNO = E.MGR); -- 10
select E.ename from emp eMgr, emp e where E.mgr = eMgr.empno and E.hirdate<eMgr.hirdate;