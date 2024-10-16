create table CUSTOMERS
(
    CustomerID        varchar(20) primary key,
    CustFirstName     varchar(256) not null,
    CustLastName      varchar(256) not null,
    CustStreetAddress varchar(256),
    CustCity          varchar(100),
    CustState         varchar(100),
    CustZipCode       varchar(12),
    CustAreaCode      varchar(12),
    CustPhoneNumber   varchar(50)
);


create table EMPLOYEES
(
    EmployeeID       varchar(20) primary key,
    EmpFirstName     varchar(256) not null,
    EmpLastName      varchar(256) not null,
    EmpStreetAddress varchar(256),
    EmpCity          varchar(100),
    EmpState         varchar(100),
    EmpZipCode       varchar(12),
    EmpAreaCode      varchar(12),
    EmpPhoneNumber   varchar(50)
);


create table ORDERS
(
    OrderNumber varchar(20) primary key,
    OrderDate   DATETIME not null,
    ShipDate    DATETIME not null,
    CustomerID  varchar(20),
    EmployeeID  varchar(20),
    OrderTotal  decimal  not null, -- total price of the items in the order

    foreign key (CustomerID) references CUSTOMERS (CustomerID),
    foreign key (EmployeeID) references EMPLOYEES (EmployeeID)
);


create table CATEGORIES
(
    CategoryID          varchar(20) primary key,
    CategoryDescription varchar(1024) not null
);


create table PRODUCTS
(
    ProductNumber      varchar(20) primary key,
    ProductName        varchar(256) not null,
    ProductDescription varchar(1024),
    RetailPrice        decimal      not null,
    QuantityOnHand     integer      not null,
    CategoryID         varchar(20),

    foreign key (CategoryID) references CATEGORIES (CategoryID)
);


create table ORDER_DETAILS
(
    OrderNumber     varchar(20) not null,
    ProductNumber   varchar(20) not null,
    QuotedPrice     decimal     not null,
    QuantityOrdered integer     not null,

    primary key (OrderNumber, ProductNumber),
    foreign key (ProductNumber) references PRODUCTS (ProductNumber),
    foreign key (OrderNumber) references ORDERS (OrderNumber)
);


create table VENDORS
(
    VendorID          varchar(20) primary key,
    VendName          varchar(256) not null,
    VendStreetAddress varchar(256),
    VendCity          varchar(100),
    VendState         varchar(100),
    VendZipCode       varchar(12),
    VendPhoneNumber   varchar(50),
    VendFaxNumber     varchar(50),
    VendWebPage       varchar(1024),
    VendEmailAddress  varchar(1024)
);


create table PRODUCT_VENDORS
(
    ProductNumber  varchar(20) not null,
    VendorID       varchar(20) not null,
    WholesalePrice decimal,
    DaysToDeliver  integer,

    primary key (ProductNumber, VendorID),
    foreign key (ProductNumber) references PRODUCTS (ProductNumber),
    foreign key (VendorID) references VENDORS (VendorID)
);


create table ORDERS_ARCHIVE
(
    OrderNumber varchar(20) primary key,
    OrderDate   DATETIME    not null,
    ShipDate    DATETIME    not null,
    CustomerID  varchar(20) not null,
    EmployeeID  varchar(20) not null,
    OrderTotal  decimal     not null
);


create table ORDER_DETAILS_ARCHIVE
(
    OrderNumber     varchar(20) not null,
    ProductNumber   varchar(20) not null,
    QuotedPrice     decimal     not null,
    QuantityOrdered integer     not null,

    primary key (OrderNumber, ProductNumber),
    foreign key (OrderNumber) references ORDERS_ARCHIVE (OrderNumber)
);
