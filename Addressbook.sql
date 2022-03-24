--- UC1 ----
create database addressbook_service;
use addressbook_service;

---UC2----
create table addressbook_service
(
firstname varchar(20),
lastname varchar(20),
address varchar(100),
city varchar(20),
state varchar(20),
zip int,
phone_no bigint,
email varchar(100)
);

select * from addressbook_service

---UC3----
insert into addressbook_service values
('milan', 'chatterjee', 'kendua','dhn','jharkhand',828006,9282982,'ila@jdwkl.com' ),
('virender', 'yadav', 'putki','dhn','jharkhand',828036,8283516,'eoei@jsklkl.com' ),
('chotu', 'kr', 'jharia','dhn','jharkhand',829896,251422,'chwoowo@nsml.com' )

---UC4----
update addressbook_service set lastname = 'kumar' where firstname = 'chotu';

---UC5----
delete addressbook_service where firstname = 'milan';

----UC6----
select * from addressbook_service where city = 'dhn';
select * from addressbook_service where state = 'jharkhand';

----UC7----
select count(city) as numOfRecords from addressbook_service;
select count(state) as numOfRecords from addressbook_service;

----UC8-----
select firstname from addressbook_service ORDER BY city asc;
select lastname from addressbook_service ORDER BY state desc;

----UC9----
insert into addressbook_service values
('karan', 'kr', 'kus','bardh','wb',828006,9282982,'ila@jdwkl.com' ),
('agnip', 'karmakar', 'newtown','kol','wb',828036,8283516,'eoei@jsklkl.com' ),
('nishanth', 'raj', 'hsr','bang','karnataka',829896,251422,'chwoowo@nsml.com' )

alter table addressbook_service add type varchar(20);
update addressbook_service set type = 'family' where city ='bardh';
update addressbook_service set type = 'friends' where state ='jharkhand';

select * from addressbook_service;

----UC10-----
select COUNT(type) as numberOfrecords from addressbook_service where type = 'family';

-----UC11-----
insert into addressbook_service values
('nepu', 'duta', 'kend','dhn','jharkhand',839906,1229292,'sjsjsj@jdj.com','family'),
('partho', 'sarkar', 'alk','bardh','wb',819906,0192939,'saoiahdfe@hsha.com', 'friends')

-----UC12-----
select * from addressbook_service;
Drop table addressbook_service;
--CREATING TABLE BOOKNAMETYPE
CREATE TABLE BookNameType(
    BookId VARCHAR(50) NOT NULL PRIMARY KEY,
    BkName VARCHAR(200) NOT NULL,
    BkType VARCHAR(50) NOT NULL
);
--CREATING TABLE CONTACT
CREATE TABLE Contact(
    BookId VARCHAR(50) FOREIGN KEY REFERENCES BookNameType(BookId),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    City VARCHAR(50) NOT NULL,
    State VARCHAR(50) NOT NULL,
    Zip BIGINT NOT NULL,
    Phone_no BIGINT,
    Email VARCHAR(100) NOT NULL
	);

	INSERT INTO Contact VALUES
		('BK1','Manish','sharma','dumka','dumka','Jharkhand',989001,9078563412,'v.putin@gmail.com'),
        ('BK2','Ritesh','yadav','danapur','patna','Bihar',567897,565765767,'sherlocked@gmail.com'),
        ('BK3','Saurav','kumar','patna','patna','Bihar',989001,6775675757,'v.putin@gmail.com'),
        ('BK2','Avinash','yadav','arah','patna','Bihar',25679,7453454534,'j.pera@gmail.com'),
        ('BK2','Sampada','hakke','sangli','mumbai','Maharahtra',450981,232355525,'ke.lut@gmail.com'),
        ('BK3','Shree','vyaas','ahemdabad','ahemdabad','Gujrat',25679,64564545,'rojdjsa@gmail.com')
---INSERTING DATA IN BOOKNAMETYPE----
INSERT INTO BookNameType
    VALUES('BK1','Book1','Family'),('BK2','Book2','Friends'),('BK3','Book3','Profession');

