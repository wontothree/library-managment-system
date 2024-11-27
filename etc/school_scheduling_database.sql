create table FACULTY
(
    StaffID varchar(20) primary key,
    Title   varchar(256) not null,
    Status  varchar(50)  not null,
    Tenured varchar(150) not null
);


create table STAFF
(
    StaffID          varchar(20) primary key,
    StfFirstName     varchar(100) not null,
    StfLastName      varchar(100) not null,
    StfStreetAddress varchar(100),
    StfCity          varchar(100),
    StfState         varchar(100),
    StfZipCode       varchar(12),
    StfAreaCode      varchar(12),
    StfPhoneNumber   varchar(50),
    Salary           decimal,
    DateHired        DATETIME     not null,
    Position         varchar(50)
);

create table CATEGORIES
(
    CategoryID          varchar(20) primary key,
    CategoryDescription varchar(1024),
    DepartmentID        varchar(20) not null
);

create table DEPARTMENTS
(
    DepartmentID varchar(20) primary key,
    DeptName     varchar(100),
    DeptChair    varchar(20) not null,

    foreign key (DeptChair) references STAFF (StaffID)
);


create table FACULTY_CATEGORIES
(
    StaffID    varchar(20),
    CategoryID varchar(20),
    primary key (StaffID, CategoryID),
    foreign key (StaffID) references FACULTY (StaffID),
    foreign key (CategoryID) references CATEGORIES (CategoryID)
);


create table SUBJECTS
(
    SubjectID          varchar(20) primary key,
    CategoryID         varchar(20),
    SubjectCode        varchar(50),
    SubjectName        varchar(256),
    SubjectPreReq      varchar(1024),
    SubjectDescription varchar(1024),
    foreign key (CategoryID) references CATEGORIES (CategoryID)
);


create table FACULTY_SUBJECTS
(
    StaffID           varchar(20),
    SubjectID         varchar(20),
    ProficiencyRating decimal,
    primary key (StaffID, SubjectID),
    foreign key (StaffID) references STAFF (StaffID),
    foreign key (SubjectID) references SUBJECTS (SubjectID)
);

create table BUILDINGS
(
    BuildingCode         varchar(20) primary key,
    BuildingName         varchar(256) not null,
    NumberOfFloors       integer,
    ElevatorAccess       integer,
    SiteParkingAvailable integer
);

create table CLASSROOMS
(
    ClassRoomID    varchar(20) primary key,
    BuildingCode   varchar(20),
    PhoneAvailable varchar(50),
    foreign key (BuildingCode) references BUILDINGS (BuildingCode)
);

create table CLASSES
(
    ClassID           varchar(20) primary key,
    SubjectID         varchar(20),
    ClassRoomID       varchar(20),
    Credits           integer,
    StartDate         TIME,
    StartTime         TIME,
    Duration          integer, -- in hours
    MondaySchedule    integer, -- 0 or 1
    TuesdaySchedule   integer,
    WednesdaySchedule integer,
    ThursdaySchedule  integer,
    FridaySchedule    integer,
    SaturdaySchedule  integer,

    foreign key (SubjectID) references SUBJECTS (SubjectID),
    foreign key (ClassRoomID) references CLASSROOMS (ClassRoomID)
);


create table FACULTY_CLASSES
(
    StaffID varchar(20),
    ClassID varchar(20),

    primary key (StaffID, ClassID),
    foreign key (StaffID) references STAFF (StaffID),
    foreign key (ClassID) references CLASSES (ClassID)
);

create table MAJORS
(
    MajorID varchar(20) primary key,
    Major   varchar(250)
);


create table STUDENT_CLASS_STATUS
(
    CategoryID          varchar(20) primary key,
    CategoryDescription varchar(1024)
);

create table STUDENTS
(
    StudentID         varchar(20) primary key,
    StudFirstName     varchar(100) not null,
    StudLastName      varchar(100) not null,
    StudStreetAddress varchar(100),
    StudCity          varchar(50),
    StudState         varchar(50),
    StudZipCode       varchar(12),
    StudAreaCode      varchar(12),
    StudPhoneNumber   varchar(50),
    StudGPA           decimal(4, 2),
    StudMajor         varchar(20),

    foreign key (StudMajor) references MAJORS (MajorID)
);

create table STUDENT_SCHEDULES
(
    ClassID     varchar(20),
    StudentID   varchar(20),
    ClassStatus varchar(20),
    Grade       decimal(4, 2),

    primary key (ClassID, StudentID),
    foreign key (ClassID) references CLASSES (ClassID),
    foreign key (StudentID) references STUDENTS (StudentID),
    foreign key (ClassStatus) references STUDENT_CLASS_STATUS (CategoryID)
);