SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS TRANSACTIONS;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE TRANSACTIONS (
    Id INT PRIMARY KEY AUTO_INCREMENT,    -- 고유 식별자
    Date DATE NOT NULL,                   -- 날짜
    Amount DECIMAL(15, 2) NOT NULL,       -- 금액 (소수 포함)
    Type VARCHAR(20) NOT NULL,            -- 유형 (예: Income, Expense)
    Category VARCHAR(50),                 -- 카테고리 (예: Food, Rent)
    Description TEXT                      -- 설명
);

INSERT INTO TRANSACTIONS (Date, Amount, Type, Category, Description)
VALUES 
    ('2024-09-26', 830820, 'Expense', 'Air Plane', 'Incheon 2 Milan'),
    ('2024-09-29', 68767, 'Expense', 'Conference', 'CDC Conference'),
    ('2024-10-12', 189907, 'Expense', 'AirBnb', '3박 Milan AirBnb'),
    ('2024-10-23', 422593, 'Expense', 'Conference', 'CES Trend Report'),
    ('2024-10-24', 3632800, 'Income', 'Scholarship', 'InBody Scholarship'),
    ('2024-10-24', 821343, 'Expense', 'Air Plane', 'Las Vegas 2 Incheon'),
    ('2024-09-26', 1123000, 'Expense', 'Air Plane', 'Budapest 2 Los Angeles');
