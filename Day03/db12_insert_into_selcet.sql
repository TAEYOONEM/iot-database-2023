-- INSERT INTO SELECT
-- usertbl 에서 앞의 네개 컬럼 값을 가져와서 전부
-- usertbl_bak에 집어넣어라

INSERT INTO usertbl_bak(userID,name,birthYear,addr)
SELECT userID,name,birthYear,addr FROM usertbl;