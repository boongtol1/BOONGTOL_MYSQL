drop database mydb;

CREATE database mydb;

use mydb;

drop table addressbook;
-- 테이블 생성
create table addressbook (
    id      int auto_increment primary key,
    name    varchar(100),
    tel     varchar(100),  
    com     varchar(100),
    inDate  datetime default current_timestamp
);

INSERT INTO addressbook(name,phonenum,companyname) VALUES ('이승훈', '01025908483', 'DMU');

drop table addressbook;

SELECT * FROM addressbook;

