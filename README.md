how databases;


select * from sales;

select * from sales_state;

select * from sales_product;

select * from sales_product_cat;

select a.*, b.Productkey
from sales a
left join sales_product b
on a.Productkey = b.Productkey;

select a.*, b.ProductSubCategoryKey
from sales a
left join sales_product_cat b
on a.ProductSubCategoryKey = b.ProductSubCategoryKey;

select a.*, b.State, c.BrandName
from sales a
left join sales_state b
on a.stateid = b.StateID
left join sales_product c
on a.ProductKey = c.ProductKey;

select a.*, b.PromotionKey
from sales a
left join sales_Promotion b
on a.PromotionKey = b.PromotionKey;

select a.*, b.ProductKey
from sales a
left join sales_Product b
on a.BrandName = b.BrandName;

select a.*, b.State, c.BrandName, d.ProductSubCategoryKey
from sales a
left join sales_state b
on a.stateid = b.StateID
left join sales_product c
on a.ProductKey = c.ProductKey
left join sales_Product_cat d
on a.ProductSubCategoryKey = d.ProductSubCategoryKey;

select a.*, b.OrderQty
from sales a
left join sales_state b
on a.OrderQty = b.OrderQty;


select sales_product_cat.ProductCategory,
count(distinct sales.ProductSubCategoryKey) as no_of_orders
from sales
left join sales_product_cat
on sales.ProductSubCategoryKey = sales_product_cat
Group by sales_state.state
order by no_of_orders desc;

select sales_product.BrandName,
count(distinct sales.ProductKey) as no_of_Product
from sales
left join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by  sales_product.BrandName
order by no_of_Product desc;


select sales_product.BrandName,
count(distinct sales.ProductKey) as no_of_Product
from sales
inner join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by  sales_product.BrandName
order by no_of_Product desc;

select sales_product.BrandName,
count(distinct sales.ProductKey) as no_of_Product
from sales
right join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by  sales_product.BrandName
order by no_of_Product desc;

select sales_product.BrandName,
count(distinct sales.ProductKey) as no_of_Product
from sales
right join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by  sales_product.BrandName
order by no_of_Product desc;

select sales_state.state,
count(distinct sales.orderid) as no_of_orders
from sales
left join sales_state 
on sales.stateid = sales_state.stateid
Group by sales_state.state
order by no_of_orders desc;

select sales_state.state,
count(distinct sales.orderid) as no_of_orders
from sales
left join sales_state 
on sales.stateid = sales_state.stateid
Group by sales_state.state
order by no_of_orders desc;

select trim(sales_product.BrandName) as BrandName,
count(distinct sales.orderid) as no_of_orders
from sales
left join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by trim(sales_product.BrandName)
order by no_of_orders desc;

select trim(sales_product.BrandName) as BrandName,
count(distinct sales.orderid) as no_of_orders
from sales
inner join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by trim(sales_product.BrandName)
order by no_of_orders desc;

select * from sales
inner join sales_state
on sales.StateID = sales_state.StateID

select * from sales
right join sales_state
on sales.StateID = sales_state.StateID

select * from sales
left join sales_state
on sales.StateID = sales_state.StateID

select * from sales
full outer join sales_state
on sales.StateID = sales_state.StateID;

select sales_product.BrandName, sales.orderid 
from sales
left join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by sales_product.BrandName;


select trim(sales_product.BrandName) as BrandName,
count(distinct sales.orderid) as no_of_orders
from sales
inner join sales_product 
on sales.ProductKey = sales_product.ProductKey
Group by trim(sales_product.BrandName)
order by no_of_orders desc;
