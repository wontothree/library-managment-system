-- CUSTOMERS 데이터 삽입
INSERT INTO CUSTOMERS (CustomerID, CustFirstName, CustLastName, CustStreetAddress, CustCity, CustState, CustZipCode, CustAreaCode, CustPhoneNumber) VALUES 
('C001', 'John', 'Doe', '123 Elm St', 'New York', 'NY', '10001', '212', '555-1234'),
('C002', 'Jane', 'Smith', '456 Maple St', 'Los Angeles', 'CA', '90001', '213', '555-5678'),
('C003', 'Emily', 'Jones', '789 Oak St', 'Chicago', 'IL', '60601', '312', '555-8765'),
('C004', 'Michael', 'Brown', '321 Pine St', 'Houston', 'TX', '77001', '713', '555-4321'),
('C005', 'Sarah', 'Davis', '654 Cedar St', 'Phoenix', 'AZ', '85001', '602', '555-3456'),
('C006', 'James', 'Wilson', '987 Birch St', 'Philadelphia', 'PA', '19101', '215', '555-6543'),
('C007', 'Patricia', 'Taylor', '135 Spruce St', 'San Antonio', 'TX', '78201', '210', '555-7890'),
('C008', 'Robert', 'Anderson', '246 Redwood St', 'San Diego', 'CA', '92101', '619', '555-0987'),
('C009', 'David', 'Thomas', '357 Willow St', 'Dallas', 'TX', '75201', '214', '555-3210'),
('C010', 'Linda', 'Moore', '468 Palm St', 'San Jose', 'CA', '95101', '408', '555-5670');

-- EMPLOYEES 데이터 삽입
INSERT INTO EMPLOYEES (EmployeeID, EmpFirstName, EmpLastName, EmpStreetAddress, EmpCity, EmpState, EmpZipCode, EmpAreaCode, EmpPhoneNumber) VALUES 
('E001', 'Alice', 'Johnson', '234 Elm St', 'New York', 'NY', '10002', '212', '555-2222'),
('E002', 'Bob', 'Williams', '567 Maple St', 'Los Angeles', 'CA', '90002', '213', '555-3333'),
('E003', 'Charlie', 'Brown', '890 Oak St', 'Chicago', 'IL', '60602', '312', '555-4444'),
('E004', 'Diana', 'Jones', '123 Pine St', 'Houston', 'TX', '77002', '713', '555-5555'),
('E005', 'Eva', 'Davis', '456 Cedar St', 'Phoenix', 'AZ', '85002', '602', '555-6666'),
('E006', 'Frank', 'Wilson', '789 Birch St', 'Philadelphia', 'PA', '19102', '215', '555-7777'),
('E007', 'Grace', 'Taylor', '135 Spruce St', 'San Antonio', 'TX', '78202', '210', '555-8888'),
('E008', 'Henry', 'Anderson', '246 Redwood St', 'San Diego', 'CA', '92102', '619', '555-9999'),
('E009', 'Isla', 'Thomas', '357 Willow St', 'Dallas', 'TX', '75202', '214', '555-0000'),
('E010', 'Jack', 'Moore', '468 Palm St', 'San Jose', 'CA', '95102', '408', '555-1111');

-- ORDERS 데이터 삽입
INSERT INTO ORDERS (OrderNumber, OrderDate, ShipDate, CustomerID, EmployeeID, OrderTotal) VALUES 
('O001', '2024-01-01 10:00:00', '2024-01-02 10:00:00', 'C001', 'E001', 100.50),
('O002', '2024-01-05 11:30:00', '2024-01-06 11:30:00', 'C002', 'E002', 200.00),
('O003', '2024-01-10 12:45:00', '2024-01-11 12:45:00', 'C003', 'E003', 150.75),
('O004', '2024-01-15 13:30:00', '2024-01-16 13:30:00', 'C004', 'E004', 250.00),
('O005', '2024-01-20 14:00:00', '2024-01-21 14:00:00', 'C005', 'E005', 300.25),
('O006', '2024-01-25 15:00:00', '2024-01-26 15:00:00', 'C006', 'E006', 125.00),
('O007', '2024-01-30 16:00:00', '2024-01-31 16:00:00', 'C007', 'E007', 180.50),
('O008', '2024-02-01 09:30:00', '2024-02-02 09:30:00', 'C008', 'E008', 220.00),
('O009', '2024-02-05 10:15:00', '2024-02-06 10:15:00', 'C009', 'E009', 160.75),
('O010', '2024-02-10 11:00:00', '2024-02-11 11:00:00', 'C010', 'E010', 190.00);

-- CATEGORIES 데이터 삽입
INSERT INTO CATEGORIES (CategoryID, CategoryDescription) VALUES 
('CAT001', 'Electronics'),
('CAT002', 'Home Appliances'),
('CAT003', 'Books'),
('CAT004', 'Clothing'),
('CAT005', 'Toys'),
('CAT006', 'Sports Equipment'),
('CAT007', 'Automotive'),
('CAT008', 'Furniture'),
('CAT009', 'Beauty Products'),
('CAT010', 'Gardening');

-- PRODUCTS 데이터 삽입
INSERT INTO PRODUCTS (ProductNumber, ProductName, ProductDescription, RetailPrice, QuantityOnHand, CategoryID) VALUES 
('P001', 'Laptop', '15 inch laptop', 999.99, 50, 'CAT001'),
('P002', 'Refrigerator', 'Double door refrigerator', 799.99, 30, 'CAT002'),
('P003', 'Novel', 'Best selling novel', 19.99, 100, 'CAT003'),
('P004', 'T-Shirt', 'Cotton T-shirt', 15.99, 200, 'CAT004'),
('P005', 'Action Figure', 'Superhero action figure', 29.99, 150, 'CAT005'),
('P006', 'Tennis Racket', 'Professional tennis racket', 89.99, 75, 'CAT006'),
('P007', 'Car Battery', '12V car battery', 120.00, 40, 'CAT007'),
('P008', 'Sofa', 'Comfortable sofa', 499.99, 20, 'CAT008'),
('P009', 'Lipstick', 'Long lasting lipstick', 25.00, 60, 'CAT009'),
('P010', 'Shovel', 'Garden shovel', 18.50, 80, 'CAT010');

-- ORDER_DETAILS 데이터 삽입
INSERT INTO ORDER_DETAILS (OrderNumber, ProductNumber, QuotedPrice, QuantityOrdered) VALUES 
('O001', 'P001', 999.99, 1),
('O001', 'P003', 19.99, 2),
('O002', 'P002', 799.99, 1),
('O003', 'P004', 15.99, 3),
('O004', 'P005', 29.99, 4),
('O005', 'P001', 999.99, 2),
('O006', 'P006', 89.99, 1),
('O007', 'P007', 120.00, 2),
('O008', 'P008', 499.99, 1),
('O009', 'P009', 25.00, 3);

-- VENDORS 데이터 삽입
INSERT INTO VENDORS (VendorID, VendName, VendStreetAddress, VendCity, VendState, VendZipCode, VendPhoneNumber, VendFaxNumber, VendWebPage, VendEmailAddress) VALUES 
('V001', 'Vendor A', '123 Main St', 'Atlanta', 'GA', '30301', '404-555-1000', '404-555-1001', 'http://vendora.com', 'contact@vendora.com'),
('V002', 'Vendor B', '456 First St', 'New York', 'NY', '10001', '212-555-2000', '212-555-2001', 'http://vendorb.com', 'contact@vendorb.com'),
('V003', 'Vendor C', '789 Second St', 'Los Angeles', 'CA', '90001', '213-555-3000', '213-555-3001', 'http://vendorc.com', 'contact@vendorc.com'),
('V004', 'Vendor D', '321 Third St', 'Chicago', 'IL', '60601', '312-555-4000', '312-555-4001', 'http://vendord.com', 'contact@vendord.com'),
('V005', 'Vendor E', '654 Fourth St', 'Houston', 'TX', '77001', '713-555-5000', '713-555-5001', 'http://vendore.com', 'contact@vendore.com'),
('V006', 'Vendor F', '987 Fifth St', 'Phoenix', 'AZ', '85001', '602-555-6000', '602-555-6001', 'http://vendorf.com', 'contact@vendorf.com'),
('V007', 'Vendor G', '135 Sixth St', 'Philadelphia', 'PA', '19101', '215-555-7000', '215-555-7001', 'http://vendorg.com', 'contact@vendorg.com'),
('V008', 'Vendor H', '246 Seventh St', 'San Antonio', 'TX', '78201', '210-555-8000', '210-555-8001', 'http://vendorh.com', 'contact@vendorh.com'),
('V009', 'Vendor I', '357 Eighth St', 'San Diego', 'CA', '92101', '619-555-9000', '619-555-9001', 'http://vendori.com', 'contact@vendori.com'),
('V010', 'Vendor J', '468 Ninth St', 'Dallas', 'TX', '75201', '214-555-0000', '214-555-0001', 'http://vendorj.com', 'contact@vendorj.com');
