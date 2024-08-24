
-- DQL COMMAND--  
select * from worker;

-- WHERE CLAUSE -- 
select * from worker where salary>100000;

-- Between Clause 
select * from worker where salary between 80000 and 300000; 

-- In Clause 
select * from worker where department in ('Hr','Admin'); 

-- NOT in Clause 
select * from worker where department not in ('Hr','Admin');  

-- PATTERN Searching /Wildcard 

-- % takes more than one character 
select * from worker where first_name like 'v%'; 

--  _ only takes one character
select * from worker where first_name like '_i%'; 

-- sorting using order by 
select * from worker order by salary;

-- for desc 
select * from worker order by salary desc; 

-- distinct
select distinct department from worker ;

-- Group By 
select department ,count(department) from worker group by department; 

-- avg salary 
select department ,avg(salary) from worker group by department;

-- min salart 
select department , min(salary) from worker group by department;

-- max salary 
select department , max(salary) from worker group by department;

-- Having  = to find a specific column in group by we can use having keyword
select department , count(department) from worker group by department having count(department) >1;