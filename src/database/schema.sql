-- Members 테이블 정의
CREATE TABLE members (
    member_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    street_address TEXT NOT NULL,
    email_address TEXT UNIQUE NOT NULL,
    withdrawn_at DATE DEFAULT NULL,
    is_vip_member BOOLEAN DEFAULT FALSE,
    account_created_at DATE DEFAULT CURRENT_DATE
);

-- Groups 테이블 정의
CREATE TABLE groups (
    group_id INTEGER PRIMARY KEY AUTOINCREMENT,
    group_name TEXT NOT NULL,
    leader_id INTEGER NOT NULL,
    FOREIGN KEY (leader_id) REFERENCES members (member_id) ON DELETE CASCADE
);

-- Member-Group 관계 테이블 정의
CREATE TABLE member_group (
    member_id INTEGER NOT NULL,
    group_id INTEGER NOT NULL,
    joined_at DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (member_id, group_id),
    FOREIGN KEY (member_id) REFERENCES members (member_id) ON DELETE CASCADE,
    FOREIGN KEY (group_id) REFERENCES groups (group_id) ON DELETE CASCADE
);

-- Clubs 테이블 정의
CREATE TABLE clubs (
    club_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_name TEXT NOT NULL,
    leader_id INTEGER NOT NULL,
    FOREIGN KEY (leader_id) REFERENCES members (member_id) ON DELETE CASCADE
);

-- Member-Club 관계 테이블 정의
CREATE TABLE member_club (
    member_id INTEGER NOT NULL,
    club_id INTEGER NOT NULL,
    joined_at DATE DEFAULT CURRENT_DATE,
    PRIMARY KEY (member_id, club_id),
    FOREIGN KEY (member_id) REFERENCES members (member_id) ON DELETE CASCADE,
    FOREIGN KEY (club_id) REFERENCES clubs (club_id) ON DELETE CASCADE
);

-- Books 테이블 정의
CREATE TABLE books (
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_name TEXT NOT NULL,
    author TEXT NOT NULL,
    publisher TEXT NOT NULL,
    publication_date DATE NOT NULL,
    is_domestic BOOLEAN NOT NULL,
    purchase_date DATE NOT NULL,
    category TEXT NOT NULL
);

-- Loan 테이블 정의
CREATE TABLE loan (
    loan_id INTEGER PRIMARY KEY AUTOINCREMENT,
    member_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    loan_date DATE DEFAULT CURRENT_DATE,
    return_date DATE DEFAULT NULL,
    FOREIGN KEY (member_id) REFERENCES members (member_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books (book_id) ON DELETE CASCADE
);
