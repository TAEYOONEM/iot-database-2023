CREATE TABLE usertbl(
	userID CHAR(8) NOT NULL PRIMARY KEY,
	name VARCHAR(10) NOT NULL,
    birthYear INT NOT NULL,
    addr VARCHAR(10)
);

CREATE TABLE buytbl(
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    userID CHAR(8),
    prodName VARCHAR(10) NOT NULL,
    price INT,
    FOREIGN KEY(userID) REFERENCES usertbl(userID)
);

-- 실무에 가장 근접한 PK방법
-- 기본키 2개 지정
CREATE TABLE prodtbl(
	prodCode CHAR(3) NOT NULL,
    prodID CHAR(4) NOT NULL,
    prodDate DATETIME NOT NULL,
    prodCur VARCHAR(10) NULL,
    CONSTRAINT pk_prodtbl_prodCode_prodId
		PRIMARY KEY (prodCode, prodID)
);