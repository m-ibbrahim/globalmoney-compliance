
---- Create table CUSTOMER_DETAILS -----------

DROP TABLE IF EXISTS CUSTOMER_DETAILS;

CREATE TABLE CUSTOMER_DETAILS (
  CUSTOMER_ID BIGINT PRIMARY KEY,
  CREATED_AT TIMESTAMP (6),
  MODIFIED_AT TIMESTAMP (6),
  TITLE VARCHAR(29) NOT NULL,
  FIRST_NAME VARCHAR(250) NOT NULL,
  MIDDLE_NAME VARCHAR(250),
  LAST_NAME VARCHAR(250),
  GENDER VARCHAR(20) NOT NULL,
);


---- Create table ACCOUNT_DETAILS -----------

DROP TABLE IF EXISTS ACCOUNT_DETAILS;

CREATE TABLE ACCOUNT_DETAILS (
  ACCOUNT_NUMBER BIGINT PRIMARY KEY,
  CREATED_AT TIMESTAMP (6),
  MODIFIED_AT TIMESTAMP (6),
  ACCOUNT_CURRENCY VARCHAR(250) NOT NULL,
  CURRENT_BALANCE DECIMAL(20,2),
  ACCOUNT_TYPE VARCHAR(30) NOT NULL,
  CUSTOMER_ID INT
  --,FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER_DETAILS(CUSTOMER_ID)
);


---------- create foreign key in ACCOUNT_DETAILS ---
ALTER TABLE ACCOUNT_DETAILS
    ADD CONSTRAINT FK_CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID)
    REFERENCES CUSTOMER_DETAILS(CUSTOMER_ID);

---- Create table ACCOUNT_TRANSACTIONS -----------

DROP TABLE IF EXISTS ACCOUNT_TRANSACTIONS;

CREATE TABLE ACCOUNT_TRANSACTIONS (
  ID BIGINT PRIMARY KEY,
  CREATED_AT TIMESTAMP (6),
  MODIFIED_AT TIMESTAMP (6),
  REMARKS VARCHAR(250),
  TRANSACTION_AMOUNT DECIMAL(20,2),
  SOURCE_ACCOUNT BIGINT,
  DESTINATION_ACCOUNT BIGINT,
  TRANSACTION_TYPE VARCHAR(100),
  STATUS INT
);



-------- SEQUENCE FOR CUSTOMER_ID------

CREATE SEQUENCE SEQ_CUSTOMER_ID START WITH 100000 INCREMENT BY 1 MINVALUE 1 MAXVALUE 99999999999;



-------- SEQUENCE FOR ACCOUNT_NUMBER------

CREATE SEQUENCE SEQ_ACCOUNT_NUMBER START WITH 100000 INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999;


-------- SEQUENCE FOR ACCOUNT_NUMBER------

CREATE SEQUENCE SEQ_TRANSACTION_ID START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999999999;