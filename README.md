# Structured Query Language

MySQL에 접속한다.

```bash
mysql.server start
mysql -u root -p
```

Database를 조회한다.

```bash
SHOW DATABASES;
```

Database에 접속한다.

```bash
USE [DATABASE_NAME];
```

특정 데이터베이스 테이블 조회한다.

```bash
SHOW TABLES;
```

테이블 내용 조회

```bash
SELECT * FROM [TABLE_NAME];
```

테이블 column 정보 조회

```bash
DESCRIBE [TABLE_NAME];
```

지정된 SQL 파일의 내용을 현재 선택된 데이터베이스에 적용한다.

```bash
source /Users/kevinliam/Desktop/anthony/development/sql/sales_orders_data.sql;

source /Users/kevinliam/Desktop/anthony/development/sql/entertainment_agency_database.sql;
source /Users/kevinliam/Desktop/anthony/development/sql/school_scheduling_database.sql;
source /Users/kevinliam/Desktop/anthony/development/sql/bowling_league_database.sql;
source /Users/kevinliam/Desktop/anthony/development/sql/receipts_database.sql;
```
