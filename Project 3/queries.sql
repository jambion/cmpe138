SELECT 	DISTINCT Title
FROM	Book, Transaction
WHERE	(Date BETWEEN '2013-01-01' AND '2013-04-21');


SELECT	DISTINCT Title
FROM	BOOK
WHERE	pubHouse = 'Scholastic';


SELECT 	DISTINCT Title
FROM	BOOK
WHERE	authorNAME = 'Osvald Judite';


SELECT	DISTINCT Title, AVG(Rating_num)
FROM	Book, bookRating
WHERE	bookRated = Isbn
GROUP BY Title
ORDER BY AVG(Rating_num) DESC;

SELECT 		Name AS Customer,COUNT(*) AS Transactions
FROM		Customer, Transaction
WHERE		Bought_by = Username
GROUP BY	Name
ORDER BY	Transactions DESC;


SELECT		COUNT(*) AS November_Transactions
FROM		Transaction
WHERE		Date='2013-11-01'OR
		Date='2013-11-02'OR
		Date='2013-11-03'OR
		Date='2013-11-04'OR
		Date='2013-11-05'OR
		Date='2013-11-06'OR
		Date='2013-11-07'OR
		Date='2013-11-08'OR
		Date='2013-11-09'OR
		Date='2013-11-10'OR
		Date='2013-11-11'OR
		Date='2013-11-12'OR
		Date='2013-11-13'OR
		Date='2013-11-14'OR
		Date='2013-11-15'OR
		Date='2013-11-16'OR
		Date='2013-11-17'OR
		Date='2013-11-18'OR
		Date='2013-11-19'OR
		Date='2013-11-20'OR
		Date='2013-11-21'OR
		Date='2013-11-22'OR
		Date='2013-11-23'OR
		Date='2013-11-24'OR
		Date='2013-11-25'OR
		Date='2013-11-26'OR
		Date='2013-11-27'OR
		Date='2013-11-28'OR
		Date='2013-11-29'OR
		Date='2013-11-20';

SELECT	DISTINCT ratedBy, COUNT(ratedBy)
FROM	bookRating
GROUP BY ratedBy
ORDER BY COUNT(ratedBy) DESC;

