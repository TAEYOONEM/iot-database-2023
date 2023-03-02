-- UPDATE

START TRANSACTION;

-- 경고!! UPDATE 구문에는 WHERE절 빼면 안됨!!
UPDATE usertbl_bak
   SET mobile1 = '010'
     , mobile2 = '66667788'
     , addr = '부산'
 WHERE userID = 'EMI';

ROLLBACK;
COMMIT;

-- DELETE
-- WHERE절이 빠지면 
DELETE FROM usertbl
WHERE userID = 'CR7';