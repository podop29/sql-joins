-- write your queries here


--1--
select * from owners o left join vehicles v on o.id = v.owner_id;

--2--
select first_name, last_name, count(*) from owners o join vehicles v on o.id = v.owner_id
group by first_name, last_name
order by first_name asc;

--3--
select first_name, last_name, ROUND(avg(price)) as avg_price, count(*) from owners o join vehicles v on o.id = v.owner_id
group by first_name, last_name
HAVING avg(price) > 10000
order by first_name desc;
