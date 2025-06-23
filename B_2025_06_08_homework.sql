drop database if exists mydb;
-- db 생성
create database mydb;
use mydb;

drop table if exists addressbook;
-- 테이블 생성
create table addressbook (
    id      int auto_increment primary key,
    name    varchar(100),
    tel     varchar(100),  
    com     varchar(100),
    inDate  datetime default current_timestamp
);

insert into addrtbl (name, tel, com) values('홍길동', '010-1111-1111', '삼성전자');
insert into addrtbl (name, tel, com) values('정국', '010-2222-2222', '하이브');

select * from addrtbl;
