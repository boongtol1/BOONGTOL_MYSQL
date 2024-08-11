-- CREATE 문으로 데이터베이스 생성
CREATE DATABASE DoItSQL;
--show DATABASES;

--SHOW COLUMNS FROM doit_create_table;

--SELECT * FROM doit_create_table;


-- DROP 문으로 데이터베이스 삭제
DROP DATABASE doitsql;

-- 데이터베이스 생성 후 선택
CREATE DATABASE doitsql;
USE doitsql;


-- CREATE 문으로 테이블 생성
CREATE TABLE doit_create_table (
col_1 INT,
col_2 VARCHAR(50),
col_3 DATETIME
);

-- DROP 문으로 테이블 삭제
DROP TABLE doit_create_table;

-- INSERT 문으로 데이터 삽입
CREATE TABLE doit_dml (
col_1 INT,
col_2 VARCHAR(50),
col_3 DATETIME
);
INSERT INTO doit_dml (col_1, col_2, col_3) VALUES (1, 'DoItSQL', '2023-01-01');

-- 테이블 조회하여 삽입한 데이터 확인
SELECT * FROM doit_dml

-- 데이터 유형 불일치로 인한 오류 발생 예
INSERT INTO doit_dml(col_1) VALUES ('문자 입력');

-- 열 이름 생략하고 데이터 삽입
INSERT INTO doit_dml VALUES (NULL, NULL, '2023-01-02');

-- 네, INSERT 명령어에서 열 이름을 생략할 수 있습니다. 그러나 두 가지 조건이 충족되어야 합니다:

--모든 열에 값을 제공해야 합니다. 테이블에 정의된 모든 열의 값이 VALUES 절에 제공되어야 합니다. 예를 들어, doit_dml 테이블에 3개의 열이 정의되어 있다면, VALUES 절에도 3개의 값이 제공되어야 합니다.

--값의 순서가 테이블 정의와 일치해야 합니다. 제공된 값들은 테이블에 정의된 열의 순서대로 삽입됩니다.

-- 삽입된 데이터 확인
SELECT * FROM doit_dml;

-- 열 개수 불일치로 인한 오류 발생
INSERT INTO doit_dml VALUES (3, 'col_3 값 생략');

-- 특정 열에만 데이터 삽입
INSERT INTO doit_dml(col_1, col_2) VALUES (4, 'col_3 값 생략');

-- 삽입할 데이터의 순서 변경
INSERT INTO doit_dml(col_1, col_3, col_2) VALUES (4,'2023-01-03', '열순서 변경');

-- 여러 데이터 한 번에 삽입
INSERT INTO doit_dml(col_1, col_2, col_3) VALUES (5, '데이터 입력5', '2023-01-03'), (6, '데이터 입력6', '2023-01-03'), (7, '데이터 입력7', '2023-01-03');

-- NULL을 허용하지 않는 테이블 생성 후 NULL 삽입 시 오류가 발생한 예
CREATE TABLE doit_notnull (
col_1 INT,
col_2 VARCHAR(50) NOT NULL
);
INSERT INTO doit_notnull (col_1) VALUES (1);

-- UPDATE 문으로 데이터 수정 1
UPDATE doit_dml SET col_2 = '데이터 수정'
WHERE col_1 = 4;

-- UPDATE 문으로 데이터 수정 2
UPDATE doit_dml SET col_2 = '데이터 수정'
WHERE col_1 = 4;

-- UPDATE 문으로 테이블 전체 데이터 수정
UPDATE doit_dml SET col_1 = col_1 + 10;

-- DELETE 문으로 데이터 수정
DELETE FROM doit_dml WHERE col_1 = 14;

-- DELETE 문으로 테이블 전체 데이터 삭제
DELETE FROM doit_dml;

SELECT * FROM doit_dml;

SELECT * FROM doit_dml WHERE col_1 = 4;
