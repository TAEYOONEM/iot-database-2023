use tabledb;

CREATE TABLE TBL1(
	ID INT NOT NULL PRIMARY KEY,
    bridge INT NULL,
    contents VARCHAR(5000)
);

-- sqldb DB의 usertbl 데이터 중
-- userID, name, birthYear, addr 만 가져와서
-- tabledb.usetbl에 부어넣은것
INSERT INTO tabledb.usertbl
SELECT userID,name,birthYear,addr
	FROM sqldb.usertbl;
    
SELECT * FROM usertbl WHERE name ='김범수';