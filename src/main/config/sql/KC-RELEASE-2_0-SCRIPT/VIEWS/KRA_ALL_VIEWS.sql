CREATE OR REPLACE VIEW OSP$PROTOCOL_TYPE AS SELECT 
	PROTOCOL_TYPE_CODE, 
	DESCRIPTION, 
	UPDATE_TIMESTAMP, 
	UPDATE_USER
FROM PROTOCOL_TYPE
/

CREATE OR REPLACE VIEW OSP$PROTOCOL AS SELECT 
	PROTOCOL_NUMBER, 
	SEQUENCE_NUMBER, 
	PROTOCOL_TYPE_CODE, 
	PROTOCOL_STATUS_CODE, 
	TITLE, 
	DESCRIPTION, 
	APPLICATION_DATE, 
	APPROVAL_DATE, 
	EXPIRATION_DATE, 
	LAST_APPROVAL_DATE, 
	FDA_APPLICATION_NUMBER, 
	REFERENCE_NUMBER_1, 
	REFERENCE_NUMBER_2, 
	IS_BILLABLE, 
	SPECIAL_REVIEW_INDICATOR, 
	VULNERABLE_SUBJECT_INDICATOR, 
	KEY_STUDY_PERSON_INDICATOR, 
	FUNDING_SOURCE_INDICATOR, 
	CORRESPONDENT_INDICATOR, 
	REFERENCE_INDICATOR, 
	RELATED_PROJECTS_INDICATOR, 
	CREATE_TIMESTAMP, 
	CREATE_USER, 
	UPDATE_TIMESTAMP, 
	UPDATE_USER
FROM PROTOCOL
/

