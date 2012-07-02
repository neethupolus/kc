drop table PROPOSAL_PERSONS;

CREATE TABLE PROPOSAL_PERSONS (
   PROPOSAL_PERSON_ID number(22,0) NOT NULL,
   PROPOSAL_ID NUMBER(22,0) NOT NULL,
   PROPOSAL_NUMBER varchar2(10) NOT NULL,
   SEQUENCE_NUMBER number(4,0) NOT NULL,

   PERSON_ID varchar2(10),
   ROLODEX_ID decimal(6),
   FULL_NAME varchar2(90),
   CONTACT_ROLE_CODE varchar2(12) NOT NULL,
   KEY_PERSON_PROJECT_ROLE varchar2(60),
   
   ACADEMIC_YEAR_EFFORT number(5,2),
   CALENDAR_YEAR_EFFORT number(5,2),
   SUMMER_EFFORT number(5,2),
   TOTAL_EFFORT number(5,2),
   
   FACULTY_FLAG char(1) NOT NULL,
   
   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR decimal(8) NOT NULL,
   OBJ_ID varchar2(36) NOT NULL
);

ALTER TABLE PROPOSAL_PERSONS ADD CONSTRAINT PK_PROPOSAL_PERSONS PRIMARY KEY (PROPOSAL_PERSON_ID);



CREATE TABLE PROPOSAL_PERSON_UNITS (
   PROPOSAL_PERSON_UNIT_ID number(22,0) NOT NULL,

   PROPOSAL_PERSON_ID number(22,0) NOT NULL,
   UNIT_NUMBER VARCHAR2(8) NOT NULL,
   LEAD_UNIT_FLAG CHAR(1) NOT NULL,

   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR decimal(8) NOT NULL,
   OBJ_ID varchar2(36) NOT NULL
);

ALTER TABLE PROPOSAL_PERSON_UNITS ADD CONSTRAINT PK_PROPOSAL_PERSON_UNITS PRIMARY KEY (PROPOSAL_PERSON_UNIT_ID);



drop table PROPOSAL_PER_CREDIT_SPLIT;

CREATE TABLE PROPOSAL_PER_CREDIT_SPLIT (
   PROPOSAL_PER_CREDIT_SPLIT_ID number(22,0) NOT NULL,
   PROPOSAL_PERSON_ID number(22,0) NOT NULL,

   INV_CREDIT_TYPE_CODE varchar2(3) NOT NULL,
   CREDIT decimal(5,2),

   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR decimal(8) NOT NULL,
   OBJ_ID varchar2(36) NOT NULL
);

ALTER TABLE PROPOSAL_PER_CREDIT_SPLIT ADD CONSTRAINT PK_PROPOSAL_PER_CREDIT_SPLIT PRIMARY KEY (PROPOSAL_PER_CREDIT_SPLIT_ID); 





CREATE TABLE PROPOSAL_PERS_UNIT_CRED_SPLITS (
   PPU_CREDIT_SPLIT_ID number(22,0) NOT NULL,
   PROPOSAL_PERSON_UNIT_ID number(22,0) NOT NULL,

   INV_CREDIT_TYPE_CODE varchar2(3) NOT NULL,
   CREDIT decimal(5,2),

   UPDATE_TIMESTAMP date NOT NULL,
   UPDATE_USER varchar2(60) NOT NULL,
   VER_NBR decimal(8) NOT NULL,
   OBJ_ID varchar2(36) NOT NULL
);

ALTER TABLE PROPOSAL_PERS_UNIT_CRED_SPLITS ADD CONSTRAINT PK_PPU_CREDIT_SPLIT PRIMARY KEY (PPU_CREDIT_SPLIT_ID);

ALTER TABLE PROPOSAL
ADD LEAD_UNIT_NUMBER VARCHAR2(8);

alter table PROPOSAL_PERSONS modify PROPOSAL_ID number(12,0);

alter table PROPOSAL_PERSONS modify PERSON_ID varchar2(40);


commit;
