-- INNER JOIN
SELECT DISTINCT s.stdName, s.addr, c.clubName, t.roomNo
  FROM stdtbl AS s
  JOIN stdclubtbl AS c
    ON s.stdName = c.stdName
  JOIN clubtbl as t
    ON c.clubName = t.clubName;