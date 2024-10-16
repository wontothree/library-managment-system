create table CUSTOMERS
(
    CustomerID        varchar(20) primary key,
    CustFirstName     varchar(250) not null,
    CustLastName      varchar(250) not null,
    CustStreetAddress varchar(250),
    CustCity          varchar(50),
    CustState         varchar(50),
    CustZipCode       varchar(12),
    CustPhoneNumber   varchar(20)
);


create table AGENTS
(
    AgentID          varchar(20) primary key,
    AgtFirstName     varchar(250) not null,
    AgtLastName      varchar(250) not null,
    AgtStreetAddress varchar(250),
    AgtCity          varchar(50),
    AgtState         varchar(50),
    AgtZipCode       varchar(12),
    AgtPhoneNumber   varchar(20),
    DateHired        DATETIME     not null,
    Salary           decimal,
    CommissionRate   decimal
);


create table ENTERTAINERS
(
    EntertainerID    varchar(20) primary key,
    EntStageName     varchar(250) not null,
    EntSSN           varchar(50),
    EntStreetAddress varchar(250),
    EntCity          varchar(50),
    EntState         varchar(50),
    EntZipCode       varchar(12),
    EntPhoneNumber   varchar(20),
    EntWebPage       varchar(1024),
    EntEmailAddress  varchar(1024),
    DateEntered      DATETIME,
    EntPricePerDay   decimal
);


create table ENGAGEMENTS
(
    EngagementNumber varchar(20) primary key,
    StartDate        date    not null,
    EndDate          date    not null,
    StartTime        time    not null,
    StopTime         time    not null,
    ContractPrice    decimal not null,
    CustomerID       varchar(20),
    AgentID          varchar(20),
    EntertainerID    varchar(20),

    foreign key (CustomerID) references CUSTOMERS (CustomerID),
    foreign key (AgentID) references AGENTS (AgentID),
    foreign key (EntertainerID) references ENTERTAINERS (EntertainerID)
);

create table MUSICAL_STYLES
(
    StyleID   varchar(20) primary key,
    StyleName varchar(250) not null
);

create table MUSICAL_PREFERENCES
(
    CustomerID varchar(20),
    StyleID    varchar(20),

    primary key (CustomerID, StyleID),
    foreign key (CustomerID) references CUSTOMERS (CustomerID),
    foreign key (StyleID) references MUSICAL_STYLES (StyleID)
);

create table ENTERTAINER_STYLES
(
    EntertainerID varchar(20),
    StyleID       varchar(20),

    primary key (EntertainerID, StyleID),
    foreign key (EntertainerID) references ENTERTAINERS (EntertainerID),
    foreign key (StyleID) references MUSICAL_STYLES (StyleID)
);

create table MEMBERS
(
    MemberID       varchar(20) primary key,
    MbrFirstName   varchar(250) not null,
    MbrLastName    varchar(250) not null,
    MbrPhoneNumber varchar(20),
    Gender         integer
);


create table ENTERTAINER_MEMBERS
(
    EntertainerID varchar(20),
    MemberID      varchar(20),
    Status        integer,

    primary key (EntertainerID, MemberID),
    foreign key (EntertainerID) references ENTERTAINERS (EntertainerID),
    foreign key (MemberID) references MEMBERS (MemberID)
);


create table ENGAGEMENTS_ARCHIVE
(
    EngagementNumber varchar(20) primary key,
    StartDate        date        not null,
    EndDate          date        not null,
    StartTime        time        not null,
    StopTime         time        not null,
    ContractPrice    decimal     not null,
    CustomerID       varchar(20) not null,
    AgentID          varchar(20) not null,
    EntertainerID    varchar(20) not null
);