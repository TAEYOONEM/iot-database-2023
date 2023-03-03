-- 뷰

USE sqldb;

CREATE VIEW uv_potentialUser
AS 
	SELECT u.*
		 , b.num,b.prodName,b.price,b.amount
		FROM usertbl AS u
        LEFT OUTER JOIN buytbl AS b
        ON u.userID = b.userID
        WHERE b.userID IS NULL;uv_potentialuseruv_potentialuser