USE bookrentalshop;

-- 1번 문제
SELECT CONCAT(LEFT(m.Names,1),',',SUBSTRING(m.Names,2)) AS '회원명'
	 , SUBSTRING(m.Addr,5) AS '주소'
     , m.Mobile AS '폰번호'
     , UPPER(m.Email) AS '이메일'
  FROM membertbl AS m
  ORDER BY '이메일' DESC;

-- 2번 문제
SELECT d.Names AS '장르'
	 , b.Author AS '작가'
     , b.Names AS '책제목'
  FROM bookstbl AS b
 INNER JOIN divtbl AS d 
	ON b.Division = d.Division
ORDER BY 장르,작가;

-- 3번 문제
INSERT INTO divtbl
(Division,Names)
VALUES 
('I002', '네트워크');

-- 4번 문제
UPDATE membertbl
   SET Levels = 'D'
     , Mobile = '010-9839-9999'
 WHERE Names = '성명건';

-- 5번 문제

SELECT CASE
	WHEN d.Names IS NULL THEN '합계' ELSE d.Names
	END 장르,CONCAT(FORMAT(SUM(b.price),0),'원') AS '합계금액'
 FROM bookstbl AS b
INNER JOIN divtbl AS d 
   ON b.Division = d.Division
GROUP BY d.Names 
 WITH ROLLUP;
