---
-- Example Schema provided by www.springfuse.com
--
DROP ALL OBJECTS;

CREATE TABLE ADDRESS (
    address_id                  int        not null IDENTITY,
    street_name                 varchar(255)    ,
    city                        varchar(255)    not null,
    version                     int        default 0,
    primary key (address_id)
);

CREATE TABLE ACCOUNT (
    account_id              char(32) not null,
    login                   varchar(255) not null,
    password                varchar(255) not null,
    email                   varchar(255) not null,
    is_enabled              bool,
    address_id              int,
    version                 int default 0,

    constraint account_unique_1 unique (login),
    constraint account_unique_2 unique (email),
    constraint account_fk_1 foreign key (address_id) references ADDRESS,
    primary key (account_id)
);


CREATE TABLE CONTACT_INFO (
	id 						int        not null IDENTITY,
    account_id              char(32) not null,	
    civility                char(2),
    last_name               varchar(255),
    first_name              varchar(255),
    birth_date              timestamp,
    other_date              timestamp,
    constraint contact_info_unique_1 unique (account_id),    
    constraint contact_info_fk_1 foreign key (account_id) references ACCOUNT,    
    primary key (id)    
);


CREATE TABLE ROLE (
    role_id         int        generated by default as identity,
    role_name     	varchar(255)    not null,

    constraint role_unique_1 unique (role_name),
    primary key (role_id)
);

CREATE TABLE ACCOUNT_ROLE (
    account_id  char(32) not null,
    role_id     int not null,

    constraint account_role_fk_1 foreign key (account_id) references ACCOUNT,
    constraint account_role_fk_2 foreign key (role_id) references ROLE,
    primary key (account_id, role_id)
);

CREATE TABLE DOCUMENT (
    document_id                 char(32)        not null,
    account_id                  char(32)        not null,
    document_content_type       varchar(255)    not null,
    document_size               int         not null,
    document_file_name          varchar(255)    not null,
    document_binary             bytea,
    version                     int        default 0,
    constraint document_fk_1 foreign key (account_id) references ACCOUNT,
    primary key (document_id)
);

CREATE TABLE BOOK (
    book_id                     int        not null IDENTITY,
    account_id                  char(32),
    title                       varchar(255)    not null,
    number_of_pages             int         not null,
    version                     int        default 0,

    constraint book_fk_1 foreign key (account_id) references ACCOUNT,
    primary key (book_id)
);


CREATE TABLE MORE_TYPES_DEMO (
    more_types_demo_id            int        not null IDENTITY,
	number_int					int,
	number_long					bigint,
	number_double				float,
	number_float				real,
	number_big_integer          DECIMAL(20, 0),
	number_big_decimal			DECIMAL(20, 2),
	date_java_temporal_date	     date,
	date_java_temporal_timestamp timestamp,
	date_joda					date,
	date_time_joda				timestamp,
    version                     int default 0,
    primary key (more_types_demo_id)
);

-- has a composite PK
CREATE TABLE LEGACY (
    name varchar(16) not null,
    code varchar(8) not null,
    dept int not null,
    extra_info varchar(255) not null,
    primary key (name, code, dept)
);

INSERT INTO ADDRESS (street_name, city) values('Avenue des champs Elysées', 'Paris');
INSERT INTO ADDRESS (street_name, city) values('Park avenue', 'New-York');
INSERT INTO ADDRESS (street_name, city) values('Tochomae', 'Tokyo');

INSERT INTO ACCOUNT (account_id, login, password, email, is_enabled, address_id) VALUES ('0000000000000000000000000000001', 'admin', 'admin', 'admin@example.com', true, 1);
INSERT INTO ACCOUNT (account_id, login, password, email, is_enabled, address_id) VALUES ('0000000000000000000000000000002', 'user',  'user',  'user@example.com', true, 2);
INSERT INTO ACCOUNT (account_id, login, password, email, is_enabled, address_id) VALUES ('0000000000000000000000000000003', 'demo',  'demo',  'demo@example.com', true, 3);

INSERT INTO ROLE (role_name) VALUES ('ROLE_ADMIN');
INSERT INTO ROLE (role_name) VALUES ('ROLE_USER');

INSERT INTO ACCOUNT_ROLE (account_id, role_id) VALUES ('0000000000000000000000000000001', 1);
INSERT INTO ACCOUNT_ROLE (account_id, role_id) VALUES ('0000000000000000000000000000001', 2);
INSERT INTO ACCOUNT_ROLE (account_id, role_id) VALUES ('0000000000000000000000000000002', 2);
INSERT INTO ACCOUNT_ROLE (account_id, role_id) VALUES ('0000000000000000000000000000003', 2);

INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000001', 'Prime Faces User Guide' , 444);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000001', 'Spring Web Flow Reference Guide', 108);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000001', 'Spring 3.0 Reference Documentation', 770);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000001', 'Java Persistence with Hibernate', 880);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000001', 'Effective Java' , 350);

INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000002', 'How to create a web app' , 100);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000002', 'How to deal with large projects' , 544);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000002', 'How to speed up project dev?' , 453);

INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000003', 'Complete history of the universe' , 9809900);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000003', 'The Solar System' , 800);
INSERT INTO BOOK(account_id, title, number_of_pages) VALUES ('0000000000000000000000000000003', 'The Rolling Stones' , 1800);

INSERT INTO LEGACY (name, code, dept, extra_info) VALUES ('name1', 'code1', 1, 'extra1');
INSERT INTO LEGACY (name, code, dept, extra_info) VALUES ('name2', 'code2', 2, 'extra2');
INSERT INTO LEGACY (name, code, dept, extra_info) VALUES ('name3', 'code3', 3, 'extra3');
INSERT INTO LEGACY (name, code, dept, extra_info) VALUES ('name4', 'code4', 4, 'extra4');
