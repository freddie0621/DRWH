
/* en tant que sys */

ALTER SESSION SET CONTAINER=DWH;

GRANT CREATE VIEW TO dwh;

/* en tant que DWH */
create view DWH_PATIENT_VIEW as select * from DWH_PATIENT where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_PATIENT_IPPHIST_VIEW as select * from DWH_PATIENT_IPPHIST where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_PATIENT_REL_VIEW as select * from DWH_PATIENT_REL where patient_num_1 not in (select patient_num from dwh_patient_opposition) and  patient_num_2 not in (select patient_num from dwh_patient_opposition);
create view DWH_PATIENT_MVT_VIEW as select * from DWH_PATIENT_MVT where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_PATIENT_STAY_VIEW as select * from DWH_PATIENT_STAY where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_DOCUMENT_VIEW as select * from DWH_DOCUMENT where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_TEXT_VIEW as select * from DWH_TEXT where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_DATA_VIEW as select * from DWH_DATA where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_FILE_VIEW as select * from DWH_FILE where patient_num not in (select patient_num from dwh_patient_opposition);
create view DWH_PATIENT_DEPARTMENT_VIEW as select * from DWH_PATIENT_DEPARTMENT where patient_num not in (select patient_num from dwh_patient_opposition);
 
/* en tant que sys */
ALTER SESSION SET CONTAINER=DWH;

CREATE BIGFILE TABLESPACE TS_DWH_APP DATAFILE 
  '/data/oracle-data/oradata/imagine/ts_dwh_app' SIZE 100M AUTOEXTEND ON NEXT 100M MAXSIZE 34359738344K
LOGGING
ONLINE
EXTENT MANAGEMENT LOCAL AUTOALLOCATE
BLOCKSIZE 8K
SEGMENT SPACE MANAGEMENT AUTO
FLASHBACK ON;


CREATE USER DWH_APP   IDENTIFIED BY DWH_APP11   DEFAULT TABLESPACE TS_DWH_APP   TEMPORARY TABLESPACE TEMP   PROFILE DEFAULT   ACCOUNT UNLOCK;
-- 2 Roles for DWH_APP 
GRANT RESOURCE TO DWH_APP;
GRANT CONNECT TO DWH_APP;
ALTER USER DWH_APP DEFAULT ROLE ALL;

-- 4 System Privileges for DWH_APP 
GRANT UNLIMITED TABLESPACE TO DWH_APP;
GRANT CREATE SYNONYM TO DWH_APP;
GRANT CREATE VIEW TO DWH_APP;


GRANT SELECT ON DWH.dwh_temp_seq TO DWH_APP;

GRANT SELECT ON DWH.dwh_seq TO DWH_APP;


GRANT SELECT ON DWH.DWH_PATIENT_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_PATIENT_IPPHIST_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_PATIENT_REL_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_PATIENT_MVT_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_PATIENT_STAY_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_DOCUMENT_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_TEXT_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_DATA_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_FILE_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_PATIENT_DEPARTMENT_VIEW TO DWH_APP;
GRANT SELECT ON DWH.DWH_ENRSEM TO DWH_APP;

GRANT SELECT ON DWH.DWH_PATIENT_OPPOSITION TO DWH_APP;

GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ADMIN_DOCUMENT_ORIGIN TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ADMIN_CGU TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ADMIN_CGU_USER TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_COHORT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_COHORT_RESULT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_COHORT_RESULT_COMMENT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_COHORT_USER_RIGHT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_DATAMART TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_DATAMART_DOC_ORIGIN TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_DATAMART_RESULT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_DATAMART_USER_RIGHT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ECRF TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ECRF_ANSWER TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ECRF_ITEM TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ECRF_SUB_ITEM TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ECRF_USER_RIGHT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ETL_PROCESS TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ETL_SCRIPT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ETL_THESAURUS_ENRSEM TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_ETL_THESAURUS_GENE TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_EXPORT_DATA TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_INFO_AGGREGATE TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_INFO_ENRSEM TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_INFO_LOAD TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_LOG_DOCUMENT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_LOG_PAGE TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_LOG_PATIENT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_LOG_QUERY TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_NOTIFICATION TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_PATIENT_STAT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_PROCESS TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_PROCESS_PATIENT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_PROFILE_DOCUMENT_ORIGIN TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_PROFILE_RIGHT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_QUERY TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_QUERY_RESULT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_REGEXP TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_REQUEST_ACCESS TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_REQUEST_ACCESS_PATIENT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_CITY TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_CORRORTHO TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_COUNTRY TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_DATA TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_DATA_GRAPH TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_DEPARTMENT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_ENRSEM TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_ENRSEM_GRAPH TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_PUBMED_GENE TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_PUBMED_GENE2GO TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_TAL TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_TAL_CHEMIN TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_TYPESEMANTIC TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_THESAURUS_UNIT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_TMP_QUERY TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_TOOL TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_USER TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_USER_CONNEXION TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_USER_DEPARTMENT TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_USER_ECRF TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_USER_ONLINE TO DWH_APP;
GRANT DELETE, INSERT, SELECT, UPDATE ON DWH.DWH_USER_PROFILE TO DWH_APP;



/* EN TANT QUE DWH_APP*/
CREATE SYNONYM dwh_temp_seq FOR  DWH.dwh_temp_seq;
CREATE SYNONYM dwh_seq FOR  DWH.dwh_seq;

CREATE SYNONYM DWH_PATIENT FOR DWH.DWH_PATIENT_VIEW;
CREATE SYNONYM DWH_PATIENT_IPPHIST FOR DWH.DWH_PATIENT_IPPHIST_VIEW;
CREATE SYNONYM DWH_PATIENT_REL FOR DWH.DWH_PATIENT_REL_VIEW;
CREATE SYNONYM DWH_PATIENT_MVT FOR DWH.DWH_PATIENT_MVT_VIEW;
CREATE SYNONYM DWH_PATIENT_STAY FOR DWH.DWH_PATIENT_STAY_VIEW;
CREATE SYNONYM DWH_DOCUMENT FOR DWH.DWH_DOCUMENT_VIEW;
CREATE SYNONYM DWH_TEXT FOR DWH.DWH_TEXT_VIEW;
CREATE SYNONYM DWH_DATA FOR DWH.DWH_DATA_VIEW;
CREATE SYNONYM DWH_FILE FOR DWH.DWH_FILE_VIEW;
CREATE SYNONYM DWH_PATIENT_DEPARTMENT FOR DWH.DWH_PATIENT_DEPARTMENT_VIEW;

CREATE SYNONYM DWH_ENRSEM FOR DWH.DWH_ENRSEM;
CREATE SYNONYM DWH_PATIENT_OPPOSITION FOR DWH.DWH_PATIENT_OPPOSITION;
CREATE SYNONYM DWH_ADMIN_DOCUMENT_ORIGIN FOR DWH.DWH_ADMIN_DOCUMENT_ORIGIN;
CREATE SYNONYM DWH_ADMIN_CGU FOR DWH.DWH_ADMIN_CGU;
CREATE SYNONYM DWH_ADMIN_CGU_USER FOR DWH.DWH_ADMIN_CGU_USER;
CREATE SYNONYM DWH_COHORT FOR DWH.DWH_COHORT;
CREATE SYNONYM DWH_COHORT_RESULT FOR DWH.DWH_COHORT_RESULT;
CREATE SYNONYM DWH_COHORT_RESULT_COMMENT FOR DWH.DWH_COHORT_RESULT_COMMENT;
CREATE SYNONYM DWH_COHORT_USER_RIGHT FOR DWH.DWH_COHORT_USER_RIGHT;
CREATE SYNONYM DWH_DATAMART FOR DWH.DWH_DATAMART;
CREATE SYNONYM DWH_DATAMART_DOC_ORIGIN FOR DWH.DWH_DATAMART_DOC_ORIGIN;
CREATE SYNONYM DWH_DATAMART_RESULT FOR DWH.DWH_DATAMART_RESULT;
CREATE SYNONYM DWH_DATAMART_USER_RIGHT FOR DWH.DWH_DATAMART_USER_RIGHT;
CREATE SYNONYM DWH_ECRF FOR DWH.DWH_ECRF;
CREATE SYNONYM DWH_ECRF_ANSWER FOR DWH.DWH_ECRF_ANSWER;
CREATE SYNONYM DWH_ECRF_ITEM FOR DWH.DWH_ECRF_ITEM;
CREATE SYNONYM DWH_ECRF_SUB_ITEM FOR DWH.DWH_ECRF_SUB_ITEM;
CREATE SYNONYM DWH_ECRF_USER_RIGHT FOR DWH.DWH_ECRF_USER_RIGHT;
CREATE SYNONYM DWH_ETL_PROCESS FOR DWH.DWH_ETL_PROCESS;
CREATE SYNONYM DWH_ETL_SCRIPT FOR DWH.DWH_ETL_SCRIPT;
CREATE SYNONYM DWH_ETL_THESAURUS_ENRSEM FOR DWH.DWH_ETL_THESAURUS_ENRSEM;
CREATE SYNONYM DWH_ETL_THESAURUS_GENE FOR DWH.DWH_ETL_THESAURUS_GENE;
CREATE SYNONYM DWH_EXPORT_DATA FOR DWH.DWH_EXPORT_DATA;
CREATE SYNONYM DWH_INFO_AGGREGATE FOR DWH.DWH_INFO_AGGREGATE;
CREATE SYNONYM DWH_INFO_ENRSEM FOR DWH.DWH_INFO_ENRSEM;
CREATE SYNONYM DWH_INFO_LOAD FOR DWH.DWH_INFO_LOAD;
CREATE SYNONYM DWH_LOG_DOCUMENT FOR DWH.DWH_LOG_DOCUMENT;
CREATE SYNONYM DWH_LOG_PAGE FOR DWH.DWH_LOG_PAGE;
CREATE SYNONYM DWH_LOG_PATIENT FOR DWH.DWH_LOG_PATIENT;
CREATE SYNONYM DWH_LOG_QUERY FOR DWH.DWH_LOG_QUERY;
CREATE SYNONYM DWH_NOTIFICATION FOR DWH.DWH_NOTIFICATION;
CREATE SYNONYM DWH_PATIENT_STAT FOR DWH.DWH_PATIENT_STAT;
CREATE SYNONYM DWH_PROCESS FOR DWH.DWH_PROCESS;
CREATE SYNONYM DWH_PROCESS_PATIENT FOR DWH.DWH_PROCESS_PATIENT;
CREATE SYNONYM DWH_PROFILE_DOCUMENT_ORIGIN FOR DWH.DWH_PROFILE_DOCUMENT_ORIGIN;
CREATE SYNONYM DWH_PROFILE_RIGHT FOR DWH.DWH_PROFILE_RIGHT;
CREATE SYNONYM DWH_QUERY FOR DWH.DWH_QUERY;
CREATE SYNONYM DWH_QUERY_RESULT FOR DWH.DWH_QUERY_RESULT;
CREATE SYNONYM DWH_REGEXP FOR DWH.DWH_REGEXP;
CREATE SYNONYM DWH_REQUEST_ACCESS FOR DWH.DWH_REQUEST_ACCESS;
CREATE SYNONYM DWH_REQUEST_ACCESS_PATIENT FOR DWH.DWH_REQUEST_ACCESS_PATIENT;
CREATE SYNONYM DWH_THESAURUS_CITY FOR DWH.DWH_THESAURUS_CITY;
CREATE SYNONYM DWH_THESAURUS_CORRORTHO FOR DWH.DWH_THESAURUS_CORRORTHO;
CREATE SYNONYM DWH_THESAURUS_COUNTRY FOR DWH.DWH_THESAURUS_COUNTRY;
CREATE SYNONYM DWH_THESAURUS_DATA FOR DWH.DWH_THESAURUS_DATA;
CREATE SYNONYM DWH_THESAURUS_DATA_GRAPH FOR DWH.DWH_THESAURUS_DATA_GRAPH;
CREATE SYNONYM DWH_THESAURUS_DEPARTMENT FOR DWH.DWH_THESAURUS_DEPARTMENT;
CREATE SYNONYM DWH_THESAURUS_ENRSEM FOR DWH.DWH_THESAURUS_ENRSEM;
CREATE SYNONYM DWH_THESAURUS_ENRSEM_GRAPH FOR DWH.DWH_THESAURUS_ENRSEM_GRAPH;
CREATE SYNONYM DWH_THESAURUS_PUBMED_GENE FOR DWH.DWH_THESAURUS_PUBMED_GENE;
CREATE SYNONYM DWH_THESAURUS_PUBMED_GENE2GO FOR DWH.DWH_THESAURUS_PUBMED_GENE2GO;
CREATE SYNONYM DWH_THESAURUS_TAL FOR DWH.DWH_THESAURUS_TAL;
CREATE SYNONYM DWH_THESAURUS_TAL_CHEMIN FOR DWH.DWH_THESAURUS_TAL_CHEMIN;
CREATE SYNONYM DWH_THESAURUS_TYPESEMANTIC FOR DWH.DWH_THESAURUS_TYPESEMANTIC;
CREATE SYNONYM DWH_THESAURUS_UNIT FOR DWH.DWH_THESAURUS_UNIT;
CREATE SYNONYM DWH_TMP_QUERY FOR DWH.DWH_TMP_QUERY;
CREATE SYNONYM DWH_TOOL FOR DWH.DWH_TOOL;
CREATE SYNONYM DWH_USER FOR DWH.DWH_USER;
CREATE SYNONYM DWH_USER_CONNEXION FOR DWH.DWH_USER_CONNEXION;
CREATE SYNONYM DWH_USER_DEPARTMENT FOR DWH.DWH_USER_DEPARTMENT;
CREATE SYNONYM DWH_USER_ECRF FOR DWH.DWH_USER_ECRF;
CREATE SYNONYM DWH_USER_ONLINE FOR DWH.DWH_USER_ONLINE;
CREATE SYNONYM DWH_USER_PROFILE FOR DWH.DWH_USER_PROFILE;

    