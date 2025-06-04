CREATE DATABASE sampledb;

-- 1. 데이터베이스 생성 및 선택
CREATE DATABASE IF NOT EXISTS sampledb;
USE sampledb;

-- 2. student 테이블 생성
CREATE TABLE IF NOT EXISTS student (
    inid VARCHAR(20) PRIMARY KEY,
    inname VARCHAR(50),
    indept VARCHAR(50)
);

-- 3. 현실적인 학생 데이터 삽입
INSERT INTO student (inid, inname, indept) VALUES
('20251234', '이승훈', '소프트웨어공학과'),
('20251111', '김하늘', '정보보안학과'),
('20251001', '박지후', '인공지능전공'),
('20251337', '최예린', '데이터사이언스학과'),
('20251444', '정한결', '컴퓨터공학과');

show DATABASEs;

