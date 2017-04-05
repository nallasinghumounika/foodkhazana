create table Product
(
	productid char(10) primary key,
	productname char(40),
	productdesc char(50),
	isproductavailable boolean	
)

create table Supplier
(
	supplierid char(10) primary key,
	suppliername char(30),
	supplierdesc char(30),
	issupplieravailable boolean
)


create table XMAP_Product_Supplier
(
	psid char(10) primary key,
	productid char(10) references Product(productid),
	supplierid char(10) references Supplier(supplierid),
	productsupplierprice int,
	productsupplierstock int,
	isproductsupplieravailable boolean
)

SELECT * FROM PRODUCT;
SELECT * FROM SUPPLIER;
SELECT * FROM XMAP_PRODUCT_SUPPLIER 

create view vw_xmap_ps
as
select p.productid,p.productname,ps.psid, s.supplierid,s.suppliername,ps.productsupplierprice, ps.productsupplierstock
from product p join xmap_product_supplier ps on p.productid=ps.productid join supplier s on ps.supplierid=s.supplierid
ps.isproductsupplieravailable=true and
s.issupplieravailable=true
p.isproductavailable=true



select * from vw_xmap_ps order by 1

select * from vw_xmap_ps x1 where productsupplierprice=
( select min(productsupplierprice) from vw_xmap_ps  x2 where x1.productid=x2.productid)

select * from CUSTOMER;
select * from USERDETAILS1;
select * from SHIPPINGADDRESS;
select * from BILLINGADDRESS;
select * from CART 