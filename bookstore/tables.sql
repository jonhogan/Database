SET FOREIGN_KEY_CHECKS=0;

DROP TABLE Publisher_T;
DROP TABLE Books_T;
DROP TABLE Shopping_Cart_T;
DROP TABLE Shopping_Cart_Book_T;

SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE Publisher_T
             (Name               VARCHAR(50)     NOT NULL,
	          Address            VARCHAR(30)             ,
              City               VARCHAR(20)             ,
              State              CHAR(2)                 ,
              PostalCode         VARCHAR(10)             ,
              Website            VARCHAR(50)             ,
CONSTRAINT Name_PK PRIMARY KEY (Name));

CREATE TABLE Books_T
             (ISBN               VARCHAR(30)     NOT NULL,
              Title              VARCHAR(50)             ,
              Author             VARCHAR(50)             ,
              Year_Published     INT(4)                  ,
              Genre              VARCHAR(15)             ,
              Quantity           int(3)          NOT NULL,
              Cost               DECIMAL(6,2)    NOT NULL,
              Price              DECIMAL(6,2)    NOT NULL,
              Publisher          VARCHAR(50)             ,

CONSTRAINT ISBN_PK PRIMARY KEY (ISBN));

CREATE TABLE Shopping_Cart_T
             (ID                 INTEGER(15)     NOT NULL,
              Cutomer_Email      VARCHAR(50)             ,

CONSTRAINT ISBN_PK PRIMARY KEY (ID));

CREATE TABLE Shopping_Cart_Book_T
             (ISBN               VARCHAR(30)     NOT NULL,
	          ShoppingCartID     INTEGER(15)     NOT NULL,

CONSTRAINT SCB_PK PRIMARY KEY (ISBN, ShoppingCartID),
CONSTRAINT ISBN_FK2 FOREIGN KEY (ISBN) REFERENCES Books_T(ISBN),
CONSTRAINT ShoppingCartID_FK2 FOREIGN KEY (ShoppingCartID) REFERENCES Shopping_Cart_T(ID));

CREATE TABLE Customer_T
             (Email              VARCHAR(50)     NOT NULL,
              FirstName          VARCHAR(15)             ,
              LastName           VARCHAR(15)             ,
              BillingAddress     VARCHAR(30)             ,
              BillingCity        VARCHAR(20)             ,
              BillingState       CHAR(2)                 ,
              BillingPostalCode  VARCHAR(10)             ,
              ShippingAddress    VARCHAR(30)             ,
              ShippingCity       VARCHAR(20)             ,
              ShippingState      CHAR(2)                 ,
              ShippingPostalCode VARCHAR(10)             ,
              DateOfBirth        DATE                    ,

CONSTRAINT Email_PK PRIMARY KEY (Email));


delete from Publisher_T;
delete from Books_T;
delete from Order_T;
delete from Shopping_Cart_T;
delete from Shopping_Cart_Book_T;
delete from Customer_T;




INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('Dover Publications', '1355 S Hines Blvd', 'Gainesville', 'FL', '32601-2871', 'https://store.doverpublications.com/');
INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('Grove Atlantic', '15145 S.W. 17th St.', 'Plano', 'TX', '75094-7743', 'https://groveatlantic.com/');
INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('Soho Teen', '1900 Allard Ave.', 'Albany', 'NY', '12209-1125', 'https://sohopress.com/soho-teen/');
INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('Knopf Doubleday', '1925 Beltline Rd.', 'Carteret', 'NJ', '07008-3188', 'http://knopfdoubleday.com/');
INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('Tilbury House', '5585 Westcott Ct.', 'Sacramento', 'CA', '94206-4056', 'https://www.tilburyhouse.com/');
INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('TouchWood Editions', '325 Flatiron Dr.', 'Boulder', 'CO', '80514-4432', 'https://www.touchwoodeditions.com/');
INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('Simon & Schuster', '394 Rainbow Dr.', 'Seattle', 'WA', '97954-5589', 'https://www.simonandschuster.co.uk/');
INSERT INTO Publisher_T  (Name, Address, City, State, PostalCode, Website)
VALUES  ('And Other Stories', '816 Peach Rd.', 'Santa Clara', 'CA', '96915-7754', 'https://www.andotherstories.org/');

INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('978-1-60309-514-3', 'Advantageous', 'Benny Fishall', 1998, 'Fiction', 15, 6.00, , 'Dover Publications');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('657-3-24851-814-7', 'A History of Welsh Comedians', 'Dai Laffyn', 2010, 'Non-Fiction', 8, 11.00, , 'Grove Atlantic');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('874-4-74851-242-3', 'American Breakfast','Chris P. Bacon', 2015, 'Cooking', 6, 18.00, ,'Soho Teen');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)z
VALUES  ('281-8-68247-265-6', 'Amphibians', 'Newt and Sally Mander', 2005, 'Non-Fiction', 7, 5.00, , 'Knopf Doubleday');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('952-2-61146-428-5', 'Antibiotics', 'Penny Sillin', 2017, 'Fantasy', 10, 5.00, , 'Tilbury House');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('871-1-36563-343-2', 'Are You Dancing?', 'R. U. Asking', 2015, 'Horror', 15, 5.00, , 'TouchWood Editions');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('299-1-66557-167-3', 'Artificial Weightlessness', 'Andy Gravity', 2011, 'Horror', 9, );
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('984-5-31111-373-6', 'Bacteria', 'Mike Robes');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('768-7-79647-392-7', 'Blushing', 'Rosie Cheeks');
INSERT INTO Books_T  (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES  ('791-2-28143-123-2', 'Breath of Fresh Air', 'Hal E. Tosis');



INSERT INTO ProductLine_T  (ProductLineID, ProductLineName)
VALUES  (1, 'Cherry Tree');
INSERT INTO ProductLine_T  (ProductLineID, ProductLineName)
VALUES  (2, 'Scandinavia');
INSERT INTO ProductLine_T  (ProductLineID, ProductLineName)
VALUES  (3, 'Country Look');


INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (1, 'End Table', 'Cherry', 175, 1);
INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (2, 'Coffee Table', 'Natural Ash', 200, 2);
INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (3, 'Computer Desk', 'Natural Ash', 375, 2);
INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (4, 'Entertainment Center', 'Natural Maple', 650, 3);
INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (5, 'Writers Desk', 'Cherry', 325, 1);
INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (6, '8-Drawer Desk', 'White Ash', 750, 2);
INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (7, 'Dining Table', 'Natural Ash', 800, 2);
INSERT INTO Product_T  (ProductID, ProductDescription, ProductFinish, ProductStandardPrice, ProductLineID)
VALUES  (8, 'Computer Desk', 'Walnut', 250, 3);




INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1001, 1, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1001, 2, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1001, 4, 1);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1002, 3, 5);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1003, 3, 3);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1004, 6, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1004, 8, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1005, 4, 3);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1006, 4, 1);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1006, 5, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1006, 7, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1007, 1, 3);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1007, 2, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1008, 3, 3);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1008, 8, 3);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1009, 4, 2);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1009, 7, 3);
INSERT INTO OrderLine_T  (OrderID, ProductID, OrderedQuantity)
VALUES  (1010, 8, 10);

-- Displaying messages - Use double quotation marks with SELECT for cleaner display. 
-- Otherwise, messages are displayed twice, both as header and value.
select ""'Table definition - OrderLine_T';
describe OrderLine_T;
select ""'Table definition - Product_T';
describe Product_T;
select ""'Table definition - ProductLine_T';
describe ProductLine_T;
select ""'Table definition - Order_T';
describe Order_T;
select ""'Table definition - Customer_T';
describe Customer_T;

select ""'Table contents - OrderLine_T';
select * from OrderLine_T;
select ""'Table contents - Product_T';
select * from Product_T;
select ""'Table contents - ProductLine_T';
select * from ProductLine_T;
select ""'Table contents - Order_T';
select * from Order_T;
select ""'Table contents - Customer_T';
select * from Customer_T;
