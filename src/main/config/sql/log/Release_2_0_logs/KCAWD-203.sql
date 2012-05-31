DELETE FROM UNIT_ACL WHERE ROLE_ID = '15';

DELETE FROM KIM_ROLES_PERMISSIONS_T WHERE ROLE_ID = '15';
DELETE FROM KIM_ROLES_PERMISSIONS_T WHERE ROLE_ID = '16';
DELETE FROM KIM_ROLES_PERMISSIONS_T WHERE ROLE_ID = '17';
DELETE FROM KIM_ROLES_PERMISSIONS_T WHERE ROLE_ID = '18';

COMMIT;

DELETE FROM KIM_PERMISSIONS_T WHERE ID = '42';
DELETE FROM KIM_PERMISSIONS_T WHERE ID = '43';
DELETE FROM KIM_PERMISSIONS_T WHERE ID = '44';

DELETE FROM KIM_ROLES_T WHERE ID = '15';
DELETE FROM KIM_ROLES_T WHERE ID = '16';
DELETE FROM KIM_ROLES_T WHERE ID = '17';
DELETE FROM KIM_ROLES_T WHERE ID = '18';

COMMIT;

INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(43, 'VIEW_ANY_PROPOSAL', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(44, 'APPROVE_AWARD_BUDGET', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(45, 'CREATE_AWARD_BUDGET', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(46, 'MAINTAIN_AWARD_BUDGET_ROUTING', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(47, 'POST_AWARD_BUDGET', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(48, 'SUBMIT_ANY_AWARD_BUDGET', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(49, 'CREATE_AWARD', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(50, 'MAINTAIN_REPORTING_REQUIREMENTS', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(51, 'MODIFY_AWARD', 'Modify Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(52, 'VIEW_AWARD', 'View Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(53, 'MAINTAIN_NOTEPAD_ENTRIES', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(54, 'MODIFY_AWARD_BUDGET', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(55, 'SUBMIT_AWARD_BUDGET', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(56, 'VIEW_AWARD_BUDGET', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(57, 'MAINTAIN_AWARD_DOCUMENTS', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(58, 'VIEW_AWARD_DOCUMENTS', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(59, 'VIEW_AWARDS_AT_UNIT', 'Create Award Document', 2);
INSERT INTO KIM_PERMISSIONS_T (ID,NAME,DESCRIPTION,NAMESPACE_ID) VALUES(60, 'VIEW_AWARD_TEMPLATE', 'Create Award Document', 2);


INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(15, 'Application Administrator', 'Application Administrator','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(16, 'Award Budget Approver', 'Award Budget Approver','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(17, 'Award Budget Admnistrator', 'Award Budget Admnistrator','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(18, 'Award Modifier', 'Award Modifier','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(19, 'OSP Administrator', 'OSP Administrator','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(20, 'Award Budget Aggregator', 'Award Budget Aggregator','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(21, 'Award Budget Maintainer', 'Award Budget Maintainer','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(22, 'Award Documents Maintainer', 'Award Documents Maintainer','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(23, 'Award Budget Modifier', 'Award Budget Modifier','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(24, 'Award Viewer', 'Award Viewer','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(25, 'Award Budget Viewer', 'Award Budget Viewer','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(26, 'Award Documents Viewer', 'Award Documents Viewer','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(27, 'Departments Awards Viewer', 'Departments Awards Viewer','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(28, 'Template Viewer', 'Template Viewer','A', 'Y');
INSERT INTO KIM_ROLES_T (ID,NAME,DESCRIPTION, ROLE_TYPE_CODE, DESCEND_FLAG) VALUES(29, 'Award Unassigned', 'Award Unassigned','A', 'Y');

COMMIT;

INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(15, 43);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(16, 44);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(17, 44);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(17, 45);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(17, 46);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(17, 47);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(17, 48);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(18, 49);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(18, 50);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(18, 51);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(18, 52);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(20, 54);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(20, 55);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(21, 54);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(21, 55);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(21, 56);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(22, 57);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(23, 54);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(24, 52);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(25, 56);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(26, 58);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(27, 59);
INSERT INTO KIM_ROLES_PERMISSIONS_T (ROLE_ID,PERMISSION_ID) VALUES(28, 60);

COMMIT;


insert into UNIT_ACL (ID, PERSON_ID, ROLE_ID, UNIT_NUMBER, SUBUNITS, ACTIVE_FLAG)
values (41, '000000003', 18, '000001', 'Y', 'Y');

COMMIT;