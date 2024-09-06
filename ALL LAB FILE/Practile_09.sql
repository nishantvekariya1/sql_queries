use student_cse;

select * from EMP;

select DEPTNO from DEPT where DEPTNO NOT IN (select distinct(DEPTNO) from EMP); -- 1
select deptno from dept where deptno not in (select deptno from emp group by deptno);

select deptno,job,count(*) as DDD, avg(sal) as SA from emp group by deptno,job; -- 2
select deptno,job,count(*) as "No. of employees", avg(sal) from emp_table group by deptno,job;

select max(avg(sal)) as MA ,job from emp where job != "PRESIDENT" group by job; -- 3
select job, avg(sal) as "max average salary" from emp_table where job!="President" group by job;

select dname, deptno, loc from dept where deptno in (select deptno from emp group by deptno having count(*)>1); -- 4
select * from dept where deptno in (select deptno from emp group by deptno having count(*)>=2); 

select e.deptno, d.dname, count(e.ename) as "No. of employees"from emp as e, dept as d where d.deptno = e.deptno group by e.deptno having count(e.ename)>3; -- 5

select deptno, ename, sal from emp where sal in (select max(sal) from emp group by deptno); -- 6

select deptno, avg(sal) from emp group by deptno having avg(sal)<(select avg(sal) from emp); -- 7
