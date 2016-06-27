create table customer1(customerid number(2), firstname varchar(30), lastname varchar(30), address varchar(30), paymenttype varchar(30));
create table order1(orderid number(2), customerid number(2), productid number(2), dateoredered varchar(30));
create table product(productid number(2), productname varchar(30), price number(8,2));
insert into customer1(customerid, firstname, lastname, address, paymenttype) values (1, 'john', 'weber', '2120 wacker dr', 'visa');
insert into customer1 values(2, 'johny', 'walker', '3170 fairway dr', 'mastercard');
insert into customer1 values(3, 'smith', 'rock', '1324 whitney dr', 'american express');
insert into customer1 values(4, 'Ansh', 'Ragi', '1234 burnett dr', 'discover');
insert into customer1 values(5, 'Kiran', 'Parupalli', '25738 hopewell dr', 'visa');
insert into customer1 values(6, 'srini', 'konduru', '3270 haverhill dr', 'discover');
insert into order1 values(1, 1, 1, '01-jun-12');
insert into order1 values(2, 2, 2, '06-apr-14');
insert into order1 values(3, 3, 3, '10-may-16');
insert into order1 values(4, 4, 4, '12-jun-15');
insert into order1 values(5, 5, 5, '23-sep-13');
insert into product values(2, 'DEF', 230);
insert into product values(3, 'JKL', 500);
insert into product values(4, 'XYZ', 340);
insert into product values(5, 'STU', 550);
insert into product values(6, 'ASD', 669);
insert into product values(1, 'ABC', 190);
update product set productid=1 where productname = 'DEF';
update product set productid=2 where productname = 'ABC';
select * from customer1, order1 where customer1.customerid==order1.orderid;select * from customer1, order1, product where customer1.customerid==order1.orderid and order1.productid == product.productid;
select product.price from customer1, order1, product where customer1.customerid==order1.orderid and order1.productid == product.productid;


