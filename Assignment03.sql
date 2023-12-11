

use  ExercideDb

create table Product
(PId int primary key,
PQuantity int,
PPrice float not null,
DiscountPercent float,
ManufacturingDate Date not null)

insert into Product values(10,5,1000,5.0,'09/22/2020')
insert into Product values(20,10,2000,08.00,'10/15/2018')
insert into Product values(30,15,3000,10.00,'12/03/2019')
insert into Product values(40,20,4000,12.00,'12/12/2021')
insert into Product values(50,09,5000,15.00,'02/07/2019')

select * from Product


create function fnProduct(

@price float,
@discountPercent float)
returns float
As
begin 
return(@price-@discountPercent*(@price/100))
end

select PId,PPrice ,DiscountPercent,dbo.fnProduct(PPrice,DiscountPercent) as PriceAfterDiscount from Product
