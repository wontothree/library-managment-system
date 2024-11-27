-- CUSTOMERS 테이블 데이터 삽입
INSERT INTO CUSTOMERS (CustomerID, CustFirstName, CustLastName, CustStreetAddress, CustCity, CustState, CustZipCode, CustPhoneNumber) VALUES
('C001', 'John', 'Doe', '123 Main St', 'Springfield', 'IL', '62701', '555-1234'),
('C002', 'Jane', 'Smith', '456 Elm St', 'Chicago', 'IL', '60601', '555-5678'),
('C003', 'Alice', 'Johnson', '789 Oak St', 'Peoria', 'IL', '61602', '555-8765'),
('C004', 'Bob', 'Brown', '101 Pine St', 'Naperville', 'IL', '60540', '555-4321'),
('C005', 'Charlie', 'Davis', '202 Maple St', 'Aurora', 'IL', '60505', '555-1357'),
('C006', 'Eve', 'Wilson', '303 Cedar St', 'Rockford', 'IL', '61101', '555-2468'),
('C007', 'David', 'Clark', '404 Birch St', 'Evanston', 'IL', '60201', '555-3579'),
('C008', 'Grace', 'Martinez', '505 Spruce St', 'Schaumburg', 'IL', '60194', '555-4680'),
('C009', 'Frank', 'Harris', '606 Walnut St', 'Oak Park', 'IL', '60302', '555-5791'),
('C010', 'Hannah', 'Lewis', '707 Chestnut St', 'Wheaton', 'IL', '60187', '555-6802');

-- AGENTS 테이블 데이터 삽입
INSERT INTO AGENTS (AgentID, AgtFirstName, AgtLastName, AgtStreetAddress, AgtCity, AgtState, AgtZipCode, AgtPhoneNumber, DateHired, Salary, CommissionRate) VALUES
('A001', 'Sam', 'White', '1001 Agent Rd', 'Chicago', 'IL', '60601', '555-1111', '2020-01-15', 50000, 0.1),
('A002', 'Lisa', 'Green', '1002 Agent Rd', 'Springfield', 'IL', '62701', '555-2222', '2019-06-10', 55000, 0.12),
('A003', 'Tom', 'Black', '1003 Agent Rd', 'Peoria', 'IL', '61602', '555-3333', '2021-03-20', 60000, 0.15),
('A004', 'Nancy', 'Blue', '1004 Agent Rd', 'Naperville', 'IL', '60540', '555-4444', '2022-08-25', 52000, 0.11),
('A005', 'Michael', 'Red', '1005 Agent Rd', 'Aurora', 'IL', '60505', '555-5555', '2023-04-15', 53000, 0.13),
('A006', 'Laura', 'Gray', '1006 Agent Rd', 'Rockford', 'IL', '61101', '555-6666', '2018-11-30', 49000, 0.09),
('A007', 'Peter', 'Cyan', '1007 Agent Rd', 'Evanston', 'IL', '60201', '555-7777', '2020-12-01', 54000, 0.1),
('A008', 'Sophia', 'Magenta', '1008 Agent Rd', 'Schaumburg', 'IL', '60194', '555-8888', '2017-09-10', 58000, 0.14),
('A009', 'Alex', 'Orange', '1009 Agent Rd', 'Oak Park', 'IL', '60302', '555-9999', '2022-02-14', 62000, 0.16),
('A010', 'Julia', 'Violet', '1010 Agent Rd', 'Wheaton', 'IL', '60187', '555-0000', '2021-05-22', 60000, 0.15);

-- ENTERTAINERS 테이블 데이터 삽입
INSERT INTO ENTERTAINERS (EntertainerID, EntStageName, EntSSN, EntStreetAddress, EntCity, EntState, EntZipCode, EntPhoneNumber, EntWebPage, EntEmailAddress, DateEntered, EntPricePerDay) VALUES
('E001', 'DJ Cool', '123-45-6789', '2001 Performer Ln', 'Chicago', 'IL', '60601', '555-1234', 'www.djcool.com', 'djcool@example.com', '2020-01-15', 300.00),
('E002', 'Singing Star', '234-56-7890', '2002 Performer Ln', 'Springfield', 'IL', '62701', '555-5678', 'www.singingstar.com', 'singingstar@example.com', '2019-06-10', 400.00),
('E003', 'Dance Master', '345-67-8901', '2003 Performer Ln', 'Peoria', 'IL', '61602', '555-8765', 'www.dancemaster.com', 'dancemaster@example.com', '2021-03-20', 350.00),
('E004', 'Comedy King', '456-78-9012', '2004 Performer Ln', 'Naperville', 'IL', '60540', '555-4321', 'www.comedyking.com', 'comedyking@example.com', '2022-08-25', 450.00),
('E005', 'Magic Mike', '567-89-0123', '2005 Performer Ln', 'Aurora', 'IL', '60505', '555-1357', 'www.magicmike.com', 'magicmike@example.com', '2023-04-15', 500.00),
('E006', 'Acoustic Jenny', '678-90-1234', '2006 Performer Ln', 'Rockford', 'IL', '61101', '555-2468', 'www.acousticjenny.com', 'acousticjenny@example.com', '2018-11-30', 320.00),
('E007', 'Rock Band', '789-01-2345', '2007 Performer Ln', 'Evanston', 'IL', '60201', '555-3579', 'www.rockband.com', 'rockband@example.com', '2020-12-01', 700.00),
('E008', 'Jazz Trio', '890-12-3456', '2008 Performer Ln', 'Schaumburg', 'IL', '60194', '555-4680', 'www.jazztrio.com', 'jazztrio@example.com', '2017-09-10', 600.00),
('E009', 'Folk Singer', '901-23-4567', '2009 Performer Ln', 'Oak Park', 'IL', '60302', '555-5791', 'www.folksinger.com', 'folksinger@example.com', '2022-02-14', 330.00),
('E010', 'Pop Idol', '012-34-5678', '2010 Performer Ln', 'Wheaton', 'IL', '60187', '555-6802', 'www.popidol.com', 'popidol@example.com', '2021-05-22', 550.00);

-- ENGAGEMENTS 테이블 데이터 삽입
INSERT INTO ENGAGEMENTS (EngagementNumber, StartDate, EndDate, StartTime, StopTime, ContractPrice, CustomerID, AgentID, EntertainerID) VALUES
('ENG001', '2024-05-01', '2024-05-02', '18:00:00', '22:00:00', 1500.00, 'C001', 'A001', 'E001'),
('ENG002', '2024-06-10', '2024-06-11', '17:00:00', '21:00:00', 2000.00, 'C002', 'A002', 'E002'),
('ENG003', '2024-07-15', '2024-07-16', '19:00:00', '23:00:00', 2500.00, 'C003', 'A003', 'E003'),
('ENG004', '2024-08-20', '2024-08-21', '16:00:00', '20:00:00', 1800.00, 'C004', 'A004', 'E004'),
('ENG005', '2024-09-25', '2024-09-26', '20:00:00', '00:00:00', 3000.00, 'C005', 'A005', 'E005'),
('ENG006', '2024-10-30', '2024-10-31', '18:30:00', '22:30:00', 2200.00, 'C006', 'A006', 'E006'),
('ENG007', '2024-11-05', '2024-11-06', '17:30:00', '21:30:00', 1700.00, 'C007', 'A007', 'E007'),
('ENG008', '2024-12-01', '2024-12-02', '19:30:00', '23:30:00', 2800.00, 'C008', 'A008', 'E008'),
('ENG009', '2024-12-15', '2024-12-16', '20:00:00', '00:00:00', 3200.00, 'C009', 'A009', 'E009'),
('ENG010', '2024-12-20', '2024-12-21', '18:00:00', '22:00:00', 1900.00, 'C010', 'A010', 'E010');

-- MUSICAL_STYLES 데이터 삽입
INSERT INTO MUSICAL_STYLES (StyleID, StyleName) VALUES
('S001', 'Jazz'),
('S002', 'Rock'),
('S003', 'Classical'),
('S004', 'Pop'),
('S005', 'Hip Hop'),
('S006', 'Country'),
('S007', 'Reggae');

-- MUSICAL_PREFERENCES 데이터 삽입
INSERT INTO MUSICAL_PREFERENCES (CustomerID, StyleID) VALUES
('C001', 'S001'),
('C001', 'S003'),
('C002', 'S002'),
('C002', 'S004'),
('C003', 'S005'),
('C004', 'S006'),
('C005', 'S007'),
('C006', 'S001'),
('C007', 'S002');

-- ENTERTAINER_STYLES 데이터 삽입
INSERT INTO ENTERTAINER_STYLES (EntertainerID, StyleID) VALUES
('E001', 'S001'),
('E001', 'S004'),
('E002', 'S002'),
('E003', 'S005'),
('E004', 'S003'),
('E005', 'S006'),
('E006', 'S007');

-- MEMBERS 데이터 삽입
INSERT INTO MEMBERS (MemberID, MbrFirstName, MbrLastName, MbrPhoneNumber, Gender) VALUES
('M001', 'John', 'Doe', '123-456-7890', 1),
('M002', 'Jane', 'Smith', '987-654-3210', 2),
('M003', 'Emily', 'Johnson', '555-555-5555', 1),
('M004', 'Michael', 'Brown', '444-444-4444', 1),
('M005', 'Jessica', 'Williams', '333-333-3333', 2);

-- ENTERTAINER_MEMBERS 데이터 삽입
INSERT INTO ENTERTAINER_MEMBERS (EntertainerID, MemberID, Status) VALUES
('E001', 'M001', 1),
('E001', 'M002', 1),
('E002', 'M003', 2),
('E003', 'M004', 1),
('E004', 'M005', 1),
('E005', 'M001', 2),
('E006', 'M002', 1);

-- ENGAGEMENTS_ARCHIVE 데이터 삽입
INSERT INTO ENGAGEMENTS_ARCHIVE (EngagementNumber, StartDate, EndDate, StartTime, StopTime, ContractPrice, CustomerID, AgentID, EntertainerID) VALUES
('ENG001', '2024-01-10', '2024-01-11', '18:00:00', '22:00:00', 2000.00, 'C001', 'A001', 'E001'),
('ENG002', '2024-02-15', '2024-02-16', '19:00:00', '23:00:00', 2500.00, 'C002', 'A002', 'E002'),
('ENG003', '2024-03-20', '2024-03-21', '20:00:00', '00:00:00', 3000.00, 'C003', 'A003', 'E003'),
('ENG004', '2024-04-25', '2024-04-26', '17:00:00', '21:00:00', 1800.00, 'C004', 'A004', 'E004'),
('ENG005', '2024-05-30', '2024-05-31', '18:30:00', '22:30:00', 2200.00, 'C005', 'A005', 'E005');
