-- Table Script 
CREATE TABLE COEUS_MODULE ( 
    MODULE_CODE NUMBER(3,0) NOT NULL, 
    DESCRIPTION VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE COEUS_MODULE 
ADD CONSTRAINT PK_COEUS_MODULE 
PRIMARY KEY (MODULE_CODE);

