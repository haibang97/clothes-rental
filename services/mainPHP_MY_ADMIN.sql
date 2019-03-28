SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `Background` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Background`;

DROP TABLE IF EXISTS Background;
CREATE TABLE IF NOT EXISTS Background (
  location varchar(100) NOT NULL,
  image varchar(100) NOT NULL,
  PRIMARY KEY (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Background (location, image) VALUES
('Orchard Road', 'https://stylease.me/images/locations/orchard.jpg'),
('SMU', 'https://stylease.me/images/locations/smu.jpg'),
('Zouk', 'https://stylease.me/images/locations/zouk.jpg');
COMMIT;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

















SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

drop database if exists clothesclass;
create database if not exists clothesclass;
use clothesclass;

DROP TABLE IF EXISTS `clothes`;
CREATE TABLE IF NOT EXISTS `clothes` (
  `clothesid` int(2) DEFAULT NULL,
  `classid` int(10) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `size` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `clothes` (`clothesid`, `classid`, `status`, `size`) VALUES
(1, 1, 'available', 'S'),
(2, 1, 'available', 'M'),
(3, 1, 'available', 'L'),
(4, 2, 'available', 'S'),
(5, 2, 'available', 'M'),
(6, 2, 'available', 'L'),
(7, 3, 'available', 'S'),
(8, 3, 'available', 'M'),
(9, 3, 'available', 'L'),
(10, 4, 'available', 'S'),
(11, 4, 'available', 'M'),
(12, 4, 'available', 'L'),
(13, 5, 'available', 'S'),
(14, 5, 'available', 'M'),
(15, 5, 'available', 'L'),
(16, 6, 'available', 'S'),
(17, 6, 'available', 'M'),
(18, 6, 'available', 'L'),
(19, 7, 'available', 'S'),
(20, 7, 'available', 'M'),
(21, 7, 'available', 'L'),
(22, 8, 'available', 'S'),
(23, 8, 'available', 'M'),
(24, 8, 'available', 'L'),
(25, 9, 'available', 'S'),
(26, 9, 'available', 'M'),
(27, 9, 'available', 'L'),
(28, 10, 'available', 'S'),
(29, 10, 'available', 'M'),
(30, 10, 'available', 'L'),
(31, 11, 'available', 'S'),
(32, 11, 'available', 'M'),
(33, 11, 'available', 'L'),
(34, 12, 'available', 'S'),
(35, 12, 'available', 'M'),
(36, 12, 'available', 'L'),
(37, 13, 'available', 'S'),
(38, 13, 'available', 'M'),
(39, 13, 'available', 'L'),
(40, 14, 'available', 'S'),
(41, 14, 'available', 'M'),
(42, 14, 'available', 'L'),
(43, 15, 'available', 'S'),
(44, 15, 'available', 'M'),
(45, 15, 'available', 'L'),
(46, 16, 'available', 'S'),
(47, 16, 'available', 'M'),
(48, 16, 'available', 'L'),
(49, 17, 'available', 'S'),
(50, 17, 'available', 'M'),
(51, 17, 'available', 'L'),
(52, 18, 'available', 'S'),
(53, 18, 'available', 'M'),
(54, 18, 'available', 'L'),
(55, 19, 'available', 'S'),
(56, 19, 'available', 'M'),
(57, 19, 'available', 'L'),
(58, 20, 'available', 'S'),
(59, 20, 'available', 'M'),
(60, 20, 'available', 'L'),
(61, 21, 'available', 'S'),
(62, 21, 'available', 'M'),
(63, 21, 'available', 'L'),
(64, 22, 'available', 'S'),
(65, 22, 'available', 'M'),
(66, 22, 'available', 'L'),
(67, 23, 'available', 'S'),
(68, 23, 'available', 'M'),
(69, 23, 'available', 'L'),
(70, 24, 'available', 'S'),
(71, 24, 'available', 'M'),
(72, 24, 'available', 'L'),
(73, 25, 'available', 'S'),
(74, 25, 'available', 'M'),
(75, 25, 'available', 'L'),
(76, 26, 'available', 'S'),
(77, 26, 'available', 'M'),
(78, 26, 'available', 'L'),
(79, 27, 'available', 'S'),
(80, 27, 'available', 'M'),
(81, 27, 'available', 'L'),
(82, 28, 'available', 'S'),
(83, 28, 'available', 'M'),
(84, 28, 'available', 'L'),
(85, 29, 'available', 'S'),
(86, 29, 'available', 'M'),
(87, 29, 'available', 'L'),
(88, 30, 'available', 'S'),
(89, 30, 'available', 'M'),
(90, 30, 'available', 'L');


DROP TABLE IF EXISTS `clothesclass`;
CREATE TABLE IF NOT EXISTS `clothesclass` (
  `classid` int(10) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `function` varchar(25) DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `mood` varchar(6) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `clothesclass` (`classid`, `gender`, `type`, `function`, `image_link`, `mood`, `description`) VALUES
(1, 'F', 'Sleeveless Flared Midi Dress', 'date night', 'https://stylease.me/images/locations/model.png', 'shiok', 'Made of quality eyelet fabric, fully-lined, non-sheer and not stretchable at all. Features sweet eyelet details on a plum base, comes with a v neckline and non-functional front button details. Complete with a concealed back zipper. Worn in a flattering midi fit.'),
(2, 'F', 'Dirjania Lola Romper', 'date night', 'https://d41eu4npam9w0.cloudfront.net/900x1350/juillet-valencia-front-knot-playsuit-3.jpg', 'lupsup', 'Never need to pick out top and bottoms which waste extra time - a romper will do. Feeling low and dull? Orange is definitely the colour for you! Keep the look sexy by pairing yours with nude pumps or add a touch vibrancy by wearing it with bright yellow slip-ons for a different take.'),
(3, 'F', 'blazer', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/11/26/goods-img/1545171383115279983.jpg', 'rabak', ''),
(4, 'F', 'jacket', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/08/31/goods-img/1548353958015343744.jpg', 'rabak', ''),
(5, 'F', 'jacket', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/10/18/goods-img/1540769186405824322.jpg', 'sian', ''),
(6, 'F', 'dress', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/12/13/goods-img/1549931233539229434.jpg', 'shiok', ''),
(7, 'M', 'tshirt', 'date night', 'https://dynamic.zacdn.com/6FS6Bsdc5t7FYeM-5maj9ojHo98=/fit-in/472x690/filters:quality(95):fill(ffffff)/http://static.sg.zalora.net/p/alpha-style-5023-872429-1.jpg', 'sian', ''),
(8, 'F', 'dress', 'party', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/08/21/goods-img/1534814089359174882.jpg', 'shiok', ''),
(9, 'F', 'midi dress', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2019/01/21/goods-img/1550776746770333935.jpg', 'shiok', ''),
(10, 'M', 'blazer', 'party', 'https://i.ebayimg.com/images/g/BeUAAOSwflBbsehF/s-l300.jpg', 'lupsup', ''),
(11, 'M', 'jacket', 'date night', 'https://target.scene7.com/is/image/Target/GUEST_4f70886f-f0ad-4287-bd8f-eaf26d482888?wid=488&hei=488&fmt=pjpeg', 'shiok', ''),
(12, 'F', 'Natalie Maxi Dress', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/08/07/goods-img/1533699688822759546.jpg', 'sian', 'A lovely option whether you’re off to attend a wedding or prepping for prom, Natalie is both feminine and elegant, and features a ruch bustier that’s slightly elastic. This monochrome maxi dress will easily make you the belle of the ball with its soft material and flowy silhouette, and its design is best paired with simple heels. Dress is lined.'),
(13, 'F', 'jacket', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/11/13/goods-img/1542757559854981941.jpg', 'lupsup', ''),
(14, 'M', 'tshirt', 'date night', 'https://dynamic.zacdn.com/WeZl9fbKzhhOem8geVFGoygT8YY=/fit-in/472x690/filters:quality(95):fill(ffffff)/http://static.sg.zalora.net/p/guess-4096-6656201-1.jpg', 'sian', ''),
(15, 'F', 'mini dress', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2019/01/03/goods-img/1551154862804310291.jpg', 'shiok', ''),
(16, 'F', 'maxi dress', 'workwear', 'https://assets.myntassets.com/dpr_2,q_60,w_210,c_limit,fl_progressive/assets/images/1996368/2017/7/28/11501225258060-Rain--Rainbow-Women-Dresses-9391501225257859-1.jpg', 'rabak', ''),
(17, 'F', 'tshirt', 'workwear', 'https://uniqlo.scene7.com/is/image/UNIQLO/goods_00_414138?$pdp-medium$', 'lupsup', ''),
(18, 'F', 'maxi dress', 'date night', 'https://dressabellecomsg.cdn.sg/images/stories/virtuemart/product/resized/dsb827171215037_400x800.jpg', 'shiok', ''),
(19, 'M', 'jacket', 'workwear', 'https://lp2.hm.com/hmgoepprod?set=source[/fe/55/fe55eb311ba2c384cb5b2dd2f111cea28904814b.jpg],origin[dam],category[men_jacketscoats_coats],type[LOOKBOOK],res[s],hmver[1]&call=url[file:/product/main]', 'shiok', ''),
(20, 'F', 'mini dress', 'date night', 'https://media.missguided.com/s/missguided/DE925042_set/1/nude-bardot-skater-dress', 'shiok', ''),
(21, 'M', 'tshirt', 'date night', 'https://ih0.redbubble.net/image.584310355.0906/ra,unisex_tshirt,x2200,322e3f:696a94a5d4,front-c,392,146,750,1000-bg,f8f8f8.jpg', 'shiok', ''),
(22, 'F', 'tshirt', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/11/01/goods-img/1546455246183353089.jpg', 'shiok', ''),
(23, 'M', 'button up', 'date night', 'https://dynamic.zacdn.com/32D2a4ANQHjavlEcft9gyDCb3dc=/fit-in/472x690/filters:quality(95):fill(ffffff)/http://static.sg.zalora.net/p/topman-7082-4068001-1.jpg', 'lupsup', ''),
(24, 'M', 'sweater', 'date night', 'https://dynamic.zacdn.com/cuA0KvTG3Tu3j-Pg49WKX6W5S0g=/fit-in/472x690/filters:quality(95):fill(ffffff)/http://static.sg.zalora.net/p/puma-select-1784-926699-1.jpg', 'rabak', ''),
(25, 'F', 'mini dress', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/06/29/goods-img/1532280206004719182.jpg', 'sian', ''),
(26, 'F', 'mini dress', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/11/29/goods-img/1547680388347915344.jpg', 'shiok', ''),
(27, 'M', 'button up', 'date night', 'https://dynamic.zacdn.com/gFFBgl4xcOBhKPGe7rPigrzOOH8=/fit-in/472x690/filters:quality(95):fill(ffffff)/http://static.sg.zalora.net/p/gene-martino-5710-925789-1.jpg', 'rabak', ''),
(28, 'M', 'blazer', 'party', 'http://assets.myntassets.com/assets/images/2420515/2018/1/23/11516688122156-Hangup-printed-blazer-party-wear-size36-8731516688122019-1.jpg', 'sian', ''),
(29, 'F', 'maxi dress', 'date night', 'https://gloimg.zafcdn.com/zaful/pdm-product-pic/Clothing/2018/12/21/goods-img/1547849798528953049.jpg', 'rabak', ''),
(30, 'M', 'jacket', 'date night', 'https://image1.superdry.com/static/images/optimised/upload9223368955665492963.jpg', 'shiok', '');
COMMIT;
















SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `Customers` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Customers`;

DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
  customerid int(10) NOT NULL AUTO_INCREMENT,
  firstname varchar(50) NOT NULL,
  lastname varchar(50) NOT NULL,
  tier int(1) NOT NULL,
  phonenumber int(10) NOT NULL,
  birthdate date NOT NULL,
  gender varchar(10) NOT NULL,
  address varchar(100) NOT NULL,
  postalcode int not null,
  email varchar(100) NOT NULL,
  username varchar(255),
  password varchar(255),
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Customers (firstname, lastname, tier, phonenumber, birthdate, gender, address, postalcode, email, username, password) VALUES
("Carrot", "Tan", 3, 93456384, "2000-09-08", "Female", "10 Amber Road", 512512, "carrot@yahoo.com", "carrot123", "buhuhu"),
("Timothy", "Soh", 3, 93456543,"1995-11-14", "Male", "75 Loyand Rise", 564536, "timothy@gmail.com", "fook", "kekeke"),
("Bobby", "Lim", 3, 92227384,"1997-10-21", "Make", "19 Bedok View", 909090, "bobby@gmail.com", "lailailai", "baldy");
COMMIT;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
















drop database if exists delivery;
create database if not exists delivery;
use delivery;

DROP TABLE IF EXISTS `deliveryman`;
CREATE TABLE IF NOT EXISTS `deliveryman` (
  `deliverymanid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `image_link` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `deliveryman` (`deliverymanid`, `name`, `location`, `phonenumber`, `image_link`) VALUES
(1, 'ahmad', 'Boon Lay', 85932132, 'http:google.com'),
(2, 'john', 'Orchard', 91234123, 'asdf');

DROP TABLE IF EXISTS `delivery_schedule`;
CREATE TABLE IF NOT EXISTS `delivery_schedule` (
  `deliverymanid` int(10) NOT NULL,
  `orderid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
COMMIT;












drop database if exists orders;
create database if not exists orders;
use orders;

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