INSERT INTO CUSTOMER VALUES
('CoffeeMan', 'cool12345', '1987-09-22','Bob@gmail.com', 'Bobby Brown'),
('HappyGilmore', 'tunaS', '1987-09-22','Hgilmore@gmail.com', 'Happy Gilmore'),
('CmpERules', 'password1234', '1990-05-14', 'JoeShmoe@yahoo.com', 'Joe Schmoe'),
('BobBarker69', 'password1010','1927-11-12', 'BBarker@yahoo.com', 'Bob Barker'),
('PizzaIsCool','pizza7890', '1990-03-25', 'pizzaman@yahoo.com', 'Bill Murray');

INSERT INTO Author VALUES
('Wilheard Firoozeh','1990-05-14','He was cool.','San Jose, CA'),
('Arnifrid David','1957-05-14','He was cool.','San Jose, CA'),
('Ema Anish','1922-05-14','She was aight','Portland, OR'),
('Clarissa Asa','1953-05-14','No one liked her. She smelled like onions','Los Angeles, CA'),
('Osvald Judite','1990-05-14','Likes to mosh at punk shows', 'Berkley, CA');

INSERT INTO Publishing_house VALUES
('Scholastic','1 Washington Sq., San Jose 95112'),
('Random House','201 East 50th St., New York 10022');

INSERT INTO Book VALUES
(01, 10, 1, 1997, 'Eat Tacos', 'Wilheard Firoozeh', 'Scholastic'),
(02, 20, 2, 1995, 'Eat Tuna', 'Wilheard Firoozeh', 'Scholastic'),
(03, 1, 7, 1990, 'I Like Pens',  'Ema Anish', 'Random House'),
(04, 2, 1, 2001, 'I Like Turtles',  'Ema Anish', 'Scholastic'),
(05, 50, 1, 2001, 'Swag Me Out Tony',  'Osvald Judite', 'Random House'),
(06, 7, 5, 2001, 'Justin Bieber',  'Osvald Judite', 'Scholastic'),
(07, 4, 1, 2000, 'Star Wars', 'Arnifrid David', 'Scholastic'),
(08, 3, 2, 2012, 'Taylor Swift', 'Arnifrid David', 'Random House'),
(09, 9, 1, 2011, 'Tony vs. Lil B', 'Clarissa Asa', 'Scholastic'),
(10, 1, 1, 2007, 'Skateboards', 'Clarissa Asa', 'Scholastic');

INSERT INTO bookRating VALUES
(5, 'It was a greatbook', 'CoffeeMan', 01),
(5, 'It was a good book', 'CoffeeMan', 02),
(5, 'It was a good book', 'CoffeeMan', 03),
(4, 'It was a good book', 'HappyGilmore', 03),
(4, 'It was a good book', 'HappyGilmore', 02),
(4, 'It was a good book', 'HappyGilmore', 04),
(3, 'It was an okay book', 'CmpERules', 05),
(3, 'It was an okay book', 'CmpERules', 01),
(3, 'It was an okay book', 'CmpERules', 06),
(1, 'It was a bad book', 'BobBarker69', 07),
(1, 'It was a bad book', 'BobBarker69', 08),
(1, 'It was a bad book', 'BobBarker69', 01),
(5, 'It was a good book', 'PizzaIsCool', 09),
(5, 'It was a good book', 'PizzaIsCool', 08),
(5, 'It was a good book', 'PizzaIsCool', 10);

INSERT INTO authorRating VALUES
(5, 'This is a great author', 'CoffeeMan', 'Wilheard Firoozeh'),
(5, 'This is a great author', 'HappyGilmore', 'Wilheard Firoozeh'),
(1, 'This is a terrible author', 'CmpERules', 'Wilheard Firoozeh'),
(3, 'This is an okay author', 'BobBarker69', 'Wilheard Firoozeh'),
(5, 'This author writes great books', 'PizzaIsCool', 'Wilheard Firoozeh');

INSERT INTO Credit_card VALUES
(01,'CoffeeMan',1,'2013-01-01','1 First St., San Jose 95112'),
(02,'HappyGilmore',1,'2013-02-02','2 Second St., San Jose 95112'),
(03,'CmpERules',3,'2013-03-03','3 Third St., San Jose 95112'),
(04,'BobBarker69',2,'2013-04-04','4 Fourth St., San Jose 95112'),
(05,'PizzaIsCool',2,'2013-05-05','5 Fifth St., San Jose 95112');

INSERT INTO Transaction VALUES
(10,'2013-01-01','CoffeeMan',01),
(11,'2013-02-02','CoffeeMan',02),
(12,'2013-03-03','HappyGilmore',03),
(13,'2013-04-04','HappyGilmore',04),
(14,'2013-05-05','CmpERules',05),
(15,'2013-06-06','CmpERules',06),
(16,'2013-07-07','BobBarker69',07),
(17,'2013-08-08','BobBarker69',08),
(18,'2013-09-09','PizzaIsCool',09),
(19,'2013-10-10','PizzaIsCool',10),
(20,'2013-11-11','BobBarker69',01),
(21,'2013-11-12','BobBarker69',02),
(22,'2013-11-13','HappyGilmore',07);       