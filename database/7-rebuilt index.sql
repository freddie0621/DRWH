#Alter index DWH_THESAURUS_TAL_IDX rebuild ;
#Alter index DWH_THESAURUS_ENRSEM_STR rebuild;
#Alter index DWH_THESAURUS_DATA_DESCRI rebuild;
#Alter index DWH_TEXT_TITLE_IDX rebuild;
#Alter index DWH_TEXT_IDX rebuild;
#Alter index DWH_TEXT_ENRICH_IDX rebuild;
#Alter index DWH_DOCUMENT_TITLE_IDX rebuild;

begin 
ctx_ddl.sync_index('DWH_TEXT_ENRICH_IDX', '300M');
 ctx_ddl.sync_index('DWH_TEXT_IDX', '300M');
 ctx_ddl.sync_index('DWH_TEXT_TITLE_IDX', '300M');
 ctx_ddl.sync_index('DWH_THESAURUS_DATA_DESCRI', '300M');
 ctx_ddl.sync_index('DWH_THESAURUS_ENRSEM_STR', '300M');
 ctx_ddl.sync_index('DWH_THESAURUS_TAL_IDX', '300M');
 ctx_ddl.sync_index('DWH_THESAURUS_DATA_DESCRI', '300M');
end;


/* revoir les index suivant qui n'existent plus ... 

Alter index DWH_DATA_TNUM_PNUM rebuild
Error at line 112
ORA-01418: l'index indiqu� n'existe pas

Alter index DWH_DATA_TCODE_TNUM rebuild
Error at line 114
ORA-01418: l'index indiqu� n'existe pas

Alter index DWH_DATA_TCOD_ENUM_TNUM rebuild
Error at line 115
ORA-01418: l'index indiqu� n'existe pas

Alter index DWH_DATA_IEP_IDTHES rebuild
Error at line 118
ORA-01418: l'index indiqu� n'existe pas

Alter index DWH_DATA_ENUM_TNUM rebuild
Error at line 119
ORA-01418: l'index indiqu� n'existe pas
*/


Alter index DWH_USER_PROFIL_I rebuild;
Alter index DWH_USER_PROFILE_II rebuild;
Alter index DWH_USER_ONLINE_I rebuild;
Alter index DWH_USER_I rebuild;
Alter index DWH_USER_DEPARTMENT_I rebuild;
Alter index DWH_TMP_RESULT_1 rebuild;
Alter index DWH_TMP_RESULT_PNUM_I rebuild;
Alter index DWH_TMP_RESULT_PNUM rebuild;
Alter index DWH_TMP_RESULT_II rebuild;
Alter index DWH_THESAURUS_UNIT_III rebuild;
Alter index DWH_THESAURUS_UNIT_II rebuild;
Alter index DWH_THESAURUS_UNIT_I rebuild;
Alter index DWH_THESAURUS_TYPESEMANTIC_I rebuild;
Alter index DWH_THESAURUS_TAL_V2_I rebuild;
Alter index DWH_THESAURUS_TAL_CLIB rebuild;
Alter index DWH_THESAURUS_PUBMED_GENE2GOII rebuild;
Alter index DWH_THESAURUS_PUBMED_GENE2GOI rebuild;
Alter index DWH_THESAURUS_PUBMED_GENE rebuild;
Alter index DWH_THESAURUS_ENRSEMPHENO rebuild;
Alter index DWH_THESAURUS_ENRSEM_II rebuild;
Alter index DWH_THESAURUS_ENRSEM_GRAPH_4 rebuild;
Alter index DWH_THESAURUS_ENRSEM_GRAPH_III rebuild;
Alter index DWH_THESAURUS_ENRSEM_GRAPH_II rebuild;
Alter index DWH_THESAURUS_ENRSEM_GRAPH_I rebuild;
Alter index DWH_THESAURUS_ENRSEM_GRAPH rebuild;
Alter index DWH_THESAURUS_ENRSEMGENO rebuild;
Alter index DWH_THESAURUS_ENRSEM_CCO_LSTR rebuild;
Alter index DWH_THESAURUS_ENRSEM_CCODE rebuild;
Alter index DWH_THESAURUS_DATA_TPNUM rebuild;
Alter index DWH_THESAURUS_DATA_I rebuild;
Alter index DWH_THESAURUS_DATA_GRAPH_IIII rebuild;
Alter index DWH_THESAURUS_DATA_GRAPH_III rebuild;
Alter index DWH_THESAURUS_DATA_GRAPH_II rebuild;
Alter index DWH_THESAURUS_DATA_GRAPH_I rebuild;
Alter index DWH_THESAURUS_CITY_COUNTRY rebuild;
Alter index DWH_THESAURUS_CITY rebuild;
Alter index DWH_TEXT_PATIENT_NUM rebuild;
Alter index DWH_TEXT_ORIGINDOC rebuild;
Alter index DWH_TEXT_NEW_I rebuild;
Alter index DWH_TEXT_IDX2 rebuild;
Alter index DWH_TEXT_IDX1 rebuild;
Alter index DWH_TEXT_DEPNUM rebuild;
Alter index DWH_TEXT_CTX_CERT rebuild;
Alter index DWH_TEXT_CONTEXT rebuild;
Alter index DWH_TEXT_CER_CON_PATIENT_NUM rebuild;
Alter index DWH_TEXT_AGE rebuild;
Alter index DWH_QUERY_PK rebuild;
Alter index DWH_PROFILE_RIGHT_USER rebuild;
Alter index DWH_PROFILE_DOCUMENT_ORIGIN rebuild;
Alter index DWH_PROCESS_PATIENT_I rebuild;
Alter index DWH_PROCESS_I rebuild;
Alter index DWH_PATIENT_UPCITY rebuild;
Alter index DWH_PATIENT_STAY_PNUM rebuild;
Alter index DWH_PATIENT_STAY_III rebuild;
Alter index DWH_PATIENT_STAY_II rebuild;
/*Alter index DWH_PATIENT_STAT_I rebuild;*/
Alter index DWH_PATIENT_SERVICE_II rebuild;
Alter index DWH_PATIENT_SERVICE_I rebuild;
Alter index DWH_PATIENT_REL_III rebuild;
Alter index DWH_PATIENT_REL_II rebuild;
Alter index DWH_PATIENT_REL_I rebuild;
Alter index DWH_PATIENT_PNUM_SERVICE rebuild;
Alter index DWH_PATIENT_NUM_PAYS rebuild;
Alter index DWH_PATIENT_MVT_UF_PNUM rebuild;
Alter index DWH_PATIENT_MVT_UF_II rebuild;
Alter index DWH_PATIENT_MVT_UF_IEP rebuild;
Alter index DWH_PATIENT_LOG_PNUM rebuild;
Alter index DWH_PATIENT_IPPHIST_PNUM rebuild;
Alter index DWH_PATIENT_IPPHIST_III rebuild;
Alter index DWH_PATIENT_IPPHIST_II rebuild;
Alter index DWH_PATIENT_IPPHIST_I rebuild;
Alter index DWH_PATIENT_III rebuild;
Alter index DWH_PATIENT_II rebuild;
Alter index DWH_PATIENT_I rebuild;
Alter index DWH_PATIENT_CONSULT_PNUM rebuild;
Alter index DWH_PATIENT_CONSULTATION_I rebuild;
Alter index DWH_PATIENT_CITY rebuild;
Alter index DWH_ENRSEM_DOCUMENT_NUM rebuild;
Alter index DWH_ENRSEM_PK rebuild;
Alter index DWH_ENRSEM_PATIENT_NUM rebuild;
Alter index DWH_ENRSEM_GROUPBYPATCODE rebuild;
Alter index DWH_ENRSEM_CONTEXT rebuild;
Alter index DWH_ENRSEM_CONCERTCOD rebuild;
Alter index DWH_DOCUMENT_SERVICE_PNUM rebuild;
Alter index DWH_DOCUMENT_SERVICE_II rebuild;
Alter index DWH_DOCUMENT_PNUM rebuild;
Alter index DWH_DOCUMENT_ORIGINCODE rebuild;
Alter index DWH_DOCUMENT_NEW_IDDOC rebuild;
Alter index DWH_DOCUMENTIEP_I rebuild;
Alter index DWH_DOCUMENT_IDSOURCE_ORIGIN rebuild;
Alter index DWH_DOCUMENT_IDDOC_PNUM rebuild;
Alter index DWH_DOCUMENT_ENRSEM rebuild;
Alter index DWH_DOCUMENT_ENRGENE rebuild;
Alter index DWH_DEMANDE_ACCES_PATIENT_II rebuild;
Alter index DWH_DEMANDE_ACCES_PATIENT_I rebuild;
Alter index DWH_DEMANDE_ACCES_III rebuild;
Alter index DWH_DEMANDE_ACCES_II rebuild;
Alter index DWH_DEMANDE_ACCES_I rebuild;
Alter index DWH_DATA_TNUM_PNUM rebuild;
Alter index DWH_DATA_TNUM rebuild;
Alter index DWH_DATA_TCODE_TNUM rebuild;
Alter index DWH_DATA_TCOD_ENUM_TNUM rebuild;
Alter index DWH_DATA_PNUM rebuild;
Alter index DWH_DATAMART_RES_1 rebuild;
Alter index DWH_DATA_IEP_IDTHES rebuild;
Alter index DWH_DATA_ENUM_TNUM rebuild;
Alter index DWH_DATA_DNUM rebuild;
Alter index DWH_COHORT_RESULT_CNUM_STATUS rebuild;
Alter index DWH_COHORT_RESULT_CNUM_PNUM rebuild;
Alter index DWH_FILE_I rebuild;