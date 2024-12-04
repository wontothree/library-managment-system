# Library Mangement System

Library Mangement System Project using Tkinter and MySQL

# Structured Query Language

Devcontainer에 접속한다.

```bash
vscode ➜ /workspaces/sql (main) $ chmod +x connect_mysql.sh
vscode ➜ /workspaces/sql (main) $ ./connect_mysql.sh
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 9.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> 
```

```bash
USE [database_name];

SOURCE sales_orders_database.sql
```

## Financial Statement Database

Transaction Table

|id|date|amount|type|category|description|payment_method|created_at|update_at|
|---|---|---|---|---|---|---|---|---|

Impossible1379!

# Path

```bash
export PYTHONPATH="/Users/kevinliam/Desktop/anthony/development/library-management-system"
```

# ERD

```mermaid
erDiagram
    %% 엔티티 정의
    Member {
        int member_id PK
        string name
        string phone
        string address
        string email
        boolean is_withdrawn
        boolean is_vip
        date join_date
    }

    Book {
        int book_id PK
        string title
        string author
        string category_code
        string publisher
        year publication_year
        boolean is_new
        date purchase_date
        string condition
    }

    LoanRecord {
        int loan_id PK
        int member_id FK
        int book_id FK
        date loan_date
        date due_date
        date return_date
        boolean is_overdue
        int overdue_fee
    }

    LoanPolicy {
        int policy_id PK
        int max_loan_period
        int max_vip_loan_period
        int max_loan_count
        int max_vip_loan_count
        int fee_per_day
    }

    RoomReservation {
        int reservation_id PK
        int reserver_id FK
        int group_id FK 
        date reservation_date
        date usage_date
        string purpose
    }

    Group {
        int group_id PK
        string group_name
        string group_type
        int leader_id FK
        int member_count
        string age_group
    }

    GroupMembers {
        int group_id PK, FK
        int member_id PK, FK
    }

    BookRecommendation {
        int recommendation_id PK
        string status
        string book_title
        string author
        int recommender_id FK
        int group_id FK
        date recommendation_date
        boolean is_priority
    }

    LeadersMeetingRecord {
        int meeting_id PK
        date meeting_date
        text meeting_report
    }

    %% 관계 정의
    Member ||--o{ LoanRecord : "has loans"
    LoanRecord }o--|| Book : "involves"

    Member ||--o{ BookRecommendation : "makes"
    BookRecommendation }o--|| Group : "is associated with"

    Member ||--o{ RoomReservation : "makes reservations"
    Group ||--o{ RoomReservation : "has reservations"

    Member ||--o{ GroupMembers : "participates in"
    Group ||--o{ GroupMembers : "has members"

    Member ||--o{ Group : "leads"
    Group }|--|| Member : "is led by"

    Group ||--o{ LeadersMeetingRecord : "has meetings"
    LeadersMeetingRecord }o--|| Group : "belongs to"

    Book ||--o{ LoanRecord : "is borrowed in"

    %% 추가 설명:
    %% - Book 테이블의 condition은 ("NORMAL", "DAMAGED", "LOST", "REPAIR") 중 하나이다.
    %% - Group 테이블의 group_type은 ("BookClub", "SmallGroup") 중 하나이다.
    %% - BookRecommendation 테이블의 status는 ("WAIT", "ACCEPT", "DENY") 중 하나이다.
    %% - GroupMembers 테이블은 Member와 Group 간의 N:M 관계 관리.
    %% - RoomReservation의 group_id는 NULL 가능하며, 개인 예약 시 사용되지 않을 수 있음.
```