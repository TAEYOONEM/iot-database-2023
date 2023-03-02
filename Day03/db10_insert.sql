-- INSERT 
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES 
('EMI','에미넴','1972', 'DE','012','3456', 173, '2023-03-02');

-- 컬럼을 다 적을떄 입력 안할 컬럼은 NULL로 지정
INSERT INTO usertbl
(userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
VALUES 
('PCW','박찬욱','1963', '서울', NULL ,NULL, NULL, NULL);

-- NULL 컬럼은 생략가능
INSERT INTO usertbl
(userID, name, birthYear, addr)
VALUES 
('XXX','김심야','1995', '서울');

-- 컬럼 지정을 생략가능(단, 입력할 값의 순서가 컬럼순서 일치)
INSERT INTO usertbl
VALUES 
('CR7','호날두','1985','사우','010' ,'12341234', 187, NULL);

-- AUTO_INCREMENT 의 경우 필드값을 입력하지 않아도 됨
INSERT INTO buytbl
(userID, prodName, groupName, price, amount)
VALUES
(13, 'SMG', '노트북', '전자', 5000000, 1);