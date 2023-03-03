-- 쇼핑몰에 가입하고 물건을 한번도 구매하지 않은 회원까지 모두 출력
/* 쇼핑몰에 가입하고 한번도 안 산 사람 */

SELECT u.*
	 , b.prodName
     , b.groupName
     , b.price
     , b.amount
  FROM usertbl AS u
  RIGHT OUTER JOIN buytbl AS b
    ON u.userID = b.userID
 WHERE b.userID IS NULL;
 
-- 학생 중에 동아리에 가입하지 않은 학생
SELECT DISTINCT s.stdName, s.addr
    , c.clubName, c.roomNo
  FROM stdtbl AS s
  LEFT OUTER JOIN stdclubtbl AS j
    ON s.stdName = j.stdName
 LEFT OUTER JOIN clubtbl AS c
	ON  c.clubName = j.clubName
 UNION -- 집합( 두 쿼리 결과를 합쳐줌)
SELECT DISTINCT s.stdName, s.addr
     , c.clubName, c.roomNo
  FROM stdtbl AS s
  LEFT OUTER JOIN stdclubtbl AS j
    ON s.stdName = j.stdName
 RIGHT OUTER JOIN clubtbl AS c
	ON  c.clubName = j.clubName;