create database sales

select * from sales_data;

select productname, price from sales_data
 
select state, orderid from sales_data;
 
 select * from sales_data where orderqty = 10 and 20
 
 select * from sales_data where orderdate = 11/14/2014
 
  select * from sales_data where state != "benue";
  
 select * from sales_data where brandname = "fabrikam";  
 
  select * from sales_data where state not in ("benue", "enugu");
  
  select * from sales_data where state in ("osun","oyo", "ogun", "ondo");
  
select * from sales_data where state like "o%";

select * from sales_data where state like "%a";

select * from sales_data where state like "o%o";

select * from sales_data where state like "%ia%";

select * from sales_data where brandname like "%o";

select * from sales_data where costofsales like "4%";

select orderid, orderdate, price*orderqty, costofsales, productname, 
brandname, state from sales_data;

select orderid, orderdate, price*orderqty, (price*orderqty)-costofsales, productname, 
brandname, state from sales_data;

select orderid, orderdate, price*orderqty as revenue, (price*orderqty)-costofsales as profit, productname, 
brandname, state from sales_data;
 
create view revised_data as
select orderid, orderdate, price*orderqty as revenue, (price*orderqty)-costofsales as profit, productname, 
brandname, state from sales_data;

select * from revised_data;

create view western_state_orders as 
select orderid, orderdate, price*orderqty as revenue, (price*orderqty)-costofsales as profit, productname, 
brandname, state from sales_data;
where state in ("lagos", "ogun", "oyo", "osun", "ondo", "ekiti");

select * from  western_state_orders

