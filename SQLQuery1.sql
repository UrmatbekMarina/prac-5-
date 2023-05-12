DROP TABLE IF EXISTS Goods;
		
CREATE TABLE Goods (
  id INTEGER,
  name VARCHAR(50),
  customer_id INTEGER,
  manufacturer_id INTEGER,
  value INTEGER ,
  price int,
  discount INTEGER
  PRIMARY KEY (id)
);

INSERT INTO Goods
(
id,
name,
customer_id,
manufacturer_id,
value,
price,
discount
)
values  (01, 'qwe', 1, 1,1, 1 ,1),
(02, 'ewq', 2, 2,2, 2 ,2)



		
CREATE TABLE Customer (
  id INTEGER ,
  name VARCHAR(50) ,
  PRIMARY KEY (id)
);

INSERT INTO Customer
(
id,
name
)
values  (01, 'qwe'),
(02, 'ewq')





CREATE TABLE Manufacturer (
  id INTEGER ,
  name VARCHAR(50) ,
  INN INTEGER ,
  location VARCHAR(50) ,
  PRIMARY KEY (id)
);

INSERT INTO Manufacturer
(
id,
name,
INN,
location
)
values  (01, 'q', 1, 'qq'),
(02, 'e', 2, 'e')







DROP TABLE IF EXISTS [User];
create table [User]
(
id int primary key ,
[user_name] varchar(50) not null,
user_role varchar(50) not null,
user_password varchar(50) not null,
user_address varchar(100) not null
);

INSERT INTO [User]
(
id,
[user_name],
user_role,
user_password,
user_address
)
values  (01, 'qwe', '1', '1','1'),
(02, 'ewq', '2', '2','2')










DROP TABLE IF EXISTS Category;
create table Category
(
 id int primary key ,
category_name varchar(50) not null,
goods_id int 
);

INSERT INTO Category
(
id,
category_name,
goods_id
)
values  (01, 'qwe', 1),
(02, 'ewq', 2)














create table Delivery
( 
id int primary key ,
delivery_status varchar(100) not null, 
delivery_price int,
[user_id] int,
goods_id int 
)
INSERT INTO Delivery
(
id,
delivery_status,
delivery_price,
[user_id],
goods_id
)
values  (01, 'qwe', 1, 1, 1),
(02, 'ewq', 2, 2, 2)






ALTER TABLE Goods ADD FOREIGN KEY (customer_id) REFERENCES Customer (id);
ALTER TABLE Goods ADD FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer (id);
ALTER TABLE Category ADD FOREIGN KEY (goods_id) REFERENCES Goods (id);
ALTER TABLE Delivery ADD FOREIGN KEY ([user_id]) REFERENCES [User] (id);
ALTER TABLE Delivery ADD FOREIGN KEY (goods_id) REFERENCES Goods (id);