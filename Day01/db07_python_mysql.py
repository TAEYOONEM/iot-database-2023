import pymysql

conn = pymysql.connect(host='localhost', user='root', password='12345',
                       db='homeplus',charset='utf8')

cur = conn.cursor()
sql = 'SELECT * FROM membertbl'
cur.execute(sql)
rows = cur.fetchall()
print(rows)
conn.close() # DB는 접속후 반드시 닫아줘야 함