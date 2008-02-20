INSERT INTO CUSTOM_ATTRIBUTE_DATA_TYPE (DATA_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('1','String',sysdate,'KRADEV',1);
INSERT INTO CUSTOM_ATTRIBUTE_DATA_TYPE (DATA_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('2','Number',sysdate,'KRADEV',1);
INSERT INTO CUSTOM_ATTRIBUTE_DATA_TYPE (DATA_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('3','Date',sysdate,'KRADEV',1);

INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (1,'billingElement','Billing Element','1',40,null,null,null,'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (2,'costSharingBudget','Cost Sharing Budget','1',30,null,null,null,'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (3,'numberOfTrainees','# of Trainees','2',6,null,null,null,'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (4,'graduateStudentCount','Graduate Student Count','2',6,null,null,null,'Personnel Items for Review',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (5,'tenured','Tenured','1',30,null,'org.kuali.kra.bo.Person','userName','Personnel Items for Review',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (6,'exportControls','Export Controls','1',30,null,null,null,'Project Details',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (7,'inventions','Inventions','1',30,null,'org.kuali.kra.bo.Person','userName','Project Details',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,DEFAULT_VALUE,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES (8,'effDate','Effective Date','3',10,null,null,null,'Project Details',sysdate,'quicksta',1);


INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',1,null,'Y',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',2,null,'N',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',3,null,'N',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',4,null,'Y',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',5,null,'N',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',6,null,'N',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',7,null,'N',sysdate,'quicksta',1);
INSERT INTO CUSTOM_ATTRIBUTE_DOCUMENT (DOCUMENT_TYPE_CODE,CUSTOM_ATTRIBUTE_ID,TYPE_NAME,IS_REQUIRED,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR) VALUES ('PRDV',8,null,'N',sysdate,'quicksta',1);
