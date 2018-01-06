CREATE TABLE Customer
	(Username	VARCHAR(15)		NOT NULL,
	 Password	VARCHAR(21),
	 Date_of_birth	DATE,
	 Email		VARCHAR(21),
	 Name		VARCHAR(30),
	 PRIMARY KEY(Username) );

CREATE TABLE Author
	(Name		VARCHAR(30)		NOT NULL,
	 Date_of_birth	DATE,
	 Short_bio	VARCHAR(140),
	 Birth_place	VARCHAR(27),
	 PRIMARY KEY(Name) );

CREATE TABLE Publishing_house
	(pubName	VARCHAR(30)		NOT NULL,
	 Address	VARCHAR(50),
	 PRIMARY KEY(pubName) );

CREATE TABLE Book
	(Isbn		INTEGER		NOT NULL,
	 Price		FLOAT(10),
	 Edition_num	INTEGER,
	 Year_of_pub	INTEGER,
	 Title		VARCHAR(21),
	 authorName	VARCHAR(30)	NOT NULL,
	 pubHouse	VARCHAR(200)	NOT NULL,
	 PRIMARY KEY(Isbn),
	 FOREIGN KEY(authorName) REFERENCES Author(Name),
	 FOREIGN KEY(pubHouse) REFERENCES Publishing_house(pubName) );

CREATE TABLE bookRating
	(Rating_num	INTEGER,
	 Text_rating	VARCHAR(140),
	 ratedBy	VARCHAR(15)		NOT NULL,
	 bookRated	INTEGER			NOT NULL,
	 FOREIGN KEY(ratedBy) REFERENCES Customer(Username),
	 FOREIGN KEY(bookRated) REFERENCES Book(Isbn) );

CREATE TABLE authorRating
	(Rating_num	INTEGER,
	 Text_rating	VARCHAR(140),
	 ratedBy	VARCHAR(30)		NOT NULL,
	 authorRated	VARCHAR(30)		NOT NULL,
	 FOREIGN KEY(ratedBy) REFERENCES Customer(Username),
	 FOREIGN KEY(authorRated) REFERENCES Author(Name) );
	 
CREATE TABLE Credit_card
	(Card_num	INTEGER		NOT NULL,
	 Card_owner	VARCHAR(30)	NOT NULL,
	 Card_type	INTEGER,
	 Expir_date	DATE,
	 Billing_addr	VARCHAR(50),
	 PRIMARY KEY(Card_num),
	 FOREIGN KEY(Card_owner) REFERENCES Customer(Username) );	 

CREATE TABLE Transaction
	(Order_num	INTEGER		NOT NULL,
	 Date		DATE,
	 Bought_by	VARCHAR(30)	NOT NULL,
	 Book_bought	INTEGER		NOT NULL,
	 PRIMARY KEY(Order_num),
	 FOREIGN KEY(Bought_by) REFERENCES Customer(Username),
	 FOREIGN KEY(Book_bought) REFERENCES Book(Isbn) );
