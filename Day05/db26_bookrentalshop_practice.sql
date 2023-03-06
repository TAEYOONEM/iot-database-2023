/* BookRentalShop  연습 */
SELECT *
  FROM membertbl;
  
-- 서브쿼리  - 성능이 떨어지는 경향(안좋음)
SELECT b.Author AS '저자' -- 1
 	 -- , b.Division AS '장르' -- 2
     , (SELECT Names 
		  FROM divtbl 
		 WHERE Division = b.Division) AS '장르'
     , b.Names AS '제목' -- 3
     , b.ISBN  -- 4
     , b.Price AS '금액' -- 5
  FROM bookstbl AS b
ORDER BY b.Names ASC; -- 제목, 3,  => b.Names 대신 사용
  
-- 조인 - 서브쿼리 쓸바에 조인으로 변경
SELECT b.Author AS '저자'
	--  , b.Division 
     , d.Names AS '장르'
     , b.Names AS '제목' 
     , b.ISBN
     , b.Price AS '금액'
  FROM bookstbl AS b
 INNER JOIN divtbl AS d
    ON b.Division = d.Division
 ORDER BY b.names;
 
-- 서브쿼리 - 장르로 그룹핑
SELECT (SELECT Names 
          FROM divtbl 
		 WHERE division = bb.Division
		) AS '장르'
     , bb.총합
  FROM(
	   SELECT b.Division 
		    , SUM(b.Price) AS '총합'
	     FROM bookstbl AS b
		GROUP BY b.Division
      ) AS bb;
      
-- 내부조인
SELECT m.Names AS '이름'
     , m.Addr AS '주소'
     , m.Mobile AS '연착처'
     , r.rentalDate AS '대여일자'
     , r.returnDate AS '반납일자'
     , b.Names AS '책 제목'
     , d.Names AS '장르'
     , b.Price AS '금액'
  FROM membertbl AS m
 INNER JOIN rentaltbl AS r
    ON m.memberIdx = r.memberIdx
 INNER JOIN bookstbl AS b
    ON r.bookIdx = b.bookIdx
 INNER JOIN divtbl AS d
	ON b.Division = d.Division;
    
    
    
-- 외부조인    , key 가 null 이면 아우터 조인 ( key -> unique , not null)
    SELECT m.Names AS '이름'
     , m.Addr AS '주소'
     , m.Mobile AS '연착처'
     , r.rentalIdx
     , r.rentalDate AS '대여일자'
     , r.returnDate AS '반납일자'
     , b.Names AS '책 제목'
     , d.Names AS '장르'
     , b.Price AS '금액'
  FROM membertbl AS m
  LEFT OUTER JOIN rentaltbl AS r
    ON m.memberIdx = r.memberIdx
  LEFT OUTER JOIN bookstbl AS b
    ON r.bookIdx = b.bookIdx
  LEFT OUTER JOIN divtbl AS d
	ON b.Division = d.Division;
    
 
 