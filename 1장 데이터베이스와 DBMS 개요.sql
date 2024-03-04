/*
    날짜 : 2024/03/04
    이름 : 김철학
    내용 : 1장 데이터베이스와 DBMS 개요
*/

-- 실습하기 1-1. 데이터베이스 사용자 생성
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
CREATE USER chhak IDENTIFIED BY "1234";
GRANT CONNECT, RESOURCE TO chhak;
GRANT UNLIMITED TABLESPACE TO chhak;

-- 실습하기 1-2. NUMBER 자료형 이해
CREATE TABLE TYPE_TEST_NUMBER (
    num1 NUMBER,
    num2 NUMBER(2),
    num3 NUMBER(3,1),
    num4 NUMBER(4,2),
    num5 NUMBER(5,6)
);

CREATE TABLE TYPE_TEST_NUMBER (
    num1 NUMBER,
    num2 NUMBER(2),
    num3 NUMBER(3,1),
    num4 NUMBER(4,2),
    num5 NUMBER(5,6),
    num6 NUMBER(6, -1)
);

//num1 NUMBER
insert into TYPE_TEST_NUMBER (num1) values (1);
insert into TYPE_TEST_NUMBER (num1) values (123);
insert into TYPE_TEST_NUMBER (num1) values (123.74);
insert into TYPE_TEST_NUMBER (num1) values (123.12345);

//num2 NUMBER(2)
insert into TYPE_TEST_NUMBER (num2) values (12);
insert into TYPE_TEST_NUMBER (num2) values (123);
insert into TYPE_TEST_NUMBER (num2) values (1.2);
insert into TYPE_TEST_NUMBER (num2) values (1.23);
insert into TYPE_TEST_NUMBER (num2) values (12.34567);
insert into TYPE_TEST_NUMBER (num2) values (12.56789);
insert into TYPE_TEST_NUMBER (num2) values (123.56789);

//num3 NUMBER(3,1) 
insert into TYPE_TEST_NUMBER (num3) values (12);
insert into TYPE_TEST_NUMBER (num3) values (123);
insert into TYPE_TEST_NUMBER (num3) values (12.1);
insert into TYPE_TEST_NUMBER (num3) values (12.1234);
insert into TYPE_TEST_NUMBER (num3) values (12.56789);
insert into TYPE_TEST_NUMBER (num3) values (123.56789);


//num4 NUMBER(4,2)    
insert into TYPE_TEST_NUMBER (num4) values (1);
insert into TYPE_TEST_NUMBER (num4) values (12);
insert into TYPE_TEST_NUMBER (num4) values (123);
insert into TYPE_TEST_NUMBER (num4) values (12.1);
insert into TYPE_TEST_NUMBER (num4) values (12.1234);
insert into TYPE_TEST_NUMBER (num4) values (12.56789);
insert into TYPE_TEST_NUMBER (num4) values (123.56789);

//num5 NUMBER(5,6)    
insert into TYPE_TEST_NUMBER (num5) values (0.05678962);
insert into TYPE_TEST_NUMBER (num5) values (12);
insert into TYPE_TEST_NUMBER (num5) values (123);
insert into TYPE_TEST_NUMBER (num5) values (12.1);
insert into TYPE_TEST_NUMBER (num5) values (12.1234);
insert into TYPE_TEST_NUMBER (num5) values (12.56789);
insert into TYPE_TEST_NUMBER (num5) values (123.56789);

//num6 NUMBER(6,-1)
insert into TYPE_TEST_NUMBER (num6) values (1.123456789);
insert into TYPE_TEST_NUMBER (num6) values (12.123456789);
insert into TYPE_TEST_NUMBER (num6) values (123.456789);
insert into TYPE_TEST_NUMBER (num6) values (1234.56789);
insert into TYPE_TEST_NUMBER (num6) values (12345.6789);


//실습하기 1-3.문자형 자료형 실습
create table TYPE_TEST_CHAR (
    char1 CHAR(1),
    char2 CHAR(2),
    char3 CHAR(3),
    vchar1 VARCHAR2(1),
    vchar2 VARCHAR2(2),
    vchar3 VARCHAR2(3),
    nvchar1 NVARCHAR2(1),
    nvchar2 NVARCHAR2(2),
    nvchar3 NVARCHAR2(3)
);

// CHAR
insert into TYPE_TEST_CHAR (char1) values ('A');
insert into TYPE_TEST_CHAR (char1) values ('가');
insert into TYPE_TEST_CHAR (char2) values ('AB');
insert into TYPE_TEST_CHAR (char2) values ('ABC');
insert into TYPE_TEST_CHAR (char2) values ('가');
insert into TYPE_TEST_CHAR (char3) values ('가');

// VARCHAR2
insert into TYPE_TEST_CHAR (vchar1)values ('A');
insert into TYPE_TEST_CHAR (vchar2)values ('AB');
insert into TYPE_TEST_CHAR (vchar3)values ('가');

// NVARCHAR2
insert into TYPE_TEST_CHAR (nvchar1)values ('A');
insert into TYPE_TEST_CHAR (nvchar2)values ('AB');
insert into TYPE_TEST_CHAR (nvchar3)values ('가나다');


