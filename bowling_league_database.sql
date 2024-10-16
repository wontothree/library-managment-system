create table TOURNAMENTS
(
    TourneyID       varchar(20) primary key,
    TourneyDate     date         not null,
    TourneyLocation varchar(250) not null
);

create table TEAMS
(
    TeamID    varchar(20) primary key,
    TeamName  varchar(250) not null,
    CaptainID varchar(20)
);

create table BOWLERS
(
    BowlerID             varchar(20) primary key,
    BowlerLastName       varchar(250) not null,
    BowlerFirstName      varchar(250) not null,
    BowlerMiddleInit     varchar(250) not null,
    BowlerStreetAddress  varchar(100),
    BowlerCity           varchar(50),
    BowlerState          varchar(50),
    BowlerZipCode        varchar(12),
    BowlerPhoneNumber    varchar(50),
    TeamID               varchar(20),
    BowlerTotalPins      integer,
    BowlerGamesBowled    integer,
    BowlerCurrentAverage decimal,
    BowlerCurrentHcp     decimal,

    foreign key (TeamID) references TEAMS (TeamID)
);


create table TOURNEY_MATCHES
(
    MatchID        varchar(20) primary key,
    TourneyID      varchar(20),
    Lanes          integer,
    OddLaneTeamID  varchar(20),
    EvenLaneTeamID varchar(20),

    foreign key (TourneyID) references TOURNAMENTS (TourneyID),
    foreign key (OddLaneTeamID) references TEAMS (TeamID),
    foreign key (EvenLaneTeamID) references TEAMS (TeamID)
);


create table MATCH_GAMES
(
    MatchID       varchar(20),
    GameNumber    integer,
    WinningTeamID varchar(20),

    primary key (MatchID, GameNumber),
    foreign key (MatchID) references TOURNEY_MATCHES (MatchID),
    foreign key (WinningTeamID) references TEAMS (TeamID)
);


create table BOWLER_SCORES
(
    MatchID       varchar(20),
    GameNumber    integer,
    BowlerID      varchar(20),
    RawScore      integer,
    HandiCapScore integer,
    WonGame       integer,

    primary key (MatchID, GameNumber, BowlerID),
    foreign key (MatchID) references MATCH_GAMES (MatchID),
    foreign key (GameNumber) references MATCH_GAMES (GameNumber),
    foreign key (BowlerID) references BOWLERS (BowlerID)
);


create table TOURNAMENTS_ARCHIVE
(
    TourneyID       varchar(20) primary key,
    TourneyDate     date,
    TourneyLocation varchar(100)
);

create table TOURNEY_MATCHES_ARCHIVE
(
    MatchID        varchar(20) primary key,
    TourneyID      varchar(20),
    Lanes          integer,
    OddLaneTeamID  varchar(20),
    EvenLaneTeamID varchar(20),

    foreign key (TourneyID) references TOURNAMENTS_ARCHIVE (TourneyID)
);


create table MATCH_GAMES_ARCHIVE
(
    MatchID       varchar(20),
    GameNumber    integer,
    WinningTeamID varchar(20),

    primary key (MatchID, GameNumber),
    foreign key (MatchID) references TOURNEY_MATCHES_ARCHIVE (MatchID)
    foreign key (WinningTeamID) references TEAMS (TeamID) -- 
);


create table BOWLER_SCORES_ARCHIVE
(
    MatchID       varchar(20),
    GameNumber    integer,
    BowlerID      varchar(20),
    RawScore      integer,
    HandiCapScore integer,
    WonGame       integer,

    primary key (MatchID, GameNumber, BowlerID),
    -- foreign key (MatchID) references MATCH_GAMES_ARCHIVE (MatchID),
    foreig