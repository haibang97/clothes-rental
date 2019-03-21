set time_zone = "+08:00";

drop database if exists zuozuo;
create database if not exists zuozuo;
use zuozuo;

create table if not exists orders(
  order_id int not null auto_increment primary key,
    customerid int not null,
  timestamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO orders (customerid, timestamp) VALUES
(11029, '2018-11-14 14:42:31'),
(2342746, '2018-11-14 14:42:39'),
(3132131, '2018-11-14 14:43:51');

drop table if exists order_items;
create table if not exists order_items(
  items_id int primary key auto_increment,
    order_id int,
  clothesid varchar(255),
    foreign key(order_id) references orders(order_id)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO order_items (order_id, clothesid) VALUES 
(1,2),(1,3),(1,4),(2,5),(2,6),(3,7),(3,50);

commit;

select * from order_items;