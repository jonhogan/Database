
CREATE TABLE Publisher
             (Name        VARCHAR(50)     NOT NULL,
	          Address     VARCHAR(30)    ,
              City        VARCHAR(20)    ,              
              State       CHAR(2)         ,
              PostalCode  VARCHAR(10)    ,
CONSTRAINT Name_PK PRIMARY KEY (Name));

CREATE TABLE Order_T
             (OrderID             INTEGER(11)    NOT NULL,
	      CustomerID          INTEGER(11)   ,
              OrderDate           DATE DEFAULT (SYSDATE())          ,
CONSTRAINT Order_PK PRIMARY KEY (OrderID),
CONSTRAINT Order_FK1 FOREIGN KEY (CustomerID) REFERENCES Customer_T(CustomerID));

CREATE TABLE ProductLine_T
             (ProductLineID       INTEGER(11)    NOT NULL,
              ProductLineName     VARCHAR(50)   ,
CONSTRAINT ProductLine_PK PRIMARY KEY (ProductLineID));

CREATE TABLE Product_T
             (ProductID           INTEGER(11)    NOT NULL,
              ProductLineID       INTEGER(11)   ,
              ProductDescription  VARCHAR(50)    ,
              ProductFinish       VARCHAR(20)    ,
              ProductStandardPrice DECIMAL(6,2)   ,
CONSTRAINT Product_PK PRIMARY KEY (ProductID),
CONSTRAINT Product_FK1 FOREIGN KEY (ProductLineID) REFERENCES ProductLine_T(ProductLineID));


CREATE TABLE OrderLine_T
	      (OrderID            INTEGER(11)   NOT NULL,
              ProductID           INTEGER(11)   NOT NULL,
              OrderedQuantity     INTEGER(11)  ,
CONSTRAINT OrderLine_PK PRIMARY KEY (OrderID, ProductID),
CONSTRAINT OrderLine_FK1 FOREIGN KEY (OrderID) REFERENCES Order_T(OrderID),
CONSTRAINT OrderLine_FK2 FOREIGN KEY (ProductID) REFERENCES Product_T(ProductID));

delete from OrderLine_T;
delete from Product_T;
delete from Order_T;
delete from Customer_T;




INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (1, 'Contemporary Casuals', '1355 S Hines Blvd', 'Gainesville', 'FL', '32601-2871');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (2, 'Value Furniture', '15145 S.W. 17th St.', 'Plano', 'TX', '75094-7743');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (3, 'Home Furnishings', '1900 Allard Ave.', 'Albany', 'NY', '12209-1125');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (4, 'Eastern Furniture', '1925 Beltline Rd.', 'Carteret', 'NJ', '07008-3188');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (5, 'Impressions', '5585 Westcott Ct.', 'Sacramento', 'CA', '94206-4056');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (6, 'Furniture Gallery', '325 Flatiron Dr.', 'Boulder', 'CO', '80514-4432');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (7, 'Period Furniture', '394 Rainbow Dr.', 'Seattle', 'WA', '97954-5589');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (8, 'California Classics', '816 Peach Rd.', 'Santa Clara', 'CA', '96915-7754');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (9, 'M and H Casual Furniture', '3709 First Street', 'Clearwater', 'FL', '34620-2314');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (10, 'Seminole Interiors', '2400 Rocky Point Dr.', 'Seminole', 'FL', '34646-4423');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (11, 'American Euro Lifestyles', '2424 Missouri Ave N.', 'Prospect Park', 'NJ', '07508-5621');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (12, 'Battle Creek Furniture', '345 Capitol Ave. SW', 'Battle Creek', 'MI', '49015-3401');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (13, 'Heritage Furnishings', '66789 College Ave.', 'Carlisle', 'PA', '17013-8834');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (14, 'Kaneohe Homes', '112 Kiowai St.', 'Kaneohe', 'HI', '96744-2537');
INSERT INTO Customer_T  (CustomerID, CustomerName, CustomerAddress, CustomerCity, CustomerState, CustomerPostalCode)
VALUES  (15, 'Mountain Scenes', '4132 Main Street', 'Ogden', 'UT', '84403-4432');





INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1001, '2022-10-21', 1);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1002, '2022-10-21', 8);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1003, '2022-10-22', 15);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1004, '2022-10-22', 5);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1005, '2022-10-24', 3);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1006, '2022-10-24', 2);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1007, '2022-10-27', 11);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1008, '2022-10-30', 12);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1009, '2022-11-01', 4);
INSERT INTO Order_T  (OrderID, OrderDate, CustomerID)
VALUES  (1010, '2022-11-01', 1);




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
