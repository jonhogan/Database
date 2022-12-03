SET FOREIGN_KEY_CHECKS=0;

DROP TABLE Publisher_T;
DROP TABLE Customer_T;
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
             (ISBN               VARChAR(20)     NOT NULL,
              Title              VARCHAR(50)             ,
              Author             VARCHAR(50)             ,
              Year_Published     INT(4)                  ,
              Genre              VARCHAR(15)             ,
              Quantity           int(3)          NOT NULL,
              Cost               DECIMAL(6,2)    NOT NULL,
              Price              DECIMAL(6,2)    NOT NULL,
              Publisher          VARCHAR(50)             ,

CONSTRAINT ISBN_PK PRIMARY KEY (ISBN));

CREATE TABLE Customer_T
             (Email              VARCHAR(35)     NOT NULL,
              FirstName          VARCHAR(15)             ,
              LastName           VARCHAR(15)             ,
              BillingAddress     VARCHAR(30)             ,
              BillingCity        VARCHAR(20)             ,
              BillingState       VARCHAR(2)              ,
              BillingPostalCode  VARCHAR(6)              ,
              ShippingAddress    VARCHAR(30)             ,
              ShippingCity       VARCHAR(20)             ,
              ShippingState      VARCHAR(2)              ,
              ShippingPostalCode VARCHAR(6)              ,
              DateOfBirth        VARCHAR(10)             ,

CONSTRAINT Email_PK PRIMARY KEY (Email));

CREATE TABLE Shopping_Cart_T
             (ID                 INTEGER(15)     NOT NULL,
              Cutomer_Email      VARCHAR(50)             ,

CONSTRAINT ID_PK PRIMARY KEY (ID),
CONSTRAINT Cutomer_Email_FK1 FOREIGN KEY (Cutomer_Email) REFERENCES Customer_T(Email));

CREATE TABLE Shopping_Cart_Book_T
             (ISBN               VARCHAR(20)     NOT NULL,
	          ShoppingCartID     INTEGER(15)     NOT NULL,

CONSTRAINT SCB_PK PRIMARY KEY (ISBN, ShoppingCartID),
CONSTRAINT ISBN_FK1 FOREIGN KEY (ISBN) REFERENCES Books_T(ISBN),
CONSTRAINT ShoppingCartID_FK2 FOREIGN KEY (ShoppingCartID) REFERENCES Shopping_Cart_T(ID));

delete from Publisher_T;
delete from Books_T;
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

INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('UIK1603095143', 'Advantageous', 'Benny Fishall', 1998, 'Fiction', 14, 8.5, 14.11, 'Dover Publications');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('AVC3248518147', 'A History of Welsh Comedians', 'Dai Laffyn', 2010, 'Non-Fiction', 17, 8.5, 14.11, 'Grove Atlantic');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('XHW4748512423', 'American Breakfast', 'Chris P. Bacon', 2015, 'Cooking', 28, 18.5, 26.83, 'Soho Teen');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('DFI8682472656', 'Amphibians', 'Newt and Sally Mander', 2005, 'Non-Fiction', 26, 8.5, 14.11, 'Knopf Doubleday');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('KER2611464285', 'Antibiotics', 'Penny Sillin', 2017, 'Fantasy',24, 7.5, 12.45, 'Tilbury House');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('IGV1365633432', 'Are You Dancing?', 'R. U. Asking', 2015, 'Horror',26, 6.5, 10.79, 'TouchWood Editions');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('KFY1665571673', 'Artificial Weightlessness', 'Andy Gravity', 2011', Horror'17, 5.5, 9.13, 'Simon & Schuster');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('ACQ5311113736', 'Bacteria', 'Mike Robes', 2022,'Sci-Fi',13, 6.5, 10.79, 'And Other Stories');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('PJN7796473927', 'Blushing', 'Rosie Cheeks', 2009, 'Romance', 10, 8.5, 14.11, 'Dover Publications');
INSERT INTO Books_T (ISBN, Title, Author, Year_Published, Genre, Quantity, Cost, Price, Publisher)
VALUES ('CSD2281431232', 'Breath of Fresh Air', 'Hal E. Tosis', 2004, 'Horror',2, 6.5, 10.79, 'Simon & Schuster');

INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("russell.bricks@gmail.com", "Russell", "Bricks", "6905 Rockledge Dr", "Bethesda", "MD", 20817, "6905 Rockledge Dr", "Bethesda", "MD", 20817, 22510);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("raymond.flower@hotmail.com", "Raymond", "Flower", "5 Woodfield Mall G-135", "Schaumburg", "IN", 60173, "5 Woodfield Mall G-135", "Schaumburg", "IN", 60173, 22879);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("aloysius.nightingale@aol.com", "Aloysius", "Nightingale", "4426 E Los Angeles Ave", "Simi Valley", "CA", 93063, "4426 E Los Angeles Ave", "Simi Valley", "CA", 93063, 23115);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("freeman.lillypilly@yahoo.com", "Freeman", "Lillypilly", "1086 Georgia 20", "McDonough", "GA", 30253, "1086 Georgia 20", "McDonough", "GA", 30253, 38413);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("monroe.firethron@gmail.com", "Monroe", "Firethron", "6196 Cleveland Ave", "Columbus", "OH", 43231, "6196 Cleveland Ave", "Columbus", "OH", 43231, 35585);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("orion.inkwell@gmail.com", "Orion", "Inkwell", "535 Garden Ave", "Webster Groves", "MS", 63119, "535 Garden Ave", "Webster Groves", "MS", 63119, 38497);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("yarrow.magpie@gmail.com", "Yarrow", "Magpie", "91 S Jackson St", "Seattle", "WA", 98104, "P.O. Box 275", "Seattle", "WA", 98104, 23422);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("ackley.feather@gmail.com", "Ackley", "Feather", "314 W Northern Ave", "Pueblo", "CO", 81004, "314 W Northern Ave", "Pueblo", "CO", 81004, 18134);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("crow.pincushion@gmail.com", "Crow", "Pincushion", "2645 Carnegie Rd", "York", "PA", 17402, "2645 Carnegie Rd", "York", "PA", 17402, 26308);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("gibbon.blackjack@gmail.com", "Gibbon", "Blackjack", "429 Highland Ave", "Salem", "ME", 1970, "429 Highland Ave", "Salem", "ME", 1970, 18941);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("flo.rooks@gmail.com", "Flo", "Rooks", "6342 Lantana Rd", "Lake Worth", "FL", 33463, "6342 Lantana Rd", "Lake Worth", "FL", 33463, 35845);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("filomena.hemlock@gmail.com", "Filomena", "Hemlock", "713 S Crouse Ave", "Syracuse", "ND", 13210, "713 S Crouse Ave", "Syracuse", "ND", 13210, 31542);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("mandy.butters@gmail.com", "Mandy", "Butters", "31313 N Scottsdale Rd", "Scottsdale", "AR", 85262, "31313 N Scottsdale Rd", "Scottsdale", "AR", 85262, 29116);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("alvena.cribbe@student.hogwarts.edu", "Alvena", "Cribbe", "2051 N Grand Ave", "Nogales", "AR", 85621, "2051 N Grand Ave", "Nogales", "AR", 85621, 31411);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("gladys.crane@yahoo.com", "Gladys", "Crane", "7710 SW Barbur Blvd", "Portland", "OR", 97219, "7710 SW Barbur Blvd", "Portland", "OR", 97219, 18590);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("veronica.myrtle@yahoo.com", "Veronica", "Myrtle", "633 Chestnut St", "Berea", "KY", 40403, "633 Chestnut St", "Berea", "KY", 40403, 17792);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("aurelia.stinkwood@yahoo.com", "Aurelia", "Stinkwood", "47 E Ridgewood Ave", "Ridgewood", "NM", 7450, "47 E Ridgewood Ave", "Ridgewood", "NM", 7450, 23550);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("laleh.craft@yahoo.com", "Laleh", "Craft", "300 Washington Ave SE", "Minneapolis", "MN", 55455, "3355 N 4th St", "Minneapolis", "MN", 55412, 34163);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("orchid.patt@hotmail.com", "Orchid", "Patt", "5364 Buford Hwy", "Atlanta", "GA", 30340, "5364 Buford Hwy", "Atlanta", "GA", 30340, 23854);
INSERT INTO Customer_T (Email, FirstName, LastName, BillingAddress, BillingCity, BillingState, BillingPostalCode, ShippingAddress, ShippingCity, ShippingState, ShippingPostalCode, DateOfBirth)
VALUES ("dew.books@hotmail.com", "Dew", "Books", "1720 Story Rd #46", "San Jose", "CA", 95122, "P.O. Box 92482", "San Jose", "CA", 95122, 26595);

INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (4289564, "russell.bricks@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (6930971, "raymond.flower@hotmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (1692946, "aloysius.nightingale@aol.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (4637087, "freeman.lillypilly@yahoo.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (7747989, "monroe.firethron@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (4238378, "orion.inkwell@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (9885458, "yarrow.magpie@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (9760657, "ackley.feather@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (6516709, "crow.pincushion@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (9641540, "gibbon.blackjack@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (5202465, "flo.rooks@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (3368769, "filomena.hemlock@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (2520170, "mandy.butters@gmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (4897968, "alvena.cribbe@student.hogwarts.edu");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (7514123, "gladys.crane@yahoo.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (5180677, "veronica.myrtle@yahoo.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (4089203, "aurelia.stinkwood@yahoo.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (3455867, "laleh.craft@yahoo.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (5005215, "orchid.patt@hotmail.com");
INSERT INTO Shopping_Cart_T  (ID, Cutomer_Email) VALUES (1595421, "dew.books@hotmail.com");

INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("UIK1603095143", 4289564);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("AVC3248518147", 6930971);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("XHW4748512423", 1692946);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("DFI8682472656", 4637087);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("KER2611464285", 7747989);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("IGV1365633432", 4238378);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("KFY1665571673", 9885458);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("ACQ5311113736", 9760657);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("PJN7796473927", 6516709);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("CSD2281431232", 9641540);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("DFI8682472656", 5202465);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("KER2611464285", 3368769);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("IGV1365633432", 2520170);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("KFY1665571673", 4897968);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("ACQ5311113736", 7514123);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("PJN7796473927", 5180677);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("CSD2281431232", 4089203);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("DFI8682472656", 3455867);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("UIK1603095143", 5005215);
INSERT INTO Shopping_Cart_Book_T (ISBN, ShoppingCartID)
VALUES ("AVC3248518147", 1595421);


select ""'Table definition - Publisher_T';
describe Publisher_T;
select ""'Table definition - Books_T';
describe Books_T;
select ""'Table definition - Shopping_Cart_T';
describe Shopping_Cart_T;
select ""'Table definition - Shopping_Cart_Book_T';
describe Shopping_Cart_Book_T;
select ""'Table definition - Customer_T';
describe Customer_T;

select ""'Table contents - Publisher_T';
select * from Publisher_T;
select ""'Table contents - Books_T';
select * from Books_T;
select ""'Table contents - Shopping_Cart_T';
select * from Shopping_Cart_T;
select ""'Table contents - Shopping_Cart_Book_T';
select * from Shopping_Cart_Book_T;
select ""'Table contents - Customer_T';
select * from Customer_T;