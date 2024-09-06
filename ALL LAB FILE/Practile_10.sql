use student_cse;

select e1.* from emp e1 inner join emp e2 on e1.sal>e2.sal and e2.ename="BLAKE"; -- 1

select e1.* from emp e1 inner join emp e2 on e1.job=e2.job and e2.ename="ALLEN"; -- 2

select e1.* from emp e1 inner join emp e2 on e1.sal=e2.sal and (e2.ename="FORD" or e2.ename="SMITH") order by e1.ename desc; -- 3

select distinct e1.* from emp e1 inner join (select job,sal from emp where ename in ("MILLER","ALLEN")) e2 on e1.job=e2.job or e1.sal>e2.sal; -- 4

select e.* from emp e inner join dept d on e.deptno=d.deptno where d.dname="SALES" and e.sal=(select max(sal) from emp e2 inner join dept d2 on e2.deptno = d2.deptno where d2.dname="SALES"); -- 6

select e.ename,e.sal,d.deptno from emp e inner join dept d on e.deptno=d.deptno and e.sal=(select max(sal) from emp where deptno=e.deptno) order by d.dname; -- 7

select e1.* from emp e1 inner join (select (max(sal)+min(sal))/2 as avgsal from emp) e2 on e1.sal=e2.avgsal; -- 8

select e1.* from emp e1 inner join (select hirdate from emp group by hirdate having count(empno)>1) e2 on e1.hirdate=e2.hirdate; -- 9

select e1.* from emp e1 inner join emp e2 on e1.hirdate<e2.hirdate and e1.mgr=e2.empno; -- 10