
--1.Create two related tables (e.g., Customers, Orders)

--custome

create database internship_task 

create  table customer
(
customer_id      int primary key,
customer_name    varchar(100),
customer_add     varchar(100),
customer_pno     bigint
)

alter table customer
add constraint  DF_add_customer
default 'koppal' for customer_add

select * from customer

--delete from customer where customer_id=110

insert into customer(customer_id,customer_name,customer_pno) values (110,'yamanoor','2137828236')


insert into customer(customer_id,customer_name,customer_pno) values (111,'vital','2137828278')

insert into customer(customer_id,customer_name,customer_pno) values (112,'raju','2137828273223')

insert into customer(customer_id,customer_name,customer_pno) values (113,'rahul','213782827244')

insert into customer(customer_id,customer_name,customer_pno) values (114,'swati','21378282722')
insert into customer(customer_id,customer_name) values (116,'radika_p')
insert into customer(customer_id,customer_name,customer_pno) values (115,'radika ','2137828299')

insert into customer(customer_id,customer_name) values (117,'manasa')
insert into customer(customer_id,customer_name) values (118,'jothi')
insert into customer(customer_id,customer_name) values (119,'vishal')


update customer set customer_pno=2617482679 where customer_id=112


--table 2 orders

create table orders 
(
customer_id      int foreign key  references customer(customer_id ) ,
order_id        int,
product_name     varchar(100),
product_cost   float 
)

select * from orders 

insert into orders values ( 112,1,'REALME_BUDS',600	)
insert into orders values ( 115,2,'WATCH',1000			)
insert into orders values ( 113,3,'WHY_PROTIN',12500	)
insert into orders values ( 114,4,'SHOES',1349		)
insert into orders values ( 111,5,'SPEAKER',10000		)
insert into orders values ( 112,6,'BAG',460            )
insert into orders values ( 115,7,'Water_bottel',250)
insert into orders values ( 115,8,'night_perfume',799) 

				  
insert into orders values ( 110,9,'realme_phone',20000)
insert into orders(customer_id,order_id,product_cost) values ( 116,12,50000)
insert into orders(customer_id,order_id,product_cost) values ( 110,10,5000)
insert into orders values ( 110,11,'LED_tv',30000)
insert into orders(order_id,product_name,product_cost) values ( 11,'LED_light',300)


select * from orders

select * from customer



--2.Use INNER, LEFT, RIGHT, FULL JOIN--INNER JOIN  select o.product_name,o.product_cost,c.customer_name,c.customer_add,O.customer_idfrom customer C inner join orders Oon c.customer_id=o.customer_idorder by o.product_cost--RIGHT OUTER JOINSELECT C.customer_name,C.customer_pno,O.customer_id,O.product_name,O.order_idFROM customer C RIGHT JOIN  orders Oon c.customer_id=o.customer_id--LEFT OUTER JOINSELECT C.customer_name,C.customer_pno,O.customer_id,O.product_name,O.order_idFROM customer C LEFT JOIN  orders Oon c.customer_id=o.customer_id--FULL  JOISELECT C.customer_name,C.customer_pno,O.customer_id,O.product_name,O.order_idFROM customer C FULL JOIN  orders Oon c.customer_id=o.customer_id