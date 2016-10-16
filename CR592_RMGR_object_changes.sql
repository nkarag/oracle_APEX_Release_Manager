/*
 New column for RLSMGR_OBJECTS to record the Request From by which this object was created
*/ 
alter table RMGR.RLSMGR_OBJECTS add (FORM_ID number(5));

alter table RMGR.RLSMGR_OBJECTS add constraint RLSMGR_FORMID_FK 
foreign key(FORM_ID) references   RMGR.RLSMGR_FORMS(FORM_ID) enable novalidate;
-----------------------------------------------------

/*
New table to record OBJ_TYPE to AREAS valid combinations
*/
create table RMGR.RLSMGR_AREAS_TO_OBJTYPES (
  AREA_ID       NUMBER(2)                       NOT NULL,
  OBJ_TYPE_ID    NUMBER(2)                      NOT NULL
  );

alter table RMGR.RLSMGR_AREAS_TO_OBJTYPES add constraint RLSMGR_AREAS_TO_OBJTYPES_PK primary key(area_id, obj_type_id); 

alter table RMGR.RLSMGR_AREAS_TO_OBJTYPES add constraint AREA_ID_FK
foreign key (AREA_ID) references  RMGR.RLSMGR_AREAS(AREA_ID); 

alter table RMGR.RLSMGR_AREAS_TO_OBJTYPES add constraint OBJ_TYPE_ID_FK
foreign key (OBJ_TYPE_ID) references RMGR.RLSMGR_OBJ_TYPES(OBJ_TYPE_ID);

--1    APEX
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (1, 20/*APPLICATION*/);
--2    BO STD REPORTS
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (2, 21/*REPORT*/);
--3    BO UNIVERSE
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (3, 18/*UNIVERSE*/);
--4    DATA MODEL
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (4, 17/*MODEL*/);
--5    DATABASE
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 1/*DIMENSION*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 2/*EXTERNAL_TABLE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 4/*FUNCTION*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 7/*MATERIALIZED_VIEW*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 8/*PACKAGE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 10/*PROCEDURE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 13/*SEQUENCE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 14/*TABLE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 15/*USER*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (5, 16/*VIEW*/);
--6    DOCUMENTS
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (6, 27/*BRD*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (6, 28/*KPI_DEFINITION*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (6, 29/*VOCABULARY*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (6, 30/*MANUAL*/);
--7    OWB
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 1/*DIMENSION*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 2/*EXTERNAL_TABLE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 3/*FLAT_FILE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 4/*FUNCTION*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 5/*LOCATION*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 6/*MAPPING*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 7/*MATERIALIZED_VIEW*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 8/*PACKAGE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 9/*PLUGGABLE_MAPPING*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 10/*PROCEDURE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 11/*PROCESS_FLOW*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 12/*PROJECT*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 13/*SEQUENCE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 14/*TABLE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 15/*USER*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (7, 16/*VIEW*/);
--8    PORTAL
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (8, 23/*PAGE*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (8, 24/*PORTLET*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (8, 25/*FOLDER*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (8, 26/*CATEGORY*/);
--9    SOURCE-TO-TARGET
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (9, 19/*SOURCE_TO_TARGET*/);
--10    UNIX SCRIPTS
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (10, 22/*SCRIPT*/);
--11	DATA MINING
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (11, 22/*SCRIPT*/);
insert into RMGR.RLSMGR_AREAS_TO_OBJTYPES values (11, 31/*STREAM*/);

commit;
----------------------------------------------------

/*
Unique constraint in order to avoid duplicate objects inserted by end users.
*/
alter table RMGR.RLSMGR_OBJECTS add constraint RLSMGR_OBJECTS_UNQ UNIQUE (OBJ_DESC,  OBJ_AREA_ID,  OBJ_TYPE_ID); 

---------------------------------------
/*
Add a CR status field on the request Form
*/
CREATE TABLE RLSMGR_STATUSES
(
  STATUS_ID    NUMBER(2)                        NOT NULL,
  STATUS_DESC  VARCHAR2(50 BYTE)                NOT NULL
);

ALTER TABLE RLSMGR_STATUSES ADD 
  CONSTRAINT RLSMGR_STATUSES_PK
 PRIMARY KEY (STATUS_ID) USING INDEX;

CREATE SEQUENCE RMGR.RLSMGR_STATUSES_SEQ
  START WITH 1
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  CACHE 20
  NOORDER;

alter table RMGR.RLSMGR_FORMS add (STATUS_ID number(2));

alter table RMGR.RLSMGR_FORMS add constraint RLSMGR_STATUSID_FK 
foreign key(STATUS_ID) references   RMGR.RLSMGR_STATUSES(STATUS_ID);

INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
3, 'CR_DEVELOPED_IN_DEV'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
1, 'CR_REQUEST'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
2, 'CR_START'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
4, 'CR_DEPLOYED_IN_TEST'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
5, 'CR_UAT_COMPLETED'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
6, 'CLOSED'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
7, 'FIX_BUG_REQUEST'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
8, 'FIX_BUG_START'); 
INSERT INTO RLSMGR_STATUSES ( STATUS_ID, STATUS_DESC ) VALUES ( 
9, 'FIX_BUG_IN_PROD'); 
COMMIT;
-------------------------------------------

/*
Add new field to record the changes per object for a CR
*/  
alter table RMGR.RLSMGR_FORMCHANGESOBJS  add (CHANGE_DETAILS varchar2(4000));