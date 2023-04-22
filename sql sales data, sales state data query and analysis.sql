create database sales

select * from sales_data;
 
select productname, price from sales_data
 
select state, orderid from sales_data;
 
 select * from sales_data where orderqty = 10 and 20
 
 select * from sales_data where state = "benue";
 
  select * from sales_data where state != "benue";
  
 select * from sales_data where brandname = "fabrikam";  
 
  select * from sales_data where state not in ("benue", "enugu");
  
  select * from sales_data where state in ("osun","oyo", "ogun", "ondo");
  
select * from sales_data where state like "o%";

select * from sales_data where state like "%a";

select * from sales_data where state like "o%o";

select * from sales_data where state like "%ia%";

select * from sales_data where brandname like "%o";

select * from sales_data where productname like "%ae%";






 