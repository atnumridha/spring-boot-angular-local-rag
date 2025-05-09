--------------------------------------------------------
-- Copyright (c) 2016, Oracle Corp.  All rights reserved.
-- $Workfile$
-- $Revision$
-- $Modtime$
--------------------------------------------------------

whenever sqlerror exit

PROMPT CREATING SEQUENCE 'IM_AP_STAGE_DETAIL_ERROR_SEQ';
CREATE SEQUENCE IM_AP_STAGE_DETAIL_ERROR_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1000 
    CYCLE 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_AP_STAGE_DETAIL_SEQ';
CREATE SEQUENCE IM_AP_STAGE_DETAIL_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1000 
    CYCLE 
    CACHE 5000 
    ORDER 
;


PROMPT CREATING SEQUENCE 'IM_AP_STAGE_HEAD_ERROR_SEQ';
CREATE SEQUENCE IM_AP_STAGE_HEAD_ERROR_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1000 
    CYCLE 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_AP_STAGE_HEAD_SEQ';
CREATE SEQUENCE IM_AP_STAGE_HEAD_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1000 
    CYCLE 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_AP_STG_DTL_LINE_GROUP_SEQ';
CREATE SEQUENCE IM_AP_STG_DTL_LINE_GROUP_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1000 
    CYCLE 
    CACHE 20 
    ORDER 
;


PROMPT CREATING SEQUENCE 'IM_CN_DETAIL_MATCH_HIS_SEQ';
CREATE SEQUENCE IM_CN_DETAIL_MATCH_HIS_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_CN_SUMMARY_MATCH_HIS_SEQ';
CREATE SEQUENCE IM_CN_SUMMARY_MATCH_HIS_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_DETAIL_MATCH_HISTORY_SEQ';
CREATE SEQUENCE IM_DETAIL_MATCH_HISTORY_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_DOC_DETAIL_COMMENTS_SEQ';
CREATE SEQUENCE IM_DOC_DETAIL_COMMENTS_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_DOC_DETAIL_REASON_CODES_SEQ';
CREATE SEQUENCE IM_DOC_DETAIL_REASON_CODES_SEQ 
    INCREMENT BY 1 
    MAXVALUE 99999999999999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_DOC_HEAD_SEQ';
CREATE SEQUENCE IM_DOC_HEAD_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_FINANCIALS_STAGE_ERROR_SEQ';
CREATE SEQUENCE IM_FINANCIALS_STAGE_ERROR_SEQ 
    INCREMENT BY 1000 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_FINANCIALS_STAGE_SEQ';
CREATE SEQUENCE IM_FINANCIALS_STAGE_SEQ 
    INCREMENT BY 1000 
    MAXVALUE 9999999999999999999999999999 
    MINVALUE 1000 
    CACHE 5000 
    ORDER 
;


PROMPT CREATING SEQUENCE 'IM_INJECT_DOC_DETAIL_SEQ';
CREATE SEQUENCE IM_INJECT_DOC_DETAIL_SEQ 
    INCREMENT BY 1 
    MAXVALUE 99999999999999 
    MINVALUE 1 
    CYCLE 
    CACHE 50000 
;


PROMPT CREATING SEQUENCE 'IM_INJECT_DOC_SEQ';
CREATE SEQUENCE IM_INJECT_DOC_SEQ 
    INCREMENT BY 1 
    MAXVALUE 99999999999999 
    MINVALUE 1 
    CYCLE 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_INJECT_SEQ';
CREATE SEQUENCE IM_INJECT_SEQ 
    INCREMENT BY 1 
    MAXVALUE 99999999999999 
    MINVALUE 1 
    CYCLE 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_MANUAL_GROUPS_SEQ';
CREATE SEQUENCE IM_MANUAL_GROUPS_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_MATCH_POOL_RESULT_ID_SEQ';
CREATE SEQUENCE IM_MATCH_POOL_RESULT_ID_SEQ 
    INCREMENT BY 1 
    MAXVALUE 99999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_MATCH_SEQ';
CREATE SEQUENCE IM_MATCH_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_POSTING_DOC_AMOUNTS_SEQ';
CREATE SEQUENCE IM_POSTING_DOC_AMOUNTS_SEQ 
    INCREMENT BY 1 
    MAXVALUE 999999999999999 
    MINVALUE 0 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_POSTING_DOC_SEQ';
CREATE SEQUENCE IM_POSTING_DOC_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CYCLE 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_PRORATE_WORKSPACE_SEQ';
CREATE SEQUENCE IM_PRORATE_WORKSPACE_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CYCLE 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_RECEIPT_ITEM_POSTING_SEQ';
CREATE SEQUENCE IM_RECEIPT_ITEM_POSTING_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 10000 
;


PROMPT CREATING SEQUENCE 'IM_SUMMARY_MATCH_HISTORY_SEQ';
CREATE SEQUENCE IM_SUMMARY_MATCH_HISTORY_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT CREATING SEQUENCE 'IM_SUPPLIER_GROUPS_SEQ';
CREATE SEQUENCE IM_SUPPLIER_GROUPS_SEQ 
    INCREMENT BY 1 
    MAXVALUE 9999999999 
    MINVALUE 1 
    CACHE 5000 
;


PROMPT Creating Sequence 'IM_TOLERANCE_LEVEL_MAP_SEQ'
CREATE SEQUENCE IM_TOLERANCE_LEVEL_MAP_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    CACHE 5000
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_TOLERANCE_DETAIL_SEQ'
CREATE SEQUENCE IM_TOLERANCE_DETAIL_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    CACHE 5000
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_TOLERANCE_HEAD_SEQ'
CREATE SEQUENCE IM_TOLERANCE_HEAD_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    CACHE 5000
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_MATCH_INVC_GROUP_SEQ'
CREATE SEQUENCE IM_MATCH_INVC_GROUP_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_MATCH_STGY_DETAIL_SEQ'
CREATE SEQUENCE IM_MATCH_STGY_DETAIL_SEQ
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 9999999999
    CACHE 5000
    NOORDER
;


PROMPT Creating Sequence 'IM_CN_MANUAL_GROUPS_SEQ'
CREATE SEQUENCE IM_CN_MANUAL_GROUPS_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
;


PROMPT Creating Sequence 'IM_MATCH_RCPT_GROUP_SEQ'
CREATE SEQUENCE IM_MATCH_RCPT_GROUP_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_MATCH_INQ_DETAIL_WS_SEQ'
CREATE SEQUENCE IM_MATCH_INQ_DETAIL_WS_SEQ 
    INCREMENT BY 1 
	MAXVALUE 9999999999 
	MINVALUE 1 
	CACHE 5000
;


PROMPT Creating Sequence 'IM_MATCH_GROUP_SEQ'
CREATE SEQUENCE IM_MATCH_GROUP_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'im_detail_match_cn_ws_seq'
CREATE SEQUENCE im_detail_match_cn_ws_seq 
    INCREMENT BY 1 
	MAXVALUE 9999999999 
	MINVALUE 1 
	CACHE 5000
;


PROMPT Creating Sequence 'IM_DISCREPANCY_LIST_WS_SEQ'
CREATE SEQUENCE IM_DISCREPANCY_LIST_WS_SEQ
    INCREMENT BY 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
    NOORDER
;


PROMPT Creating Sequence 'IM_MATCH_KEY_ID_SEQ'
CREATE SEQUENCE IM_MATCH_KEY_ID_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 100
    CYCLE
    NOORDER
;


PROMPT Creating SEQUENCE 'im_match_group_cn_seq'
CREATE SEQUENCE im_match_group_cn_seq
    INCREMENT BY 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
;


PROMPT Creating SEQUENCE 'im_match_group_cn_cnr_seq'
CREATE SEQUENCE im_match_group_cn_cnr_seq 
    INCREMENT BY 1 
	MAXVALUE 9999999999 
	MINVALUE 1 
	CACHE 5000
;


PROMPT Creating SEQUENCE 'im_sum_match_cn_hist_seq'
CREATE SEQUENCE im_sum_match_cn_hist_seq 
    INCREMENT BY 1 
	MAXVALUE 9999999999 
	MINVALUE 1 
	CACHE 5000
;


PROMPT Creating Sequence 'IM_TASK_ID_SEQ'
CREATE SEQUENCE IM_TASK_ID_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
    CYCLE
    NOORDER
;


PROMPT Creating SEQUENCE 'im_match_group_cn_cn_seq'
CREATE SEQUENCE im_match_group_cn_cn_seq  
    INCREMENT BY 1 
	MAXVALUE 9999999999 
	MINVALUE 1 
	CACHE 5000
;


PROMPT Creating Sequence 'IM_MATCH_STGY_DTL_SEQ'
CREATE SEQUENCE IM_MATCH_STGY_DTL_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 100
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_TRIAL_ID_SEQ'
CREATE SEQUENCE IM_TRIAL_ID_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 10
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_MATCH_STGY_HEAD_SEQ'
CREATE SEQUENCE IM_MATCH_STGY_HEAD_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    CACHE 5000
    NOORDER
;


PROMPT Creating Sequence 'im_detail_match_cn_hist_seq'
CREATE SEQUENCE im_detail_match_cn_hist_seq 
    INCREMENT BY 1 
	MAXVALUE 9999999999 
	MINVALUE 1 
	CACHE 5000
;


PROMPT Creating Sequence 'IM_DISCREPANCY_LIST_RCPT_SEQ'
CREATE SEQUENCE IM_DISCREPANCY_LIST_RCPT_SEQ
    INCREMENT BY 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 5000
    NOORDER
;


PROMPT Creating Sequence 'IM_WORKSPACE_ID_SEQ'
CREATE SEQUENCE IM_WORKSPACE_ID_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 10
    CYCLE
    NOORDER
;


PROMPT Creating Sequence 'IM_MATCH_STGY_SEQ'
CREATE SEQUENCE IM_MATCH_STGY_SEQ
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 9999999999
    MINVALUE 1
    CACHE 100
    CYCLE
    NOORDER
;
 

PROMPT Creating Sequence 'IM_DETAIL_MATCH_WS_SEQ'
CREATE SEQUENCE IM_DETAIL_MATCH_WS_SEQ
	INCREMENT BY 1
    START WITH 1
	MAXVALUE 9999999999
	MINVALUE 1
	CACHE 100
	CYCLE 
    NOORDER
;

	
PROMPT CREATING TABLE 'IM_ALT_VIEW_GL_CROSS_REF';
CREATE TABLE IM_ALT_VIEW_GL_CROSS_REF 
    ( 
     CROSS_REF_TYPE    VARCHAR2 (6)  NOT NULL , 
     ACCOUNT_CODE      VARCHAR2 (20)  NOT NULL , 
     SEGMENT1_VALUE    VARCHAR2 (75) , 
     SEGMENT2_VALUE    VARCHAR2 (75) , 
     SEGMENT3_VALUE    VARCHAR2 (75) , 
     SEGMENT4_VALUE    VARCHAR2 (75) , 
     SEGMENT5_VALUE    VARCHAR2 (75) , 
     SEGMENT6_VALUE    VARCHAR2 (75) , 
     SEGMENT7_VALUE    VARCHAR2 (75) , 
     SEGMENT8_VALUE    VARCHAR2 (75) , 
     SEGMENT9_VALUE    VARCHAR2 (75) , 
     SEGMENT10_VALUE   VARCHAR2 (75) , 
     SET_OF_BOOKS_ID   NUMBER (15) DEFAULT -1  NOT NULL , 
     TAX_CODE          VARCHAR2 (6) DEFAULT 'NOCODE'  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.CROSS_REF_TYPE IS 'this column will contain the cross_ref_type of the account segments.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.ACCOUNT_CODE is 'this column will contain the code for the account segments.'
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT1_VALUE IS 'this column will contain the first segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT2_VALUE IS 'this column will contain the second segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT3_VALUE IS 'this column will contain the third segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT4_VALUE IS 'this column will contain the fourth segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT5_VALUE IS 'this column will contain the sixth segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT6_VALUE IS 'this column will contain the sixth segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT7_VALUE IS 'this column will contain the seventh segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT8_VALUE IS 'this column will contain the eighth segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT9_VALUE IS 'this column will contain the ninth segment.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SEGMENT10_VALUE IS 'this column will hold the tenth segment value.' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.SET_OF_BOOKS_ID IS 'default -1' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.TAX_CODE IS 'Tax code for account segment' 
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_ALT_VIEW_GL_CROSS_REF.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_ALT_VIEW_GL_CROSS_REF';
CREATE UNIQUE INDEX PK_IM_ALT_VIEW_GL_CROSS_REF ON IM_ALT_VIEW_GL_CROSS_REF 
    ( 
     CROSS_REF_TYPE ASC , 
     ACCOUNT_CODE ASC , 
     SET_OF_BOOKS_ID ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_ALT_VIEW_GL_CROSS_REF';
ALTER TABLE IM_ALT_VIEW_GL_CROSS_REF 
    ADD CONSTRAINT PK_IM_ALT_VIEW_GL_CROSS_REF PRIMARY KEY ( CROSS_REF_TYPE, ACCOUNT_CODE, SET_OF_BOOKS_ID, TAX_CODE ) 
    USING INDEX PK_IM_ALT_VIEW_GL_CROSS_REF ;




PROMPT CREATING TABLE 'IM_AP_STAGE_DETAIL';
CREATE TABLE IM_AP_STAGE_DETAIL 
    ( 
     DOC_ID                NUMBER (10)  NOT NULL , 
     SEQ_NO                NUMBER (10)  NOT NULL , 
     TRAN_CODE             VARCHAR2 (6)  NOT NULL , 
     LINE_TYPE_LOOKUP_CODE VARCHAR2 (25)  NOT NULL , 
     AMOUNT                NUMBER (20,4)  NOT NULL , 
     SEGMENT1              VARCHAR2 (25) , 
     SEGMENT2              VARCHAR2 (25) , 
     SEGMENT3              VARCHAR2 (25) , 
     SEGMENT4              VARCHAR2 (25) , 
     SEGMENT5              VARCHAR2 (25) , 
     SEGMENT6              VARCHAR2 (25) , 
     SEGMENT7              VARCHAR2 (25) , 
     SEGMENT8              VARCHAR2 (25) , 
     SEGMENT9              VARCHAR2 (25) , 
     SEGMENT10             VARCHAR2 (25) , 
     CREATE_DATE_TIME      DATE  NOT NULL , 
     SET_OF_BOOKS_ID       NUMBER (15) DEFAULT -1  NOT NULL , 
     POSTING_ID            NUMBER (10) , 
     ORG_UNIT              NUMBER (15) , 
     SEGMENT11             VARCHAR2 (25) , 
     SEGMENT12             VARCHAR2 (25) , 
     SEGMENT13             VARCHAR2 (25) , 
     SEGMENT14             VARCHAR2 (25) , 
     SEGMENT15             VARCHAR2 (25) , 
     SEGMENT16             VARCHAR2 (25) , 
     SEGMENT17             VARCHAR2 (25) , 
     SEGMENT18             VARCHAR2 (25) , 
     SEGMENT19             VARCHAR2 (25) , 
     SEGMENT20             VARCHAR2 (25) , 
     ODI_SESSION_NUM       NUMBER (10) , 
     REFERENCE_ID          VARCHAR2 (25) , 
     VAT_CODE              VARCHAR2 (6) , 
     VAT_RATE              NUMBER (20,10) , 
     LINE_GROUP_NO         NUMBER (10) , 
     PRORATE_ACROSS_FLAG   VARCHAR2 (1) DEFAULT 'N'  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_AP_STAGE_DETAIL.DOC_ID IS 'this column holds the invoice matching document id of the document being posted to oracle financials 11.5.10.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEQ_NO IS 'this column holds a sequence number that is generated to act as part of the primary key for the table, along with the doc_id column.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.TRAN_CODE IS 'this column holds the transaction code.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.LINE_TYPE_LOOKUP_CODE IS 'this value will vary; the rules are: if the tran-code is unr or vwt or reason or crn, then this value should be item. if this is a generated tax line, then this value should be tax. if none of the above, then this value should be miscellaneous.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.AMOUNT IS 'this column holds the amount from the transaction.  exception - for generated tax lines, the amount for this line should be the amount from the taxable line times the tax rate.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT1 IS 'this column holds the value of the first account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT2 IS 'this column holds the value of the second account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT3 IS 'this column holds the value of the third account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT4 IS 'this column holds the value of the fourth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT5 IS 'this column holds the value of the fifth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT6 IS 'this column holds the value of the sixth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT7 IS 'this column holds the value of the seventh account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT8 IS 'this column holds the value of the eighth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT9 IS 'this column holds the value of the ninth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT10 IS 'this column holds the value of the tenth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.CREATE_DATE_TIME IS 'this column holds the system date and time stamp of the creation of the posting header record.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SET_OF_BOOKS_ID IS 'set of books identifier and the default value should be -1' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.POSTING_ID IS 'reference to posting process' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.ORG_UNIT IS 'org unit' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT11 IS 'segment 11' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT12 IS 'segment 12' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT13 IS 'segment 13' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT14 IS 'segment 14' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT15 IS 'segment 15' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT16 IS 'segment 16' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT17 IS 'segment 17' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT18 IS 'segment 18' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT19 IS 'segment 19' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.SEGMENT20 IS 'segment 20' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.ODI_SESSION_NUM IS 'odi session number' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.REFERENCE_ID IS 'reference id' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.VAT_CODE IS 'vat code' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.VAT_RATE IS 'vat rate' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.LINE_GROUP_NO IS 'Groups together the TAX line and all lines that contribute to the TAX amounts. Only populated when the system option prorate_across_tax_codes is set to ?Y?.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL.PRORATE_ACROSS_FLAG IS 'Flag to identify tax postings subject to proration.' 
;
PROMPT CREATING INDEX 'PK_IM_AP_STAGE_DETAIL';
CREATE UNIQUE INDEX PK_IM_AP_STAGE_DETAIL ON IM_AP_STAGE_DETAIL 
    ( 
     DOC_ID ASC , 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_AP_STAGE_DETAIL';
ALTER TABLE IM_AP_STAGE_DETAIL 
    ADD CONSTRAINT PK_IM_AP_STAGE_DETAIL PRIMARY KEY ( DOC_ID, SEQ_NO ) 
    USING INDEX PK_IM_AP_STAGE_DETAIL ;




PROMPT CREATING TABLE 'IM_AP_STAGE_DETAIL_ERROR';
CREATE TABLE IM_AP_STAGE_DETAIL_ERROR 
    ( 
     DOC_ID                NUMBER (10)  NOT NULL , 
     SEQ_NO                NUMBER (10)  NOT NULL , 
     TRAN_CODE             VARCHAR2 (6)  NOT NULL , 
     LINE_TYPE_LOOKUP_CODE VARCHAR2 (25)  NOT NULL , 
     AMOUNT                NUMBER (20,4)  NOT NULL , 
     VAT_CODE              VARCHAR2 (6) , 
     SEGMENT1              VARCHAR2 (25) , 
     SEGMENT2              VARCHAR2 (25) , 
     SEGMENT3              VARCHAR2 (25) , 
     SEGMENT4              VARCHAR2 (25) , 
     SEGMENT5              VARCHAR2 (25) , 
     SEGMENT6              VARCHAR2 (25) , 
     SEGMENT7              VARCHAR2 (25) , 
     SEGMENT8              VARCHAR2 (25) , 
     SEGMENT9              VARCHAR2 (25) , 
     SEGMENT10             VARCHAR2 (25) , 
     CREATE_DATE_TIME      DATE  NOT NULL , 
     ERR_MESSAGE           VARCHAR2 (255) , 
     SUPPORT_ERR_MESSAGE   VARCHAR2 (500) , 
     SET_OF_BOOKS_ID       NUMBER (15)  NOT NULL , 
     LINE_GROUP_NO         NUMBER (10) , 
     PRORATE_ACROSS_FLAG   VARCHAR2 (1) DEFAULT 'N'  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.DOC_ID IS 'this column holds the invoice matching document id of the document being posted to oracle financials 11.5.10.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEQ_NO IS 'this column holds a sequence number that is generated to act as part of the primary key for the table, along with the doc_id column.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.TRAN_CODE IS 'this column holds the transaction code.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.LINE_TYPE_LOOKUP_CODE IS 'this value will vary; the rules are: if the tran-code is unr or vwt or reason or crn, then this value should be item. if this is a generated tax line, then this value should be tax. if none of the above, then this value should be miscellaneous.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.AMOUNT IS 'this column holds the amount from the transaction.  exception - for generated tax lines, the amount for this line should be the amount from the taxable line times the tax rate.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.VAT_CODE IS 'this is the vat code.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT1 IS 'this column holds the value of the first account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT2 IS 'this column holds the value of the second account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT3 IS 'this column holds the value of the third account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT4 IS 'this column holds the value of the fourth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT5 IS 'this column holds the value of the fifth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT6 IS 'this column holds the value of the sixth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT7 IS 'this column holds the value of the seventh account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT8 IS 'this column holds the value of the eighth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT9 IS 'this column holds the value of the ninth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SEGMENT10 IS 'this column holds the value of the tenth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.CREATE_DATE_TIME IS 'this column holds the system date and time stamp of the creation of the posting header record.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.ERR_MESSAGE IS 'holds the error message.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SUPPORT_ERR_MESSAGE IS 'holds supporting error message information.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.SET_OF_BOOKS_ID IS 'set of books identifier' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.LINE_GROUP_NO IS 'Groups together the TAX line and all lines that contribute to the TAX amounts. Only populated when the system option prorate_across_tax_codes is set to ?Y?.' 
;

COMMENT ON COLUMN IM_AP_STAGE_DETAIL_ERROR.PRORATE_ACROSS_FLAG IS 'Flag to identify tax postings subject to proration.' 
;
PROMPT CREATING INDEX 'PK_IM_AP_STAGE_DETAIL_ERROR';
CREATE UNIQUE INDEX PK_IM_AP_STAGE_DETAIL_ERROR ON IM_AP_STAGE_DETAIL_ERROR 
    ( 
     DOC_ID ASC , 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_AP_STAGE_DETAIL_ERROR';
ALTER TABLE IM_AP_STAGE_DETAIL_ERROR 
    ADD CONSTRAINT PK_IM_AP_STAGE_DETAIL_ERROR PRIMARY KEY ( DOC_ID, SEQ_NO ) 
    USING INDEX PK_IM_AP_STAGE_DETAIL_ERROR ;





PROMPT CREATING TABLE 'IM_AP_STAGE_HEAD';
CREATE TABLE IM_AP_STAGE_HEAD 
    ( 
     SEQ_NO                NUMBER (10)  NOT NULL , 
     DOC_ID                NUMBER (10)  NOT NULL , 
     INVC_TYPE_LOOKUP_CODE VARCHAR2 (25)  NOT NULL , 
     INVOICE_NUMBER        VARCHAR2 (50) , 
     VENDOR                VARCHAR2 (10)  NOT NULL , 
     ORACLE_SITE_ID        NUMBER (15) , 
     CURRENCY_CODE         VARCHAR2 (3)  NOT NULL , 
     EXCHANGE_RATE         NUMBER (20,10) , 
     EXCHANGE_RATE_TYPE    VARCHAR2 (30) , 
     DOC_DATE              DATE , 
     AMOUNT                NUMBER (20,4)  NOT NULL , 
     BEST_TERMS_DATE       DATE , 
     SEGMENT1              VARCHAR2 (25) , 
     SEGMENT2              VARCHAR2 (25) , 
     SEGMENT3              VARCHAR2 (25) , 
     SEGMENT4              VARCHAR2 (25) , 
     SEGMENT5              VARCHAR2 (25) , 
     SEGMENT6              VARCHAR2 (25) , 
     SEGMENT7              VARCHAR2 (25) , 
     SEGMENT8              VARCHAR2 (25) , 
     SEGMENT9              VARCHAR2 (25) , 
     SEGMENT10             VARCHAR2 (25) , 
     CREATE_DATE_TIME      DATE  NOT NULL , 
     BEST_TERMS            VARCHAR2 (15) , 
     SET_OF_BOOKS_ID       NUMBER (15) DEFAULT -1  NOT NULL , 
     POSTING_ID            NUMBER (10) , 
     ORG_UNIT              NUMBER (15) , 
     SEGMENT11             VARCHAR2 (25) , 
     SEGMENT12             VARCHAR2 (25) , 
     SEGMENT13             VARCHAR2 (25) , 
     SEGMENT14             VARCHAR2 (25) , 
     SEGMENT15             VARCHAR2 (25) , 
     SEGMENT16             VARCHAR2 (25) , 
     SEGMENT17             VARCHAR2 (25) , 
     SEGMENT18             VARCHAR2 (25) , 
     SEGMENT19             VARCHAR2 (25) , 
     SEGMENT20             VARCHAR2 (25) , 
     ODI_SESSION_NUM       NUMBER (10) , 
     REFERENCE_ID          VARCHAR2 (25) 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEQ_NO IS 'this column holds a sequence number that is generated to act as a primary key for the table.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.DOC_ID IS 'this column holds the invoice matching document id of the document being posted to oracle financials 11.5.10.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.INVC_TYPE_LOOKUP_CODE IS 'if type = mrchi or nmrchi, set this value to standard.  otherwise set this value to credit.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.INVOICE_NUMBER IS 'this field is not the same as the invoice id.  this field contains concatenated data, as follows: chars 1-34: the first 34 characters from the ext doc id char 35: a hyphen char 36-50: the doc id' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.VENDOR IS 'this column holds the identifier of the supplier or partner associated with the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.ORACLE_SITE_ID IS 'this column holds the value of the oracle vendor site id for a supplier address, and is retrieved from rms using the following procedure: 1  the location from this transaction is used find the org unit. 2  the retrieved org unit is used to find the oracle vendor site id.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.CURRENCY_CODE IS 'this column holds the currency code associated with the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.EXCHANGE_RATE IS 'this column holds the exchange rate for the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.EXCHANGE_RATE_TYPE IS 'this column holds the exchange rate type for the exchange rate for the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.DOC_DATE IS 'this column holds the invoice date.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.AMOUNT IS 'this column holds the amount from the tap transaction.  (it is the amount that needs to be paid by the a/p system, and it should equal the total of the amounts from the detail lines.)' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.BEST_TERMS_DATE IS 'this column holds the date calculated as the best terms date for the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT1 IS 'this column holds the value of the first account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT2 IS 'this column holds the value of the second account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT3 IS 'this column holds the value of the third account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT4 IS 'this column holds the value of the fourth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT5 IS 'this column holds the value of the fifth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT6 IS 'this column holds the value of the sixth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT7 IS 'this column holds the value of the seventh account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT8 IS 'this column holds the value of the eighth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT9 IS 'this column holds the value of the ninth account segment' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT10 IS 'this column holds the value of the tenth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.CREATE_DATE_TIME IS 'this column holds the system date and time stamp of the creation of the posting header record.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.BEST_TERMS IS 'this column holds the term calculated as the best term  for the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SET_OF_BOOKS_ID IS 'set of books identifier.  default value should be -1.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.POSTING_ID IS 'reference to posting process that added this row.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.ORG_UNIT IS 'org unit' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT11 IS 'segment 11' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT12 IS 'segment 12' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT13 IS 'segment 13' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT14 IS 'segment 14' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT15 IS 'segment 15' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT16 IS 'segment 16' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT17 IS 'segment 17' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT18 IS 'segment 18' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT19 IS 'segment 19' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.SEGMENT20 IS 'segment 20' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.ODI_SESSION_NUM IS 'odi session number' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD.REFERENCE_ID IS 'reference id' 
;

PROMPT CREATING INDEX 'PK_IM_AP_STAGE_HEAD';
CREATE UNIQUE INDEX PK_IM_AP_STAGE_HEAD ON IM_AP_STAGE_HEAD 
    ( 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
	INITRANS 12;

PROMPT CREATING PRIMARY KEY ON 'IM_AP_STAGE_HEAD';
ALTER TABLE IM_AP_STAGE_HEAD 
    ADD CONSTRAINT PK_IM_AP_STAGE_HEAD PRIMARY KEY ( SEQ_NO ) 
    USING INDEX PK_IM_AP_STAGE_HEAD ;




PROMPT CREATING TABLE 'IM_AP_STAGE_HEAD_ERROR';
CREATE TABLE IM_AP_STAGE_HEAD_ERROR 
    ( 
     SEQ_NO                NUMBER (10)  NOT NULL , 
     DOC_ID                NUMBER (10)  NOT NULL , 
     INVC_TYPE_LOOKUP_CODE VARCHAR2 (25)  NOT NULL , 
     INVOICE_NUMBER        VARCHAR2 (50) , 
     VENDOR                VARCHAR2 (10)  NOT NULL , 
     ORACLE_SITE_ID        NUMBER (15) , 
     CURRENCY_CODE         VARCHAR2 (3)  NOT NULL , 
     EXCHANGE_RATE         NUMBER (20,10) , 
     EXCHANGE_RATE_TYPE    VARCHAR2 (30) , 
     DOC_DATE              DATE , 
     AMOUNT                NUMBER (20,4)  NOT NULL , 
     BEST_TERMS_DATE       DATE , 
     SEGMENT1              VARCHAR2 (25) , 
     SEGMENT2              VARCHAR2 (25) , 
     SEGMENT3              VARCHAR2 (25) , 
     SEGMENT4              VARCHAR2 (25) , 
     SEGMENT5              VARCHAR2 (25) , 
     SEGMENT6              VARCHAR2 (25) , 
     SEGMENT7              VARCHAR2 (25) , 
     SEGMENT8              VARCHAR2 (25) , 
     SEGMENT9              VARCHAR2 (25) , 
     SEGMENT10             VARCHAR2 (25) , 
     CREATE_DATE_TIME      DATE  NOT NULL , 
     ERR_MESSAGE           VARCHAR2 (255) , 
     SUPPORT_ERR_MESSAGE   VARCHAR2 (500) , 
     BEST_TERMS            VARCHAR2 (15) , 
     SET_OF_BOOKS_ID       NUMBER (15)  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_AP_STAGE_HEAD_ERROR';
ALTER TABLE IM_AP_STAGE_HEAD_ERROR 
    ADD CONSTRAINT CHK_IAE_EXCHANGE_RATE_TYPE 
    CHECK ( exchange_rate_type is null or exchange_rate_type ='USER') 
;


COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEQ_NO IS 'this column holds a sequence number that is generated to act as a primary key for the table.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.DOC_ID IS 'this column holds the invoice matching document id of the document being posted to oracle financials 11.5.10.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.INVC_TYPE_LOOKUP_CODE IS 'if type = mrchi or nmrchi, set this value to standard.  otherwise set this value to credit.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.INVOICE_NUMBER IS 'this field is not the same as the invoice id.  this field contains concatenated data, as follows: chars 1-34: the first 34 characters from the ext doc id char 35: a hyphen char 36-50: the doc id' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.VENDOR IS 'this column holds the identifier of the supplier or partner associated with the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.ORACLE_SITE_ID IS 'this column holds the value of the oracle vendor site id for a supplier address, and is retrieved from rms using the following procedure: 1  the location from this transaction is used find the org unit. 2  the retrieved org unit is used to find the oracle vendor site id.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.CURRENCY_CODE IS 'this column holds the currency code associated with the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.EXCHANGE_RATE IS 'this column holds the exchange rate for the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.EXCHANGE_RATE_TYPE IS 'this column holds the exchange rate type for the exchange rate for the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.DOC_DATE IS 'this column holds the invoice date.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.AMOUNT IS 'this column holds the amount from the tap transaction.  (it is the amount that needs to be paid by the a/p system, and it should equal the total of the amounts from the detail lines.)' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.BEST_TERMS_DATE IS 'this column holds the date calculated as the best terms date for the document.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT1 IS 'this column holds the value of the first account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT2 IS 'this column holds the value of the second account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT3 IS 'this column holds the value of the third account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT4 IS 'this column holds the value of the fourth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT5 IS 'this column holds the value of the fifth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT6 IS 'this column holds the value of the sixth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT7 IS 'this column holds the value of the seventh account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT8 IS 'this column holds the value of the eighth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT9 IS 'this column holds the value of the ninth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SEGMENT10 IS 'this column holds the value of the tenth account segment.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.CREATE_DATE_TIME IS 'this column holds the system date and time stamp of the creation of the posting header record.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.ERR_MESSAGE IS 'holds the error message.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SUPPORT_ERR_MESSAGE IS 'holds supporting error message information.' 
;

COMMENT ON COLUMN IM_AP_STAGE_HEAD_ERROR.SET_OF_BOOKS_ID IS 'set of  books identifier' 
;
PROMPT CREATING INDEX 'PK_IM_AP_STAGE_HEAD_ERROR';
CREATE UNIQUE INDEX PK_IM_AP_STAGE_HEAD_ERROR ON IM_AP_STAGE_HEAD_ERROR 
    ( 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_AP_STAGE_HEAD_ERROR';
ALTER TABLE IM_AP_STAGE_HEAD_ERROR 
    ADD CONSTRAINT PK_IM_AP_STAGE_HEAD_ERROR PRIMARY KEY ( SEQ_NO ) 
    USING INDEX PK_IM_AP_STAGE_HEAD_ERROR ;




PROMPT CREATING TABLE 'IM_BPEL_SEQUENCING_HELPER';
CREATE TABLE IM_BPEL_SEQUENCING_HELPER 
    ( 
     TABLE_NAME   VARCHAR2 (255) , 
     LAST_READ_ID NUMBER (15) 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_BPEL_SEQUENCING_HELPER.TABLE_NAME IS 'this column holds the source table name of the bpel extract.' 
;

COMMENT ON COLUMN IM_BPEL_SEQUENCING_HELPER.LAST_READ_ID IS 'this column holds the identifier of the data pulled by the bpel extract.' 
;




PROMPT CREATING TABLE 'IM_CN_DETAIL_MATCH_HIS';
CREATE TABLE IM_CN_DETAIL_MATCH_HIS 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     REASON_CODE_ID     VARCHAR2 (20) , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.MATCH_ID IS 'the match id' 
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.DOC_ID IS 'the document id' 
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.ITEM IS 'the item id' 
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.REASON_CODE_ID IS 'the reason code id for this document detail.' 
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_CN_DETAIL_MATCH_HIS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_CN_DETAIL_MATCH_HIS_I1';
CREATE INDEX IM_CN_DETAIL_MATCH_HIS_I1 ON IM_CN_DETAIL_MATCH_HIS 
    ( 
     DOC_ID ASC , 
     ITEM ASC , 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'PK_IM_CN_DETAIL_MATCH_HIS';
CREATE UNIQUE INDEX PK_IM_CN_DETAIL_MATCH_HIS ON IM_CN_DETAIL_MATCH_HIS 
    ( 
     MATCH_ID ASC , 
     DOC_ID ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_CN_DETAIL_MATCH_HIS';
ALTER TABLE IM_CN_DETAIL_MATCH_HIS 
    ADD CONSTRAINT PK_IM_CN_DETAIL_MATCH_HIS PRIMARY KEY ( MATCH_ID, DOC_ID, ITEM ) 
    USING INDEX PK_IM_CN_DETAIL_MATCH_HIS ;




PROMPT CREATING TABLE 'IM_CN_SUMMARY_MATCH_HIS';
CREATE TABLE IM_CN_SUMMARY_MATCH_HIS 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_CN_SUMMARY_MATCH_HIS.MATCH_ID IS 'the match id' 
;

COMMENT ON COLUMN IM_CN_SUMMARY_MATCH_HIS.DOC_ID IS 'the document id' 
;

COMMENT ON COLUMN IM_CN_SUMMARY_MATCH_HIS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_CN_SUMMARY_MATCH_HIS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_CN_SUMMARY_MATCH_HIS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_CN_SUMMARY_MATCH_HIS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_CN_SUMMARY_MATCH_HIS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_CN_SUMMARY_MATCH_HIS';
CREATE UNIQUE INDEX PK_IM_CN_SUMMARY_MATCH_HIS ON IM_CN_SUMMARY_MATCH_HIS 
    ( 
     MATCH_ID ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_CN_SUMMARY_MATCH_HIS_I1';
CREATE INDEX IM_CN_SUMMARY_MATCH_HIS_I1 ON IM_CN_SUMMARY_MATCH_HIS 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_CN_SUMMARY_MATCH_HIS';
ALTER TABLE IM_CN_SUMMARY_MATCH_HIS 
    ADD CONSTRAINT PK_IM_CN_SUMMARY_MATCH_HIS PRIMARY KEY ( MATCH_ID, DOC_ID ) 
    USING INDEX PK_IM_CN_SUMMARY_MATCH_HIS ;




PROMPT CREATING TABLE 'IM_COMPLEX_DEAL_DETAIL';
CREATE TABLE IM_COMPLEX_DEAL_DETAIL 
    ( 
     DOC_ID                  NUMBER (10)  NOT NULL , 
     SEQ_NO                  NUMBER (10)  NOT NULL , 
     LOC_TYPE                VARCHAR2 (6)  NOT NULL , 
     LOCATION                NUMBER (10)  NOT NULL , 
     ITEM                    VARCHAR2 (25)  NOT NULL , 
     ORDER_NO                NUMBER (12) , 
     LOCAL_CURRENCY          VARCHAR2 (3)  NOT NULL , 
     INCOME_LOCAL_CURR       NUMBER (20,4)  NOT NULL , 
     INCOME_DEAL_CURR        NUMBER (20,4)  NOT NULL , 
     ACTUAL_TURNOVER_UNITS   NUMBER (20,4) , 
     ACTUAL_TURNOVER_REVENUE NUMBER (20,4) , 
	 CREATED_BY  	         VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE           DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY         VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE        DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID       NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.DOC_ID IS 'this column holds the document id  for the complex deal income.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.SEQ_NO IS 'this column holds the sequence uniquely identifies the record.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.LOC_TYPE IS 'this column holds the location type of the deal income.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.LOCATION IS 'this column holds the location corresponding to the deal income.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.ITEM IS 'this column holds the item corresponding to this portion of the income.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.ORDER_NO IS 'this column holds the order_no corresponding to this portion of the income.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.LOCAL_CURRENCY IS 'this column holds the locations currency.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.INCOME_LOCAL_CURR IS 'this column holds the sum of all the income for an item/location in the local currency for the periods the deal is invoiced for.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.INCOME_DEAL_CURR IS 'this column holds the sum of all the income for an item/location in the deals currency for the periods the deal is invoiced for. the exchange rate used will be the exchange rate at the end of each individual period.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.ACTUAL_TURNOVER_UNITS IS 'this value will be the sum of all units across for the item/loc for all the periods that are being invoiced.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.ACTUAL_TURNOVER_REVENUE IS 'this value will be the sum of all revenue across for the item/loc for all the periods that are being invoiced.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_COMPLEX_DEAL_DETAIL';
CREATE UNIQUE INDEX PK_IM_COMPLEX_DEAL_DETAIL ON IM_COMPLEX_DEAL_DETAIL 
    ( 
     DOC_ID ASC , 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_COMPLEX_DEAL_DETAIL';
ALTER TABLE IM_COMPLEX_DEAL_DETAIL 
    ADD CONSTRAINT PK_IM_COMPLEX_DEAL_DETAIL PRIMARY KEY ( DOC_ID, SEQ_NO ) 
    USING INDEX PK_IM_COMPLEX_DEAL_DETAIL ;





PROMPT CREATING TABLE 'IM_COMPLEX_DEAL_DETAIL_TAX';
CREATE TABLE IM_COMPLEX_DEAL_DETAIL_TAX 
    ( 
     DOC_ID            NUMBER (10)  NOT NULL , 
     SEQ_NO            NUMBER (10)  NOT NULL , 
     ITEM              VARCHAR2 (25)  NOT NULL , 
     TAX_CODE          VARCHAR2 (6)  NOT NULL , 
     TAX_RATE          NUMBER (20,10)  NOT NULL , 
     TAX_BASIS         NUMBER (20,4)  NOT NULL , 
     TAX_AMOUNT        NUMBER (20,4)  NOT NULL , 
     REVERSE_VAT_IND   VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_COMPLEX_DEAL_DETAIL_TAX';
ALTER TABLE IM_COMPLEX_DEAL_DETAIL_TAX 
    ADD CONSTRAINT CHK_ICDDT_REV_VAT_IND 
    CHECK ( REVERSE_VAT_IND IN ('Y', 'N')) 
;


COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.DOC_ID IS 'doc id' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.SEQ_NO IS 'sequence number' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.ITEM IS 'item id' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.TAX_CODE IS 'tax code' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.TAX_RATE IS 'tax rate' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.TAX_BASIS IS 'tax basis' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.TAX_AMOUNT IS 'tax amount' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.REVERSE_VAT_IND IS 'Indicates if the item is subject to reverse charge VAT at the vat region. Valid values are Y and N.' 
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_COMPLEX_DEAL_DETAIL_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_COMPLEX_DEAL_DETAIL_TAX';
CREATE UNIQUE INDEX PK_IM_COMPLEX_DEAL_DETAIL_TAX ON IM_COMPLEX_DEAL_DETAIL_TAX 
    ( 
     DOC_ID ASC , 
     SEQ_NO ASC , 
     ITEM ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_COMPLEX_DEAL_DETAIL_TAX';
ALTER TABLE IM_COMPLEX_DEAL_DETAIL_TAX 
    ADD CONSTRAINT PK_IM_COMPLEX_DEAL_DETAIL_TAX PRIMARY KEY ( DOC_ID, SEQ_NO, ITEM, TAX_CODE ) 
    USING INDEX PK_IM_COMPLEX_DEAL_DETAIL_TAX ;




PROMPT CREATING TABLE 'IM_DETAIL_MATCH_HISTORY';
CREATE TABLE IM_DETAIL_MATCH_HISTORY 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     AUTO_MATCHED       VARCHAR2 (1)  NOT NULL , 
     EXACT_MATCH        VARCHAR2 (1)  NOT NULL ,
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_DETAIL_MATCH_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_HISTORY 
    ADD CONSTRAINT CHK_IM_DTL_MTCH_HIST_AUTO_MAT 
    CHECK (AUTO_MATCHED IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DETAIL_MATCH_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_HISTORY 
    ADD CONSTRAINT CHK_IM_DTL_MTCH_HIST_EXACT_MAT 
    CHECK (EXACT_MATCH IN ('N','Y')) 
;


COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.MATCH_ID IS 'this column will uniquely identify a match.' 
;

COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.AUTO_MATCHED IS 'this column indicates whether the match was obtained automatically by the system or was created manually.' 
;

COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.EXACT_MATCH IS 'this column indicates whether the match was exact or not exact but within tolerance.' 
;
PROMPT CREATING INDEX 'PK_IM_DETAIL_MATCH_HISTORY';
CREATE UNIQUE INDEX PK_IM_DETAIL_MATCH_HISTORY ON IM_DETAIL_MATCH_HISTORY 
    ( 
     MATCH_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DETAIL_MATCH_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_HISTORY 
    ADD CONSTRAINT PK_IM_DETAIL_MATCH_HISTORY PRIMARY KEY ( MATCH_ID ) 
    USING INDEX PK_IM_DETAIL_MATCH_HISTORY ;




PROMPT CREATING TABLE 'IM_DETAIL_MATCH_INVC_HISTORY';
CREATE TABLE IM_DETAIL_MATCH_INVC_HISTORY 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.MATCH_ID IS 'this column will reference a unique successful detail match that the invoice line is part of.' 
;

COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.DOC_ID is 'this column contains the invoice id that the matched invoice line is part of.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.ITEM IS 'this column will hold the item number for the invoice line that is successfully matched.' 
;

COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_HISTORY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_INVC_HISTORY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_DETAIL_MATCH_INVC_HIST';
CREATE UNIQUE INDEX PK_IM_DETAIL_MATCH_INVC_HIST ON IM_DETAIL_MATCH_INVC_HISTORY 
    ( 
     MATCH_ID ASC , 
     DOC_ID ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
	
PROMPT CREATING INDEX 'IM_DETAIL_MATCH_INVC_HIST_I2';
CREATE INDEX IM_DETAIL_MATCH_INVC_HIST_I2 ON IM_DETAIL_MATCH_INVC_HISTORY 
    ( 
     DOC_ID ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DETAIL_MATCH_INVC_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_INVC_HISTORY 
    ADD CONSTRAINT PK_IM_DETAIL_MATCH_INVC_HIST PRIMARY KEY ( MATCH_ID, DOC_ID, ITEM ) 
    USING INDEX PK_IM_DETAIL_MATCH_INVC_HIST ;




PROMPT CREATING TABLE 'IM_DETAIL_MATCH_RCPT_HISTORY';
CREATE TABLE IM_DETAIL_MATCH_RCPT_HISTORY 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     SHIPMENT           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL , 
	 SUBSTITUTE_ITEM VARCHAR2 (25 ) NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.MATCH_ID IS 'this column will reference a unique detail match that this receipt line is part of.' 
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.SHIPMENT is 'this column will hold the receipt id that the matched receipt line is part of.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.ITEM IS 'this column will hold the item number for the matched receipt line.' 
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_RCPT_HISTORY.SUBSTITUTE_ITEM is 'The substitute item used during the match.'
;
PROMPT CREATING INDEX 'PK_IM_DETAIL_MATCH_RCPT_HIST';
CREATE UNIQUE INDEX PK_IM_DETAIL_MATCH_RCPT_HIST ON IM_DETAIL_MATCH_RCPT_HISTORY 
    ( 
     MATCH_ID ASC , 
     SHIPMENT ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DETAIL_MATCH_RCPT_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_RCPT_HISTORY 
    ADD CONSTRAINT PK_IM_DETAIL_MATCH_RCPT_HIST PRIMARY KEY ( MATCH_ID, SHIPMENT, ITEM ) 
    USING INDEX PK_IM_DETAIL_MATCH_RCPT_HIST ;





PROMPT CREATING TABLE 'IM_DOC_DETAIL_COMMENTS';
CREATE TABLE IM_DOC_DETAIL_COMMENTS 
    ( 
     COMMENT_ID        NUMBER (10)  NOT NULL , 
     COMMENT_TYPE      VARCHAR2 (6)  NOT NULL , 
     TEXT              VARCHAR2 (2000)  NOT NULL , 
     CREATED_BY        VARCHAR2 (60) DEFAULT USER NOT NULL , 
     CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL , 
     DOC_ID            NUMBER (10)  NOT NULL , 
     ITEM              VARCHAR2 (25)  NULL , 
     DISCREPANCY_TYPE  VARCHAR2 (6) , 
     REASON_CODE_ID    VARCHAR2 (20) , 
     DEBIT_REASON_CODE VARCHAR2 (20) , 
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_DETAIL_COMMENTS';
ALTER TABLE IM_DOC_DETAIL_COMMENTS 
    ADD CONSTRAINT CHK_IM_DOC_DTL_COM_COMMENT_TYP 
    CHECK (comment_type IN ('E','I')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_DETAIL_COMMENTS';
ALTER TABLE IM_DOC_DETAIL_COMMENTS 
    ADD CONSTRAINT CHK_IM_DOC_DTL_COM_DISCREPANCY 
    CHECK ( DISCREPANCY_TYPE IN ('COST', 'QTY', 'TAX')) 
;


COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.COMMENT_ID IS 'this column holds the unique id of each comment in the system.   comment ids will be generated using the im_comments_seq sequence.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.COMMENT_TYPE IS 'this column holds the type that determines whether the comment is external or internal.  valid values are e or i.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.TEXT IS 'this column holds user entered comment text.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.DOC_ID IS 'this column holds the unique id of the document.  this is part of the foreign key from the im_doc_detail table.  a unique constraint is needed for the combination of doc_id, item and create_datetime.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.ITEM is 'this column will hold the item number for the invoice line that is successfully matched.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.DISCREPANCY_TYPE IS 'the discrepancy type column will be populated when comments are associated with a discrepancy resolution for the item on the document. the column will correspond to a variance resolution for either a cost or quantity discrepancy.  valid values for this column are: cost	cost qty	quantity' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.REASON_CODE_ID IS 'the reason code id column will be populated when comments are associated with a discrepancy resolution for the item on the document. the reason code will correspond to a variance resolution for either a cost or quantity discrepancy.  the reason code must exist on the im_reason_codes table' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.DEBIT_REASON_CODE IS 'this column is used to check discrepancy comments from cost review details screen for debit memo documents.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_COMMENTS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_DOC_DETAIL_COMMENTS';
CREATE UNIQUE INDEX PK_IM_DOC_DETAIL_COMMENTS ON IM_DOC_DETAIL_COMMENTS 
    ( 
     COMMENT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_DETAIL_COMMENTS_I3';
CREATE INDEX IM_DOC_DETAIL_COMMENTS_I3 ON IM_DOC_DETAIL_COMMENTS 
    ( 
     DEBIT_REASON_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_DETAIL_COMMENTS_I2';
CREATE INDEX IM_DOC_DETAIL_COMMENTS_I2 ON IM_DOC_DETAIL_COMMENTS 
    ( 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_DETAIL_COMMENTS_I1';
CREATE INDEX IM_DOC_DETAIL_COMMENTS_I1 ON IM_DOC_DETAIL_COMMENTS 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_DETAIL_COMMENTS';
ALTER TABLE IM_DOC_DETAIL_COMMENTS 
    ADD CONSTRAINT PK_IM_DOC_DETAIL_COMMENTS PRIMARY KEY ( COMMENT_ID ) 
    USING INDEX PK_IM_DOC_DETAIL_COMMENTS ;





PROMPT CREATING TABLE 'IM_DOC_DETAIL_RC_TAX';
CREATE TABLE IM_DOC_DETAIL_RC_TAX 
    ( 
     IM_DOC_DETAIL_REASON_CODES_ID NUMBER (20)  NOT NULL , 
     TAX_CODE                      VARCHAR2 (6)  NOT NULL , 
     TAX_RATE                      NUMBER (20,10)  NOT NULL , 
     TAX_BASIS                     NUMBER (20,4)  NOT NULL , 
     TAX_AMOUNT                    NUMBER (20,4)  NOT NULL , 
     TAX_FORMULA                   VARCHAR2 (500) , 
     TAX_ORDER                     NUMBER (10)  NOT NULL , 
     TAX_FORMULA_TYPE              VARCHAR2 (2) , 
     REVERSE_VAT_IND               VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
	 CREATED_BY  	   			   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     			   DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   			   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  			   DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 			   NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_DETAIL_RC_TAX';
ALTER TABLE IM_DOC_DETAIL_RC_TAX 
    ADD CONSTRAINT CHK_IM_DOC_DTL_RC_TX_FORLA_TYP 
    CHECK (TAX_FORMULA_TYPE IN ('CL','CO','CR','NC')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_DETAIL_RC_TAX';
ALTER TABLE IM_DOC_DETAIL_RC_TAX 
    ADD CONSTRAINT CHK_IDDRCT_REV_VAT_IND 
    CHECK ( REVERSE_VAT_IND IN ('Y', 'N')) 
;


COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.IM_DOC_DETAIL_REASON_CODES_ID IS 'unique key for this tax component and item combination.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.TAX_CODE IS 'the tax code for this detail.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.TAX_RATE IS 'the tax rate for this detail.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.TAX_BASIS IS 'the tax basis for this specific detail.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.TAX_AMOUNT IS 'the total tax amount for this detail and tax component combination.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.TAX_FORMULA IS 'the formula used to calculate the tax basis.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.TAX_ORDER IS 'a numeric value indicating the sequence of how the taxes should be applied.   this is essential for calculating taxes that are based on other taxes.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.TAX_FORMULA_TYPE IS 'describes how item cost was considered in the calculation of the tax basis' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_RC_TAX.REVERSE_VAT_IND IS 'Indicates if the item is subject to reverse charge VAT at the vat region. Valid values are Y and N.' 
;

PROMPT CREATING INDEX 'PK_IM_DOC_DETAIL_RC_TAX';
CREATE UNIQUE INDEX PK_IM_DOC_DETAIL_RC_TAX ON IM_DOC_DETAIL_RC_TAX 
    ( 
     IM_DOC_DETAIL_REASON_CODES_ID ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_DETAIL_RC_TAX';
ALTER TABLE IM_DOC_DETAIL_RC_TAX 
    ADD CONSTRAINT PK_IM_DOC_DETAIL_RC_TAX PRIMARY KEY ( IM_DOC_DETAIL_REASON_CODES_ID, TAX_CODE ) 
    USING INDEX PK_IM_DOC_DETAIL_RC_TAX ;


PROMPT CREATING TABLE 'IM_DOC_DETAIL_REASON_CODES';
CREATE TABLE IM_DOC_DETAIL_REASON_CODES 
    ( 
     IM_DOC_DETAIL_REASON_CODES_ID NUMBER (20)  NOT NULL , 
     DOC_ID                        NUMBER (10)  NOT NULL , 
     ITEM                          VARCHAR2 (25)  NOT NULL , 
     REASON_CODE_ID                VARCHAR2 (20) , 
     STATUS                        VARCHAR2 (6)  NOT NULL , 
     COST_MATCHED                  VARCHAR2 (1)  NOT NULL , 
     QTY_MATCHED                   VARCHAR2 (1)  NOT NULL , 
     ADJUSTED_UNIT_COST            NUMBER (20,4)  NOT NULL , 
     ADJUSTED_QTY                  NUMBER (12,4)  NOT NULL , 
     LAST_UPDATED_BY   			   VARCHAR2 (60)  DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE  			   DATE  DEFAULT SYSDATE NOT NULL , 
     ORIG_UNIT_COST                NUMBER (20,4) , 
     ORIG_QTY                      NUMBER (20,4) , 
     TAX_MATCHED                   VARCHAR2 (1) , 
     UNIT_FREIGHT                  NUMBER (20,4) , 
     UNIT_MRP                      NUMBER (20,4) , 
     UNIT_RETAIL                   NUMBER (20,4) , 
	 CREATED_BY  	   			   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     			   DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 			   NUMBER (15) DEFAULT 1 NOT NULL , 
	 REVERSED_QTY 				   NUMBER (12,4) NULL , 
	 REVERSED_UNIT_COST 		   NUMBER (20,4) NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;

		
		
PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_DETAIL_REASON_CODES';
ALTER TABLE IM_DOC_DETAIL_REASON_CODES 
	ADD CONSTRAINT CHK_IM_DOC_DET_REAS_CODE_C_MCH 
	CHECK (COST_MATCHED IN ('N','Y','D','R'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_DETAIL_REASON_CODES';
ALTER TABLE IM_DOC_DETAIL_REASON_CODES 
	ADD CONSTRAINT CHK_IM_DOC_DET_REAS_CODE_Q_MCH 
	CHECK (QTY_MATCHED IN ('N','Y','D','R'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_DETAIL_REASON_CODES';
ALTER TABLE IM_DOC_DETAIL_REASON_CODES 
    ADD CONSTRAINT CHK_IM_DOC_DET_REAS_CODE_STATU 
    CHECK ( STATUS IN ('APPRVE')) 
;


COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.IM_DOC_DETAIL_REASON_CODES_ID IS 'this colulm is used to create a primary key for records on the im_doc_detail_reason_codes table.  numbers to populate this field are generated using the sequence im_doc_detail_reason_codes_seq.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.DOC_ID IS 'this column holds the document to which this detail record belongs.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.ITEM IS 'this column holds the transaction level item that is on the document. transaction level item means that the item is managed at this level in the merchandising system. for rms 9, this could be either a pack, fashion sku or staple sku, but this could not be a fashion style. for rms 10, this must be a transaction level.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.REASON_CODE_ID IS 'this column holds the user defined reason code id. a reason code is mapped to different gl accounts. this is a foreign key from im_reason_codes table.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.STATUS IS 'this column indicates if the disputed credit memo line is approved or denied. valid values are: disput - disputed; apprve - approved; deny - denied.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.COST_MATCHED IS 'the indicator of  whether cost is matched' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.QTY_MATCHED IS 'the indicator of whether quantity is matched' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.ADJUSTED_UNIT_COST IS 'the adjusted unit cost for the associated invoice line item after the resolution action is taken.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.ADJUSTED_QTY IS 'this column contains the adjusted invoice quantity for the associated invoice line item after the resolution action is taken.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.ORIG_UNIT_COST IS 'this column contains original unit cost before any adjustment.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.ORIG_QTY IS 'this column contains the original quantity before any adjustment.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.TAX_MATCHED IS 'Indicates if Tax taxes matched' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.UNIT_FREIGHT IS 'The unit freight for this item at the time it was added to the system.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.UNIT_MRP IS 'The unit MRP for this item at the time it was added to the system.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.UNIT_RETAIL IS 'The unit retail price for this item at the time it was added to the system.' 
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.REVERSED_QTY is 'Quantity that has been reversed for this item'
;

COMMENT ON COLUMN IM_DOC_DETAIL_REASON_CODES.REVERSED_UNIT_COST is 'Unit cost that has been reversed for this item'
;
PROMPT CREATING INDEX 'PK_IM_DOC_DETAIL_REASON_CODES';
CREATE UNIQUE INDEX PK_IM_DOC_DETAIL_REASON_CODES ON IM_DOC_DETAIL_REASON_CODES 
    ( 
     IM_DOC_DETAIL_REASON_CODES_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'UK_IM_DOC_DETAIL_REASON_CODES';
CREATE UNIQUE INDEX UK_IM_DOC_DETAIL_REASON_CODES ON IM_DOC_DETAIL_REASON_CODES 
    ( 
     DOC_ID ASC , 
     ITEM ASC , 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_DETAIL_REASON_CODES_I1';
CREATE INDEX IM_DOC_DETAIL_REASON_CODES_I1 ON IM_DOC_DETAIL_REASON_CODES 
    ( 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_DETAIL_REASON_CODES';
ALTER TABLE IM_DOC_DETAIL_REASON_CODES 
    ADD CONSTRAINT PK_IM_DOC_DETAIL_REASON_CODES PRIMARY KEY ( IM_DOC_DETAIL_REASON_CODES_ID ) 
    USING INDEX PK_IM_DOC_DETAIL_REASON_CODES ;


PROMPT CREATING UNIQUE KEY ON 'IM_DOC_DETAIL_REASON_CODES';
ALTER TABLE IM_DOC_DETAIL_REASON_CODES 
    ADD CONSTRAINT UK_IM_DOC_DETAIL_REASON_CODES UNIQUE ( DOC_ID , ITEM , REASON_CODE_ID ) 
    USING INDEX UK_IM_DOC_DETAIL_REASON_CODES ;





PROMPT CREATING TABLE 'IM_DOC_HEAD';
CREATE TABLE IM_DOC_HEAD 
    ( 
     DOC_ID                         NUMBER (10)  NOT NULL , 
     TYPE                           VARCHAR2 (6)  NOT NULL , 
     STATUS                         VARCHAR2 (10)  NOT NULL , 
     ORDER_NO                       NUMBER (12) , 
     LOCATION                       NUMBER (10)  NOT NULL , 
     LOC_TYPE                       VARCHAR2 (1) , 
     TOTAL_DISCOUNT                 NUMBER (12,4) , 
     GROUP_ID                       NUMBER (10) , 
     PARENT_ID                      NUMBER (10) , 
     DOC_DATE                       DATE  NOT NULL , 
     CREATION_DATE                  DATE  DEFAULT SYSDATE  NOT NULL , 
     CREATED_BY                     VARCHAR2 (60) DEFAULT 'USER' NOT NULL , 
     VENDOR_TYPE                    VARCHAR2 (6)  NOT NULL , 
     VENDOR                         VARCHAR2 (10)  NOT NULL , 
     EXT_DOC_ID                     VARCHAR2 (150)  NOT NULL , 
     EDI_DOWNLOAD_IND               VARCHAR2 (1)  NOT NULL , 
     TERMS                          VARCHAR2 (15)  NOT NULL , 
     TERMS_DSCNT_PCT                NUMBER (12,4)  NOT NULL , 
     DUE_DATE                       DATE  NOT NULL , 
     PAYMENT_METHOD                 VARCHAR2 (6) , 
     MATCH_ID                       VARCHAR2 (30) , 
     MATCH_DATE                     DATE , 
     APPROVAL_ID                    VARCHAR2 (30) , 
     APPROVAL_DATE                  DATE , 
     PRE_PAID_IND                   VARCHAR2 (1)  NOT NULL , 
     PRE_PAID_ID                    VARCHAR2 (30) , 
     POST_DATE                      DATE , 
     CURRENCY_CODE                  VARCHAR2 (3)  NOT NULL , 
     EXCHANGE_RATE                  NUMBER (20,10)  NOT NULL , 
     TOTAL_COST                     NUMBER (20,4)  NOT NULL , 
     TOTAL_QTY                      NUMBER (12,4)  NOT NULL , 
     MANUALLY_PAID_IND              VARCHAR2 (1)  NOT NULL , 
     CUSTOM_DOC_REF_1               VARCHAR2 (90) , 
     CUSTOM_DOC_REF_2               VARCHAR2 (90) , 
     CUSTOM_DOC_REF_3               VARCHAR2 (90) , 
     CUSTOM_DOC_REF_4               VARCHAR2 (90) , 
     LAST_UPDATED_BY                VARCHAR2 (60) DEFAULT 'USER' NOT NULL , 
     LAST_UPDATE_DATE               DATE  DEFAULT SYSDATE NOT NULL , 
     FREIGHT_TYPE                   VARCHAR2 (6) , 
     REF_DOC                        NUMBER (10) , 
     REF_AUTH_NO                    NUMBER (10) , 
     COST_PRE_MATCH                 VARCHAR2 (1)  NOT NULL , 
     DETAIL_MATCHED                 VARCHAR2 (1)  NOT NULL , 
     BEST_TERMS                     VARCHAR2 (15) , 
     BEST_TERMS_SOURCE              VARCHAR2 (6) , 
     BEST_TERMS_DATE                DATE , 
     BEST_TERMS_DATE_SOURCE         VARCHAR2 (6) , 
     VARIANCE_WITHIN_TOLERANCE      NUMBER (20,4) , 
     RESOLUTION_ADJUSTED_TOTAL_COST NUMBER (20,4)  NOT NULL , 
     RESOLUTION_ADJUSTED_TOTAL_QTY  NUMBER (12,4)  NOT NULL , 
     CONSIGNMENT_IND                VARCHAR2 (1)  NOT NULL , 
     DEAL_ID                        NUMBER (10) , 
     RTV_IND                        VARCHAR2 (1)  NOT NULL , 
     DISCOUNT_DATE                  DATE , 
     DEAL_TYPE                      VARCHAR2 (1) , 
     HOLD_STATUS                    VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
     TOTAL_COST_INC_TAX             NUMBER (20,4)  NOT NULL , 
     TAX_DISC_CREATE_DATE           DATE , 
     DSD_IND                        VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
     ERS_IND                        VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
     SUPPLIER_SITE_ID               VARCHAR2 (10) , 
     REVERSE_VAT_IND                VARCHAR2 (1) DEFAULT 'N'  NOT NULL ,
	 HEADER_ONLY 					VARCHAR2 (1) NOT NULL ,	 
	 OBJECT_VERSION_ID 				NUMBER (15) DEFAULT 1 NOT NULL , 
	 DOC_SOURCE 					VARCHAR2 (1) NOT NULL ,
	 MATCH_TYPE 					VARCHAR2 (1) NULL ,
	 DEAL_DETAIL_ID 		        NUMBER (10) NULL ,
	 REF_CNR_EXT_DOC_ID 	        VARCHAR2 (150) NULL ,
	 REF_INV_EXT_DOC_ID 	        VARCHAR2 (150) NULL ,
	 RTV_ORDER_NO 			        NUMBER (10) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_STATUS 
    CHECK ( STATUS
IN ('RMTCH', 'URMTCH', 'MTCH', 'APPRVE', 'POSTED','DELETE',
'MURMTH','VOID','DISPUT','CONVT','SUBMIT','TAXDIS', 'WKSHT')) 
;
 
PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_VENDOR_TYPE 
    CHECK ( VENDOR_TYPE
in ('BK', 'AG', 'FF', 'IM', 'BR', 'FA', 'AP', 'CO', 'CN', 'S1', 'S2',
'S3','EV', 'IA','ES','EC', 'SUPP','S','E')) 
;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_EDI_DWNLD_IND 
    CHECK (EDI_DOWNLOAD_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_PRE_PAID_IND 
    CHECK (PRE_PAID_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_MANUALLY_PAID 
    CHECK (MANUALLY_PAID_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_COST_PRE_MATCH 
    CHECK (COST_PRE_MATCH IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_DETAIL_MATCHED 
    CHECK (DETAIL_MATCHED IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_BEST_TERMS_SRC 
    CHECK (BEST_TERMS_SOURCE IN ('DOC','ORDER')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_CONS_IND 
    CHECK (CONSIGNMENT_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_RTV_IND 
    CHECK (RTV_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_DEAL_TYPE 
    CHECK ( (DEAL_TYPE is NULL) or
(DEAL_TYPE is NOT NULL and DEAL_TYPE in ('F','C','N'))) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_HOLD_STATUS 
    CHECK (HOLD_STATUS IN ('H','N','P','R')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_DSD_IND 
    CHECK (DSD_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_ERS_IND 
    CHECK (ERS_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IDH_REV_VAT_IND 
    CHECK ( REVERSE_VAT_IND IN ('Y', 'N')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_BEST_TERMS_D_S 
    CHECK ((BEST_TERMS_DATE IS NULL) or (BEST_TERMS_DATE IS NOT NULL
AND BEST_TERMS_DATE_SOURCE IN ('ROG','DOC')))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_LOC_TYPE 
    CHECK ((LOCATION is NULL and LOC_TYPE is NULL) or
(LOCATION is NOT NULL and LOC_TYPE in ('S','W')))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_MAN_PRE_PAID_I 
    CHECK (((manually_paid_ind = 'Y'
and pre_paid_ind = 'N') or (pre_paid_ind = 'Y'
and manually_paid_ind = 'N')) or (manually_paid_ind = 'N'
and pre_paid_ind='N'))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_TYPE 
    CHECK (TYPE
IN ('NMRCHI', 'CRDNT',  'CRDNRC', 'CRDNRQ', 'DEBMEC', 'DEBMEQ',
'CRDMEC', 'CRDMEQ', 'DEBMET', 'CRDNRT') or
(TYPE = 'MRCHI'
AND ORDER_NO IS NOT NULL
AND LOCATION IS NOT NULL AND LOC_TYPE IS NOT NULL))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD
	ADD CONSTRAINT CHK_IM_DOC_HEAD_DOC_SOURCE 
	CHECK (DOC_SOURCE IN ('E','M','D','R'))
;


COMMENT ON COLUMN IM_DOC_HEAD.DOC_ID IS 'this column holds the reim internal id of the document.  these ids are generated by the system when new invoices are uploaded into the system or manually created by a user.  the im_doc_id_sequence is used to generate these unique ids.  this column is generally not displayed to the user, but is used internally by the application to provide a unique id.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TYPE IS 'ity.  it behaves just like a debit memo, but means that the retailer owes the supplier money because of a quantity issue.  credit memos are sometimes also known as paybacks.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.STATUS IS 'status describes the position of the document within the matching process and payment processes.  this column is mandatory not null.  the valid values are:  worksheet group (wgrp): documents in worksheet group status are members of document groups that are not approved.  documents in worksheet group status can not be accessed individually and must be accessed through their group.  ready for match (rmtch): documents in ready for match status have not been matched to a receipt(s) based on common supplier/po/location.  unmatched(unmtch)  unresolved match (urmtch): documents in unresolved match status have been matched to a receipt(s) based on common supplier/po/location, but the summary cost and/or summary quantity cannot be matched within defined vendor tolerance(s).  matched (mtch): documents in unresolved match status have been matched to a receipt(s) based on common supplier/po/location and the summary cost and summary quantity variances fall within defined supplier tolerance(s).  deleted (delete) documents in deleted status have been deleted by front end users.  these documents (and their supporting details) will be removed from the database by a batch purge process.  approved (apprve) documents in approved status are not considered by the automatch process.  these documents (for example, non-merchandise invoices, etc) are marked as approved so that they are picked up for payment.  posted (posted) documents in posted status have been paid by being exported to the financials system.  multi-unresolved (murmth)  disputed (disput).   credit memos are created in disputed status when debit memos are reversed.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.ORDER_NO IS 'the order number that the invoice is for.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.LOCATION IS 'the location number that the invoice is for.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.LOC_TYPE IS 'this column holds the type of the location associated with the document.  this column is optional, but loc_type cannot have a value if location is null.  valid values are s for store and w for warehouse.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TOTAL_DISCOUNT IS 'this column holds the total of all discounts that have been applied to the document.  this column is always stored in the currency of the invoice.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.GROUP_ID IS 'this column holds document group ids.  if the invoice was manually entered through the document group (batch list) entry screens, it will belong to a document group.  document groups are therefore optional.  document group information is stored on the im_doc_group_list table.  there is no foreign key to the im_doc_group_list table because document groups are only a data entry convenience and are therefore purged more regularly than documents themselves.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.PARENT_ID IS 'this column will hold the parent document id for multi-loc invoices that have been split from parent invoices to child invoices.  if this column is not null, the document is the result of a parent to child split.  if the column is null, the document is independent and not related to any parent invoices.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.DOC_DATE IS 'this column holds the document date.  the document date is the date the document was created.  when documents are created by an outside party, the  doc_date can be different from the create_date (i.e. the doc_date on a merchandise invoice from a supplier will be the date the supplier generates the invoice - the create_date for this record will be the date the invoice was entered into reim).  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_HEAD.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_HEAD.VENDOR_TYPE IS 'this column holds type of vendor the document is associated with.  valid values are:  bk - bank ag - agent ff- freight forwarder im - importer br - broker fa - factory ap - applicant co - consolidator cn - consignee s1 - merchandising system supplier hierarchy level 1 s2 - merchandising system supplier hierarchy level 2 s3 - merchandising system  hierarchy level 3 supp - supplier  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.VENDOR IS 'this column holds the id of the vendor associated with the document.  this id can be either a valid supplier or valid vendor in the merchandising system.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.EXT_DOC_ID IS 'this column holds the id for the document that is used in communication with the vendor. this is the document id that will generally be displayed to the end user. ext_doc_id must be unique by vendor (meaning that each vendor can have a document with the id 1, but each vendor can have only one document with the id 1). if the vendor created the document (i.e. merchandise invoice, etc), this field will hold the vendors id for the document. if the retailer created the document in response to a client document (i.e. credit note request, etc), the ext_doc_id will be the original ext_doc_id prefixed or suffixed with the appropriate values from the im_system_options table (credit_note_req_prefix_cost, debit_mem)_prefix_qty , credit_memo_suffix_dp). for example, if this document is a credit memo is in response to a quantity mismatch on a merchandise invoice with the ext_doc_id 3456, this column will hold the im_system_options. credit_memo_prefix_qty concatenated with 3456. when ext_doc_id data is entered on a screen or uploaded via edi it will be limited to 27 characters so that a suffix or prefix could be added if needed.  also, if this document were created as a result of a splitting a parent invoice, then the ext_doc_id will be the ext_doc_id of the parent with the location number appended to the end. therefore, the screen should still limit to 27 characters, however the database will allow up to 45 in order to account for the possibility of the location number being appended to the end.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.EDI_DOWNLOAD_IND IS 'this column indicates whether the document has been downloaded to a vendor (edi 812).  only response documents (i.e. documents created in response to a merchandise or non - merchandise invoice  like a credit note request) will be downloaded.  documents will be downloaded in the next batch download run after they are approved.  when documents are created, this column will be defaulted to n - no.  when documents are actually downloaded, this column will be set to y.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TERMS IS 'this column holds the terms associated with the document.  if the document is being manually entered and the document type is mrchi - merchandise invoice - this column will be defaulted to the terms associated with the purchase order.  if the document is being manually entered and the document type is not mrchi - the document is not a merchandise invoice, the terms will be defaulted to the default terms associated with the vendor in the merchandise system.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TERMS_DSCNT_PCT IS 'this column holds the discount percentage associated with the term for the document.  this information will be defaulted to the discount percentage for the term definition.  this information will be defined in the merchandising system.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.DUE_DATE IS 'this column holds the due date associated with the document.  for retailer created documents (i.e. merchandise invoice, non-merchandise invoice), this column holds the due date specified by the vendor.  for documents created by the retailer, the due_date will hold the date that corresponds to the im_doc_head.create_date plus the number of due days associated with the term.   this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.PAYMENT_METHOD IS 'this column holds the payment method associated with the document.  for retailer created documents, the payment method will default to vendors default payment method.  if no payment method has been defined for the vendor, this column will be null.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.MATCH_ID IS 'this column holds the id of the user that matched the document.  for documents matched by the automatch process, this column will be defaulted to automatch.  for documents that are manually matched, this column will hold the users id.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.MATCH_DATE IS 'this column holds the date that the document was matched.  this column will be defaulted by both the manual and automatch processes.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.APPROVAL_ID IS 'this column holds the id of the user that approved the document.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.APPROVAL_DATE IS 'this column holds the date that the document was approved.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.PRE_PAID_IND IS 'the column will indicate whether the invoice was paid prior to matching.  valid values are y yes and n no.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.PRE_PAID_ID IS 'the column will hold the id of the user that paid the invoice.  the field will be populated when a user pre-pays an invoice before matching has occurred.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.POST_DATE IS 'this column holds the date the document was posted to the general ledger.  this column is optional and will be populated by the application by the process that posts to the gl.  this column is optional, but will be required by the application when the document is posted.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.CURRENCY_CODE IS 'this column holds the currency code associated with the document.  when the document is uploaded via edi, this currency will be specified.  when the document is created via the single document entry screen, the user can choose a document.  when the document is created via the document group screen, the currency for the document will be defaulted from the currency for the document group.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.EXCHANGE_RATE IS 'this column holds the exchange rate for the currency code.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TOTAL_COST IS 'this column holds the total cost of the document.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TOTAL_QTY IS 'this column holds the total quantity of the document.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.MANUALLY_PAID_IND IS 'the column will indicate whether the invoice has been manually paid.  valid values are:  y yes and n no' 
;

COMMENT ON COLUMN IM_DOC_HEAD.CUSTOM_DOC_REF_1 IS 'this column holds any custom information that the retailer would like to hold at a document level.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.CUSTOM_DOC_REF_2 IS 'this column holds any custom information that the retailer would like to hold at a document level.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.CUSTOM_DOC_REF_3 IS 'this column holds any custom information that the retailer would like to hold at a document level.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.CUSTOM_DOC_REF_4 IS 'this column holds any custom information that the retailer would like to hold at a document level.  this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_HEAD.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_HEAD.FREIGHT_TYPE IS 'this column holds the freight method associated with the document. this column is optional.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.REF_DOC IS 'this column holds the id of any reference document that this credit note, credit note request or credit memo applies to.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.REF_AUTH_NO IS 'this column holds the authorization number for the reference rtvs.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.COST_PRE_MATCH IS 'this column idicates whether the document has been cost pre-matched.  valid values are y and n.  documents with y have been cost pre-matched (i.e. cost matched to a po before the receipt is received).  documents with n have not been cost pre-matched.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.DETAIL_MATCHED IS 'this indicates if the invoice has been detail matched before by auto-match.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.BEST_TERMS IS 'this column holds the term determined to be best by the best terms calculation.  the best terms calculation runs after an invoice has been matched.  the best term is determined by comparing the order and invoice term.  the term that has the highest ranking (as defined on the im_terms_ranking table) is determined to be the best term.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.BEST_TERMS_SOURCE IS 'this column holds the source of the best terms.  when the best terms calculation is performed, the ranking of order and document terms (on the im_terms_ranking table) are compared.  the term with the higher ranking is the best term.  if the order term is the best term, the best_terms_source will be order.  if the document term is the best term, the best_terms_source will be doc.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.BEST_TERMS_DATE IS 'this column holds the date associated with the best term chosen.  this date is the date by which the invoice has to be settled based on the best term.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.BEST_TERMS_DATE_SOURCE IS 'this column holds the source of the best terms date.  if the best terms date is based on the invoice date, this column will contain the string doc.  if the best terms date is based on the receipt of goods date, this column will hold the string rog.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.VARIANCE_WITHIN_TOLERANCE IS 'this column contains the value (the extended cost) of the variance within tolerance. the variance within tolerance is defined as the difference between the extended cost of the receipts used to match with the invoice and the extended cost of the invoice. if the extended cost of the receipts is greater than the extended cost of the invoice, then the variance will be positive. if this invoice is apart of a match group, then the variance may represent the variance for the entire group of invoices and receipts.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.RESOLUTION_ADJUSTED_TOTAL_COST IS 'this column will hold the total adjusted merchandise cost for the document. it takes into account any resolution action on the document.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.RESOLUTION_ADJUSTED_TOTAL_QTY IS 'this column will hold the total adjusted quantity for the document. it takes into account any resolution action on the document.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.CONSIGNMENT_IND IS 'the consignment indicator' 
;

COMMENT ON COLUMN IM_DOC_HEAD.DEAL_ID IS 'the id of supplier deal' 
;

COMMENT ON COLUMN IM_DOC_HEAD.RTV_IND IS 'the return-to-vendor indicator' 
;

COMMENT ON COLUMN IM_DOC_HEAD.DISCOUNT_DATE IS 'the expiration date of the discount that can be applied based on the terms of the document.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.DEAL_TYPE IS 'the type of deal' 
;

COMMENT ON COLUMN IM_DOC_HEAD.HOLD_STATUS IS 'this column contains the hold status of the document.  based on the supplier option im_supplier_options.hold_invoices, documents can be withheld from the posting process if they are considered to be in held status. valid values are: n - never held, h - currently held, r - previously held, now released.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TOTAL_COST_INC_TAX IS 'Total header cost on the document including any applicable tax amount' 
;

COMMENT ON COLUMN IM_DOC_HEAD.TAX_DISC_CREATE_DATE IS 'The timestamp when a tax discrepancy was created on this document' 
;

COMMENT ON COLUMN IM_DOC_HEAD.DSD_IND IS 'direct store delivery. default value n.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.ERS_IND IS 'evaluated receipt settlement. default value n' 
;

COMMENT ON COLUMN IM_DOC_HEAD.SUPPLIER_SITE_ID IS 'supplier site id' 
;

COMMENT ON COLUMN IM_DOC_HEAD.REVERSE_VAT_IND IS 'Indicates if the items in the document are subject to reverse charge VAT at the vat region. Valid values are Y and N.' 
;

COMMENT ON COLUMN IM_DOC_HEAD.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_DOC_HEAD.HEADER_ONLY is 'For a Merch Invoice,absence of details in IM_INVOICE_DETAIL.For a Non Merch Invoice,absence of details in IM_DOC_NON_MERCH.For other types of documents,If fixed deal related,absence of details in IM_FIXED_DEAL_DETAIL.If complex deal related,absence of details in IM_FIXED_DEAL_DETAIL.If non-deal document,absence of details in IM_DOC_DETAIL_REASON_CODES.'
;

COMMENT ON COLUMN IM_DOC_HEAD.DOC_SOURCE is 'This column identifies how the document was created on the system. Valid Values Include ''E''xternal, ''M''anual, ''D''eal and ''R''esolution.'
;

COMMENT ON COLUMN IM_DOC_HEAD.MATCH_TYPE is 'Describes how this document was matched.'
;

COMMENT ON COLUMN IM_DOC_HEAD.DEAL_DETAIL_ID is 'Deal component id'
;

COMMENT ON COLUMN IM_DOC_HEAD.REF_CNR_EXT_DOC_ID is 'Reference Credit Note Request vendor document number'
;

COMMENT ON COLUMN IM_DOC_HEAD.REF_INV_EXT_DOC_ID is 'Reference Invoice vendor document number'
;

COMMENT ON COLUMN IM_DOC_HEAD.RTV_ORDER_NO is 'RTV Order Number the document has been created for.'
;
PROMPT CREATING INDEX 'PK_IM_DOC_HEAD';
CREATE UNIQUE INDEX PK_IM_DOC_HEAD ON IM_DOC_HEAD 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I1';
CREATE INDEX IM_DOC_HEAD_I1 ON IM_DOC_HEAD 
    ( 
     VENDOR ASC , 
     VENDOR_TYPE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I2';
CREATE INDEX IM_DOC_HEAD_I2 ON IM_DOC_HEAD 
    ( 
     TYPE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I4';
CREATE INDEX IM_DOC_HEAD_I4 ON IM_DOC_HEAD 
    ( 
     PARENT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I10';
CREATE INDEX IM_DOC_HEAD_I10 ON IM_DOC_HEAD 
    ( 
     STATUS ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I3';
CREATE INDEX IM_DOC_HEAD_I3 ON IM_DOC_HEAD 
    ( 
     ORDER_NO ASC , 
     LOCATION ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I12';
CREATE INDEX IM_DOC_HEAD_I12 ON IM_DOC_HEAD 
    ( 
     STATUS ASC , 
     TYPE ASC 
    ) 
    TABLESPACE RETAIL_INDEX ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I7';
CREATE INDEX IM_DOC_HEAD_I7 ON IM_DOC_HEAD 
    ( 
     CURRENCY_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I5';
CREATE INDEX IM_DOC_HEAD_I5 ON IM_DOC_HEAD 
    ( 
     REF_DOC ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I8';
CREATE INDEX IM_DOC_HEAD_I8 ON IM_DOC_HEAD 
    ( 
     POST_DATE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_DOC_HEAD_I11';
CREATE INDEX IM_DOC_HEAD_I11 ON IM_DOC_HEAD 
    ( 
     EXT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING INDEX 'IM_DOC_HEAD_I13';
CREATE INDEX IM_DOC_HEAD_I13 on IM_DOC_HEAD
	(
	 SUPPLIER_SITE_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT PK_IM_DOC_HEAD PRIMARY KEY ( DOC_ID ) 
    USING INDEX PK_IM_DOC_HEAD ;




PROMPT CREATING TABLE 'IM_DOC_HEAD_COMMENTS';
CREATE TABLE IM_DOC_HEAD_COMMENTS 
    ( 
     COMMENT_ID        NUMBER (10)  NOT NULL , 
     COMMENT_TYPE      VARCHAR2 (6)  NOT NULL , 
     TEXT              VARCHAR2 (2000)  NOT NULL , 
     CREATED_BY        VARCHAR2 (60) DEFAULT USER NOT NULL , 
     CREATION_DATE	   DATE  DEFAULT SYSDATE  NOT NULL , 
     DOC_ID            NUMBER (10)  NOT NULL , 
	 LAST_UPDATED_BY   VARCHAR2 (60) DEFAULT USER NOT NULL , 
	 LAST_UPDATE_DATE  DATE  NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_DOC_HEAD_COMMENTS';
ALTER TABLE IM_DOC_HEAD_COMMENTS 
    ADD CONSTRAINT CHK_IM_DOC_HEAD_COMMENTS_C_T 
    CHECK (comment_type in ('E','I')) 
;


COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.COMMENT_ID IS 'this column holds the unique id of each comment in the system.  comment ids will be generated using the im_comments_seq sequence.' 
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.COMMENT_TYPE IS 'this column holds the type that describes if a comment is external or internal.  valid values are i or e.' 
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.TEXT IS 'this column holds user entered comment text.' 
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.DOC_ID IS 'this column holds the unique id for the document that is associated with the comment.  this is a foreign key to the im_doc_head table.  there should be a unique constraint using doc_id and create_datetime.' 
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_HEAD_COMMENTS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_DOC_HEAD_COMMENTS';
CREATE UNIQUE INDEX PK_IM_DOC_HEAD_COMMENTS ON IM_DOC_HEAD_COMMENTS 
    ( 
     COMMENT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'UK_IM_DOC_HEAD_COMMENTS';
CREATE UNIQUE INDEX UK_IM_DOC_HEAD_COMMENTS ON IM_DOC_HEAD_COMMENTS 
    ( 
     DOC_ID ASC , 
     CREATION_DATE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_HEAD_COMMENTS';
ALTER TABLE IM_DOC_HEAD_COMMENTS 
    ADD CONSTRAINT PK_IM_DOC_HEAD_COMMENTS PRIMARY KEY ( COMMENT_ID ) 
    USING INDEX PK_IM_DOC_HEAD_COMMENTS ;


PROMPT CREATING UNIQUE KEY ON 'IM_DOC_HEAD_COMMENTS';
ALTER TABLE IM_DOC_HEAD_COMMENTS 
    ADD CONSTRAINT UK_IM_DOC_HEAD_COMMENTS UNIQUE ( DOC_ID , CREATION_DATE ) 
    USING INDEX UK_IM_DOC_HEAD_COMMENTS ;

	


PROMPT CREATING TABLE 'IM_DOC_NON_MERCH_TAX';
CREATE TABLE IM_DOC_NON_MERCH_TAX 
    ( 
     DOC_ID         NUMBER (10)  NOT NULL , 
     NON_MERCH_CODE VARCHAR2 (6)  NOT NULL , 
     TAX_CODE       VARCHAR2 (6)  NOT NULL , 
     TAX_RATE       NUMBER (20,10)  NOT NULL , 
     TAX_BASIS      NUMBER (20,4)  NOT NULL , 
     TAX_AMOUNT     NUMBER (20,4)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.DOC_ID IS 'the document this non-merch tax component belongs to.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.NON_MERCH_CODE IS 'the non-merch code having a tax associated with it.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.TAX_CODE IS 'the tax code associated with the non-merch code.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.TAX_RATE IS 'the applicable tax rate.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.TAX_BASIS IS 'the basis to which the tax was applied.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.TAX_AMOUNT IS 'the amount of the tax.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING INDEX 'PK_IM_DOC_NON_MERCH_TAX';
CREATE UNIQUE INDEX PK_IM_DOC_NON_MERCH_TAX ON IM_DOC_NON_MERCH_TAX 
    ( 
     DOC_ID ASC , 
     NON_MERCH_CODE ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_NON_MERCH_TAX';
ALTER TABLE IM_DOC_NON_MERCH_TAX 
    ADD CONSTRAINT PK_IM_DOC_NON_MERCH_TAX PRIMARY KEY ( DOC_ID, NON_MERCH_CODE, TAX_CODE ) 
    USING INDEX PK_IM_DOC_NON_MERCH_TAX ;




PROMPT CREATING TABLE 'IM_DOC_NON_MERCH';
CREATE TABLE IM_DOC_NON_MERCH 
    ( 
     DOC_ID         NUMBER (10)  NOT NULL , 
     NON_MERCH_CODE VARCHAR2 (6)  NOT NULL , 
     NON_MERCH_AMT  NUMBER (20,4)  NOT NULL ,
	 CREATED_BY VARCHAR2 (60 ) DEFAULT USER NOT NULL ,
	 CREATION_DATE DATE DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY VARCHAR2 (60 ) DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE DATE DEFAULT SYSDATE NOT NULL ,
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DOC_NON_MERCH.DOC_ID IS 'this column holds the reim internal id of the document with non merchandise costs.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH.NON_MERCH_CODE IS 'this column holds the code identifying the non-merchandise cost being added to the invoice.  these codes are defined in the merchandising system.  if the merchandising system is rms, these codes can be found on the non_merch_code_head table.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH.NON_MERCH_AMT IS 'this column holsd the amount of the non-merchandise cost of type non_merch_code that is associated with this document.  the non_merch_amt is always held in the same currency as the document it is associated with.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_DOC_NON_MERCH.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_NON_MERCH.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_DOC_NON_MERCH';
CREATE UNIQUE INDEX PK_IM_DOC_NON_MERCH ON IM_DOC_NON_MERCH 
    ( 
     DOC_ID ASC , 
     NON_MERCH_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_NON_MERCH';
ALTER TABLE IM_DOC_NON_MERCH 
    ADD CONSTRAINT PK_IM_DOC_NON_MERCH PRIMARY KEY ( DOC_ID, NON_MERCH_CODE ) 
    USING INDEX PK_IM_DOC_NON_MERCH ;
	
	
	
	
PROMPT CREATING TABLE 'IM_DOC_SYS_TAX_POSTING';
CREATE TABLE IM_DOC_SYS_TAX_POSTING 
    ( 
     DOC_ID        NUMBER (10)  NOT NULL , 
     TAX_BASIS     NUMBER (20,4)  NOT NULL , 
     TAX_CODE      VARCHAR2 (6)  NOT NULL , 
     TAX_RATE      NUMBER (20,10)  NOT NULL , 
     DEPT          NUMBER (4)  NOT NULL , 
     CLASS         NUMBER (4)  NOT NULL , 
     AMOUNT        NUMBER (20,4)  NOT NULL , 
     TAX_TYPE      VARCHAR2 (50)  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_DOC_SYS_TAX_POSTING IS 'Table to store system overridden tax information'
;


COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.DOC_ID IS 'Document Id' 
;

COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.TAX_BASIS IS 'Tax basis' 
;

COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.TAX_CODE IS 'Tax code' 
;

COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.TAX_RATE IS 'Tax rate' 
;

COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.DEPT IS 'Department' 
;

COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.CLASS IS 'Class' 
;

COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.AMOUNT IS 'Tax amount' 
;

COMMENT ON COLUMN IM_DOC_SYS_TAX_POSTING.TAX_TYPE IS 'System overridden tax type' 
;



PROMPT CREATING TABLE 'IM_DOC_TAX';
CREATE TABLE IM_DOC_TAX 
    ( 
     DOC_ID            NUMBER (10)  NOT NULL , 
     TAX_CODE          VARCHAR2 (6)  NOT NULL , 
     TAX_RATE          NUMBER (20,10)  NOT NULL , 
     TAX_BASIS         NUMBER (20,4)  NOT NULL , 
     TAX_AMOUNT        NUMBER (20,4)  NOT NULL , 
	 CREATED_BY        VARCHAR2 (60) DEFAULT USER NOT NULL , 
	 CREATION_DATE     DATE DEFAULT SYSDATE NOT NULL , 
	 LAST_UPDATED_BY   VARCHAR2 (60) DEFAULT USER NOT NULL , 
	 LAST_UPDATE_DATE  DATE DEFAULT SYSDATE  NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DOC_TAX.DOC_ID IS 'the document this tax is tied to.' 
;

COMMENT ON COLUMN IM_DOC_TAX.TAX_CODE IS 'the tax code for this record.' 
;

COMMENT ON COLUMN IM_DOC_TAX.TAX_RATE IS 'the tax rate tied to this tax.' 
;

COMMENT ON COLUMN IM_DOC_TAX.TAX_BASIS IS 'the tax basis for this tax record.' 
;

COMMENT ON COLUMN IM_DOC_TAX.TAX_AMOUNT IS 'the total tax amount based on the tax basis.' 
;

COMMENT ON COLUMN IM_DOC_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DOC_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DOC_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DOC_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DOC_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_DOC_TAX';
CREATE UNIQUE INDEX PK_IM_DOC_TAX ON IM_DOC_TAX 
    ( 
     DOC_ID ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_TAX';
ALTER TABLE IM_DOC_TAX 
    ADD CONSTRAINT PK_IM_DOC_TAX PRIMARY KEY ( DOC_ID, TAX_CODE ) 
    USING INDEX PK_IM_DOC_TAX ;




PROMPT CREATING TABLE 'IM_DYNAMIC_SEGMENT_DEPT_CLASS';
CREATE TABLE IM_DYNAMIC_SEGMENT_DEPT_CLASS 
    ( 
     DEPT              NUMBER (4)  NOT NULL , 
     CLASS             NUMBER (4)  NOT NULL , 
     DEPT_SEGMENT      VARCHAR2 (25)  NOT NULL , 
     CLASS_SEGMENT     VARCHAR2 (25)  NOT NULL , 
     SET_OF_BOOKS_ID   NUMBER (15) DEFAULT -1  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.DEPT IS 'this column holds the department whose account segements are defined.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.CLASS IS 'this column holds the class whose account segemnts are being mapped.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.DEPT_SEGMENT IS 'this column holds the departments account segement.  this value will be used to build account numbers by the posting process.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.CLASS_SEGMENT IS 'this column holds the classes account segement.  this value will be used to build account numbers by the posting process.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.SET_OF_BOOKS_ID IS 'set of books identifier.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_DEPT_CLASS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_DYNAMIC_SEGMENT_DEPT_CLA';
CREATE UNIQUE INDEX PK_IM_DYNAMIC_SEGMENT_DEPT_CLA ON IM_DYNAMIC_SEGMENT_DEPT_CLASS 
    ( 
     DEPT ASC , 
     CLASS ASC , 
     SET_OF_BOOKS_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DYNAMIC_SEGMENT_DEPT_CLASS';
ALTER TABLE IM_DYNAMIC_SEGMENT_DEPT_CLASS 
    ADD CONSTRAINT PK_IM_DYNAMIC_SEGMENT_DEPT_CLA PRIMARY KEY ( DEPT, CLASS, SET_OF_BOOKS_ID ) 
    USING INDEX PK_IM_DYNAMIC_SEGMENT_DEPT_CLA ;




PROMPT CREATING TABLE 'IM_DYNAMIC_SEGMENT_LOC';
CREATE TABLE IM_DYNAMIC_SEGMENT_LOC 
    ( 
     LOCATION           NUMBER (10)  NOT NULL , 
     LOC_SEGMENT        VARCHAR2 (25)  NOT NULL , 
     COMPANY_SEGMENT    VARCHAR2 (25)  NOT NULL ,
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.LOCATION IS 'this column contains the retek id for the store or wahehouse whose dynamic segments is being mapped.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.LOC_SEGMENT IS 'this column holds the segment information that identifies this rms location.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.COMPANY_SEGMENT IS 'this column holds the segment information for the company this rms location belongs to.' 
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DYNAMIC_SEGMENT_LOC.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_DYNAMIC_SEGMENT_LOC';
CREATE UNIQUE INDEX PK_IM_DYNAMIC_SEGMENT_LOC ON IM_DYNAMIC_SEGMENT_LOC 
    ( 
     LOCATION ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_DYNAMIC_SEGMENT_LOC';
ALTER TABLE IM_DYNAMIC_SEGMENT_LOC 
    ADD CONSTRAINT PK_IM_DYNAMIC_SEGMENT_LOC PRIMARY KEY ( LOCATION ) 
    USING INDEX PK_IM_DYNAMIC_SEGMENT_LOC ;



PROMPT CREATING TABLE 'IM_FINANCIALS_STAGE';
CREATE TABLE IM_FINANCIALS_STAGE 
    ( 
     SEQ_NO                NUMBER (10)  NOT NULL , 
     TRAN_CODE             VARCHAR2 (6)  NOT NULL , 
     DEBIT_CREDIT_IND      VARCHAR2 (6)  NOT NULL , 
     DOC_ID                NUMBER (10) , 
     PARENT_ID             NUMBER (10) , 
     DOC_DATE              DATE , 
     RECEIPT_ID			    NUMBER (12) , 
     RECEIPT_DATE          DATE , 
     VENDOR_TYPE           VARCHAR2 (6)  NOT NULL , 
     VENDOR                VARCHAR2 (10)  NOT NULL , 
     ORDER_NO              NUMBER (12) , 
     CURRENCY_CODE         VARCHAR2 (3)  NOT NULL , 
     AMOUNT                NUMBER (20,4)  NOT NULL , 
     BEST_TERMS            VARCHAR2 (15) , 
     BEST_TERMS_DATE       DATE , 
     MANUALLY_PAID_IND     VARCHAR2 (1)  NOT NULL , 
     PRE_PAID_IND          VARCHAR2 (1)  NOT NULL , 
	 CREATE_ID  		   VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATE_DATETIME 	   DATE DEFAULT SYSDATE NOT NULL , 
     SEGMENT_1              VARCHAR2 (25) , 
     SEGMENT_2              VARCHAR2 (25) , 
     SEGMENT_3              VARCHAR2 (25) , 
     SEGMENT_4              VARCHAR2 (25) , 
     SEGMENT_5              VARCHAR2 (25) , 
     SEGMENT_6              VARCHAR2 (25) , 
     SEGMENT_7              VARCHAR2 (25) , 
     SEGMENT_8              VARCHAR2 (25) , 
     SEGMENT_9              VARCHAR2 (25) , 
     SEGMENT_10             VARCHAR2 (25) , 
     DEAL_ID               NUMBER (10) , 
     LOCAL_CURRENCY        VARCHAR2 (3) , 
     INCOME_LOCAL_CURRENCY NUMBER (20,4) , 
     EXT_DOC_ID            VARCHAR2 (150) , 
     EXCHANGE_RATE         NUMBER (20,10) , 
     EXCHANGE_RATE_TYPE    VARCHAR2 (30) , 
     SET_OF_BOOKS_ID       NUMBER (15) DEFAULT -1  NOT NULL , 
     POSTING_ID            NUMBER (10) , 
     TAX_ENTRY             VARCHAR2 (1) , 
     TRANS_AMOUNT          NUMBER (20,4) , 
     PRIM_CURRENCY_CODE    VARCHAR2 (3) , 
     PRIM_TRANS_AMOUNT     NUMBER (20,4) , 
     SEGMENT_11             VARCHAR2 (25) , 
     SEGMENT_12             VARCHAR2 (25) , 
     SEGMENT_13             VARCHAR2 (25) , 
     SEGMENT_14             VARCHAR2 (25) , 
     SEGMENT_15             VARCHAR2 (25) , 
     SEGMENT_16             VARCHAR2 (25) , 
     SEGMENT_17             VARCHAR2 (25) , 
     SEGMENT_18             VARCHAR2 (25) , 
     SEGMENT_19             VARCHAR2 (25) , 
     SEGMENT_20             VARCHAR2 (25) , 
     REFERENCE_ID          VARCHAR2 (25) , 
     ODI_SESSION_NUM       NUMBER (10) , 
     VAT_CODE              VARCHAR2 (6) , 
     VAT_RATE              NUMBER (20,10) , 
     TOTAL_COST_INC_VAT    NUMBER (20,4)  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_FINANCIALS_STAGE';
ALTER TABLE IM_FINANCIALS_STAGE 
    ADD CONSTRAINT CHK_IM_FINANCIALS_STAGE_TRAN_C 
    CHECK (TRAN_CODE IN ('TAP','UNR','VWT','PPA','CRN','RWO','NMRCH','REASON','TAPNDI','CRNNDI','DIRAR', 'DIRAF','TAX','TAXNDI','VCT','VCTT','TAXACQ','TAXACO','TAXRVC','TAXRVO'))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_FINANCIALS_STAGE';
ALTER TABLE IM_FINANCIALS_STAGE 
    ADD CONSTRAINT CHK_IM_FINANCIALS_STAGE_DC_IND 
    CHECK (DEBIT_CREDIT_IND IN ('CREDIT','DEBIT')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_FINANCIALS_STAGE';
ALTER TABLE IM_FINANCIALS_STAGE 
    ADD CONSTRAINT CHK_IM_FINANCIALS_STAGE_MANUAL 
    CHECK (MANUALLY_PAID_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_FINANCIALS_STAGE';
ALTER TABLE IM_FINANCIALS_STAGE 
    ADD CONSTRAINT CHK_IM_FINANCIALS_STAGE_PRE_PA 
    CHECK (PRE_PAID_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_FINANCIALS_STAGE';
ALTER TABLE IM_FINANCIALS_STAGE 
    ADD CONSTRAINT CHK_IM_FINANCIALS_STAGE_IDS 
    CHECK ((receipt_id is not null AND (parent_id is null and doc_id is null))
OR
(parent_id is not null AND (doc_id is null and receipt_id is null))
OR
(doc_id is not null AND (parent_id is null and receipt_id is null)))
;



COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEQ_NO IS 'this column holds a sequence number that is generated to act as a primary key for the table.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.TRAN_CODE IS 'this column holds a code that identifies each type of financial transaction that can be written to this table.  valid values are:  tap	a record with the tran code tap is mapped to the trade accounts payable account.  unr 	a record with the tran code unr is mapped to an unmatched receipt account.  vwt 	a record with the tran code vwt is mapped to a variance within tolerance account.  ppa	a record with the tran code ppa is mapped to a pre-paid asset account.  crn	a record with the tran code cnr is mapped to a credit note account.  rwo	a record with the tran code rwo is mapped to a receipt write-off account.  nmrch	a record with the tran code nmrch is mapped to a non-merchandise account.  reason	a record with the tran code reason is mapped to a reason code account.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.DEBIT_CREDIT_IND IS 'this indicated whether the record is a credit or debit.  valid values are credit and debit.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.DOC_ID IS 'this column holds the invoice matching document id of the document being posted to the financials system.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.PARENT_ID IS 'parent id from the im_parent_invoices table that has been pre paid.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.DOC_DATE IS 'this column holds the date the document was created.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.RECEIPT_ID is 'contains the unique number identifying a specific shipment of goods within the system. for receipt write offs, the trade accounts payable  (tran code=tap), unmatched receipt (tran code=unr), and receipt write off  (tran code = rwo) posting records will contain a receipt id instead of a doc id.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.RECEIPT_DATE IS 'this field contains the date the shipment is received. for receipt write offs, the trade accounts payable  (tran code=tap), unmatched receipt (tran code=unr), and receipt write off  (tran code = rwo) posting records will contain a receipt date instead of a doc date.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.VENDOR_TYPE IS 'this column holds the type of vendor for the document.  this vendor type could be supp (for any supplier) or the partner type of any partners.  this information is stored with the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.VENDOR IS 'this column holds the id of the supplier or partner associated with the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.ORDER_NO IS 'this column holds the purchase order that the document relates to.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.CURRENCY_CODE IS 'this column holds the currency code that is associated with the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.AMOUNT IS 'this column holds the amount being posted to financials for this tran_code.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.BEST_TERMS IS 'this column holds the term calculated as the best term for the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.BEST_TERMS_DATE IS 'this column holds the date calculated as the best terms date for the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.MANUALLY_PAID_IND IS 'this column indicates whether the document has already been paid.  if the value is n (no) the document has not been paid.  if the value is y (yes), the document has already been paid.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.PRE_PAID_IND IS 'this column indicates that this post is for a document that was paid prior to being matched with receipts.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.CREATE_ID  is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.CREATE_DATETIME  is 'The date a record was created.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_1 is 'this column holds the value of the first account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_2 is 'this column holds the value of the second account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_3 is 'this column holds the value of the third account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_4 is 'this column holds the value of the fourth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_5 is 'this column holds the value of the fifth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_6 is 'this column holds the value of the sixth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_7 is 'this column holds the value of the seventh account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_8 is 'this column holds the value of the eighth account segement.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_9 is 'this column holds the value of the ninth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_10 is 'this column holds the value of the tenth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.DEAL_ID IS 'this column holds the rms id for deal' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.LOCAL_CURRENCY IS 'this column holds the locations currency' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.INCOME_LOCAL_CURRENCY IS 'this column holds the sum of all the income in the local currency' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.EXT_DOC_ID IS 'this column holds the id for the document that is used in communication with the vendor. this is the document id that will generally be displayed to the end user. ext_doc_id is unique by vendor. if the vendor created the document (i.e. merchandise invoice, etc), this field will hold the vendors id for the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.EXCHANGE_RATE IS 'this column specifies the exchange rate for the currency code.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SET_OF_BOOKS_ID IS 'set of books identifier.  default  value is -1.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.POSTING_ID IS 'reference to posting process that added this entry.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.TAX_ENTRY IS 'indicates if the posting entry is for tax accounting.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.TRANS_AMOUNT IS 'transaction amount' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.PRIM_CURRENCY_CODE IS 'primary currency code' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.PRIM_TRANS_AMOUNT IS 'primary transaction amount' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_11 is 'segment 11'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_12 is 'segment 12'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_13 is 'segment 13'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_14 is 'segment 14'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_15 is 'segment 15'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_16 is 'segment 16'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_17 is 'segment 17'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_18 is 'segment 18'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_19 is 'segment 19'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.SEGMENT_20 is 'segment 20'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.REFERENCE_ID IS 'reference id' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.ODI_SESSION_NUM IS 'odi session number' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.VAT_CODE IS 'vat code' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.VAT_RATE IS 'vat rate' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE.TOTAL_COST_INC_VAT IS 'total cost including vat' 
;

PROMPT CREATING INDEX 'PK_IM_FINANCIALS_STAGE';
CREATE UNIQUE INDEX PK_IM_FINANCIALS_STAGE ON IM_FINANCIALS_STAGE 
    ( 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_FINANCIALS_STAGE_I3';
CREATE INDEX IM_FINANCIALS_STAGE_I3 ON IM_FINANCIALS_STAGE 
    ( 
     CURRENCY_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_FINANCIALS_STAGE_I2';
CREATE INDEX IM_FINANCIALS_STAGE_I2 ON IM_FINANCIALS_STAGE 
    ( 
     PARENT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_FINANCIALS_STAGE_I1';
CREATE INDEX IM_FINANCIALS_STAGE_I1 ON IM_FINANCIALS_STAGE 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_FINANCIALS_STAGE';
ALTER TABLE IM_FINANCIALS_STAGE 
    ADD CONSTRAINT PK_IM_FINANCIALS_STAGE PRIMARY KEY ( SEQ_NO ) 
    USING INDEX PK_IM_FINANCIALS_STAGE ;




PROMPT CREATING TABLE 'IM_FINANCIALS_STAGE_ERROR';
CREATE TABLE IM_FINANCIALS_STAGE_ERROR 
    ( 
     SEQ_NO              NUMBER (10)  NOT NULL , 
     TRAN_CODE           VARCHAR2 (6) , 
     DEBIT_CREDIT_IND    VARCHAR2 (6) , 
     DOC_ID              NUMBER (10) , 
     DOC_DATE            DATE , 
     RECEIPT_ID            NUMBER (12) , 
     RECEIPT_DATE        DATE , 
     VENDOR_TYPE         VARCHAR2 (6) , 
     VENDOR              VARCHAR2 (10) , 
     ORDER_NO            NUMBER (12) , 
     CURRENCY_CODE       VARCHAR2 (3) , 
     AMOUNT              NUMBER (20,4) , 
     BEST_TERMS          VARCHAR2 (15) , 
     BEST_TERMS_DATE     DATE , 
     MANUALLY_PAID_IND   VARCHAR2 (1) , 
     PRE_PAID_IND        VARCHAR2 (1) , 
     CREATE_ID          VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATE_DATETIME 		 DATE DEFAULT SYSDATE NOT NULL , 
     SEGMENT_1            VARCHAR2 (25) , 
     SEGMENT_2            VARCHAR2 (25) , 
     SEGMENT_3            VARCHAR2 (25) , 
     SEGMENT_4            VARCHAR2 (25) , 
     SEGMENT_5            VARCHAR2 (25) , 
     SEGMENT_6            VARCHAR2 (25) , 
     SEGMENT_7            VARCHAR2 (25) , 
     SEGMENT_8            VARCHAR2 (25) , 
     SEGMENT_9            VARCHAR2 (25) , 
     SEGMENT_10           VARCHAR2 (25) , 
     ERR_MESSAGE         VARCHAR2 (1000) , 
     SUPPORT_ERR_MESSAGE VARCHAR2 (1000) , 
     SET_OF_BOOKS_ID     NUMBER (15)  NOT NULL ,
	 SEGMENT_11 VARCHAR2 (25 ) NULL ,
	 SEGMENT_12 VARCHAR2 (25 ) NULL ,
	 SEGMENT_13 VARCHAR2 (25 ) NULL ,
	 SEGMENT_14 VARCHAR2 (25 ) NULL ,
	 SEGMENT_15 VARCHAR2 (25 ) NULL ,
	 SEGMENT_16 VARCHAR2 (25 ) NULL ,
	 SEGMENT_17 VARCHAR2 (25 ) NULL ,
	 SEGMENT_18 VARCHAR2 (25 ) NULL ,
	 SEGMENT_19 VARCHAR2 (25 ) NULL ,
	 SEGMENT_20 VARCHAR2 (25 ) NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_FINANCIALS_STAGE_ERROR';
ALTER TABLE IM_FINANCIALS_STAGE_ERROR 
    ADD CONSTRAINT CHK_IM_FIN_STG_ERR_PRE_PAID_IN 
    CHECK (PRE_PAID_IND IN ('N','Y')) 
;


COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEQ_NO IS 'this column holds a sequence number that is generated to act as a primary key for the table.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.TRAN_CODE IS 'this column holds a code that identifies each type of financial transaction that can be written to this table.  valid values are: tap-a record with the tran code tap is mapped to the trade accounts payable account. unr-a record with the tran code unr is mapped to an unmatched receipt account. vwt-a record with the tran code vwt is mapped to a variance within tolerance account. ppa-a record with the tran code ppa is mapped to a pre-paid asset account. crn-a record with the tran code cnr is mapped to a credit note account. rwo-a record with the tran code rwo is mapped to a receipt write-off account. nmrch-a record with the tran code nmrch is mapped to a non-merchandise account. reason-a record with the tran code reason is mapped to a reason code account.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.DEBIT_CREDIT_IND IS 'this indicated whether the record is a credit or debit.  valid values are credit and debit.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.DOC_ID IS 'this column holds the invoice matching document id of the document being posted to the financials system.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.DOC_DATE IS 'this column holds the date the document was created.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.RECEIPT_ID is 'contains the unique number identifying a specific shipment of goods within the system. for receipt write offs, the trade accounts payable  (tran code=tap), unmatched receipt (tran code=unr), and receipt write off  (tran code = rwo) posting records will contain a receipt id instead of a doc id.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.RECEIPT_DATE IS 'this field contains the date the shipment is received. for receipt write offs, the trade accounts payable  (tran code=tap), unmatched receipt (tran code=unr), and receipt write off  (tran code = rwo) posting records will contain a receipt date instead of a doc date.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.VENDOR_TYPE IS 'this column holds the type of vendor for the document.  this vendor type could be supp (for any supplier) or the partner type of any partners.  this information is stored with the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.VENDOR IS 'this column holds the id of the supplier or partner associated with the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.ORDER_NO IS 'this column holds the purchase order that the document relates to.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.CURRENCY_CODE IS 'this column holds the currency code that is associated with the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.AMOUNT IS 'this column holds the amount being posted to financials for this tran_code.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.BEST_TERMS IS 'this column holds the term calculated as the best term for the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.BEST_TERMS_DATE IS 'this column holds the date calculated as the best terms date for the document.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.MANUALLY_PAID_IND IS 'this column indicates whether the document has already been paid.  if the value is n (no) the document has not been paid.  if the value is y (yes), the document has already been paid.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.PRE_PAID_IND IS 'this column indicates that this post is for a document that was paid prior to being matched with receipts.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.CREATE_ID  is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.CREATE_DATETIME  is 'The date a record was created.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_1 is 'this column holds the value of the first account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_2 is 'this column holds the value of the second account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_3 is 'this column holds the value of the third account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_4 is 'this column holds the value of the fourth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_5 is 'this column holds the value of the fifth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_6 is 'this column holds the value of the sixth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_7 is 'this column holds the value of the seventh account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_8 is 'this column holds the value of the eighth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_9 is 'this column holds the value of the ninth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_10 is 'this column holds the value of the tenth account segment.'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.ERR_MESSAGE IS 'the error message text that indicates the reason that the documents records were not posted to the financials staging table.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SUPPORT_ERR_MESSAGE IS 'this column will hold the decoded error message (in the primary language of the system) for posting errors.  this message will include any dynamic data (i.e. unmapped code values, etc) that may make debugging the error easier for support personnel.' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SET_OF_BOOKS_ID IS 'set of books identifier' 
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_11 is 'segment 11'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_12 is 'segment 12'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_13 is 'segment 13'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_14 is 'segment 14'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_15 is 'segment 15'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_16 is 'segment 16'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_17 is 'segment 17'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_18 is 'segment 18'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_19 is 'segment 19'
;

COMMENT ON COLUMN IM_FINANCIALS_STAGE_ERROR.SEGMENT_20 is 'segment 20'
;

PROMPT CREATING INDEX 'PK_IM_FINANCIALS_STAGE_ERROR';
CREATE UNIQUE INDEX PK_IM_FINANCIALS_STAGE_ERROR ON IM_FINANCIALS_STAGE_ERROR 
    ( 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_FINANCIALS_STAGE_ERROR_I2';
CREATE INDEX IM_FINANCIALS_STAGE_ERROR_I2 ON IM_FINANCIALS_STAGE_ERROR 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_FINANCIALS_STAGE_ERROR_I1';
CREATE INDEX IM_FINANCIALS_STAGE_ERROR_I1 ON IM_FINANCIALS_STAGE_ERROR 
    ( 
     CURRENCY_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_FINANCIALS_STAGE_ERROR';
ALTER TABLE IM_FINANCIALS_STAGE_ERROR 
    ADD CONSTRAINT PK_IM_FINANCIALS_STAGE_ERROR PRIMARY KEY ( SEQ_NO ) 
    USING INDEX PK_IM_FINANCIALS_STAGE_ERROR ;




PROMPT CREATING TABLE 'IM_FIXED_DEAL_DETAIL';
CREATE TABLE IM_FIXED_DEAL_DETAIL 
    ( 
     DOC_ID            NUMBER (10)  NOT NULL , 
     SEQ_NO            NUMBER (10)  NOT NULL , 
     LOC_TYPE          VARCHAR2 (6)  NOT NULL , 
     LOCATION          NUMBER (10)  NOT NULL , 
     DEPT              NUMBER (4)  NOT NULL , 
     CLASS             NUMBER (4) , 
     SUBCLASS          NUMBER (4) , 
     INCOME            NUMBER (20,4)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.DOC_ID IS 'this column holds the document id  for the fixed deal income.' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.SEQ_NO IS 'this column holds the sequence uniquely identifies the' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.LOC_TYPE IS 'this column holds the location type of the fixed deal income.' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.LOCATION IS 'this column holds the location corresponding to the fixed deal income.' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.DEPT IS 'this column holds the dept corresponding to this portion of the income.' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.CLASS IS 'this column holds the class corresponding to this portion of the income.' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.SUBCLASS IS 'this column holds the subclass corresponding to this portion of the income.' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.INCOME IS 'this column holds the current income associated with this location/dept(class/subclass) the fixed deal' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_FIXED_DEAL_DETAIL';
CREATE UNIQUE INDEX PK_IM_FIXED_DEAL_DETAIL ON IM_FIXED_DEAL_DETAIL 
    ( 
     DOC_ID ASC , 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_FIXED_DEAL_DETAIL';
ALTER TABLE IM_FIXED_DEAL_DETAIL 
    ADD CONSTRAINT PK_IM_FIXED_DEAL_DETAIL PRIMARY KEY ( DOC_ID, SEQ_NO ) 
    USING INDEX PK_IM_FIXED_DEAL_DETAIL ;



PROMPT CREATING TABLE 'IM_FIXED_DEAL_DETAIL_TAX';
CREATE TABLE IM_FIXED_DEAL_DETAIL_TAX 
    ( 
     DOC_ID            NUMBER (10)  NOT NULL , 
     SEQ_NO            NUMBER (10)  NOT NULL , 
     TAX_CODE          VARCHAR2 (6)  NOT NULL , 
     TAX_RATE          NUMBER (20,10)  NOT NULL , 
     TAX_BASIS         NUMBER (20,4)  NOT NULL , 
     TAX_AMOUNT        NUMBER (20,4)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.DOC_ID IS 'doc_id' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.SEQ_NO IS 'sequence number' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.TAX_CODE IS 'tax code' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.TAX_RATE IS 'tax rate' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.TAX_BASIS IS 'tax basis' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.TAX_AMOUNT IS 'tax amount' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_FIXED_DEAL_DETAIL_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_FIXED_DEAL_DETAIL_TAX';
CREATE UNIQUE INDEX PK_IM_FIXED_DEAL_DETAIL_TAX ON IM_FIXED_DEAL_DETAIL_TAX 
    ( 
     DOC_ID ASC , 
     SEQ_NO ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_FIXED_DEAL_DETAIL_TAX';
ALTER TABLE IM_FIXED_DEAL_DETAIL_TAX 
    ADD CONSTRAINT PK_IM_FIXED_DEAL_DETAIL_TAX PRIMARY KEY ( DOC_ID, SEQ_NO, TAX_CODE ) 
    USING INDEX PK_IM_FIXED_DEAL_DETAIL_TAX ;




PROMPT CREATING TABLE 'IM_FIXED_DEAL_SOB_LOC_DEFAULT';
CREATE TABLE IM_FIXED_DEAL_SOB_LOC_DEFAULT 
    ( 
     SET_OF_BOOKS_ID NUMBER (15)  NOT NULL , 
     LOCATION        NUMBER (10)  NOT NULL 
    ) 
        INITRANS 6 
		TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_FIXED_DEAL_SOB_LOC_DEFAULT.SET_OF_BOOKS_ID IS 'set of books identifier' 
;

COMMENT ON COLUMN IM_FIXED_DEAL_SOB_LOC_DEFAULT.LOCATION IS 'location number' 
;

PROMPT CREATING INDEX 'PK_IM_FIXED_DEAL_SOB_LOC_DEFT';
CREATE UNIQUE INDEX PK_IM_FIXED_DEAL_SOB_LOC_DEFT ON IM_FIXED_DEAL_SOB_LOC_DEFAULT 
    ( 
     SET_OF_BOOKS_ID ASC 
    ) 
    TABLESPACE RETAIL_DATA 
	INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_FIXED_DEAL_SOB_LOC_DEFAULT';
ALTER TABLE IM_FIXED_DEAL_SOB_LOC_DEFAULT 
    ADD CONSTRAINT PK_IM_FIXED_DEAL_SOB_LOC_DEFT PRIMARY KEY ( SET_OF_BOOKS_ID ) 
    USING INDEX PK_IM_FIXED_DEAL_SOB_LOC_DEFT ;




PROMPT CREATING TABLE 'IM_GLOBAL_PREFERENCES';
CREATE TABLE IM_GLOBAL_PREFERENCES 
    ( 
     PAGE_NAME       VARCHAR2 (120)  NOT NULL , 
     VIEW_NAME       VARCHAR2 (120)  NOT NULL , 
     COLUMNS_NAMES   VARCHAR2 (2000)  NOT NULL , 
     COLUMNS_VISIBLE VARCHAR2 (2000)  NOT NULL , 
     COLUMNS_HIDABLE VARCHAR2 (2000)  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_GLOBAL_PREFERENCES.PAGE_NAME IS 'holds the value of the flexcolumntitlekey for the pageiterate tag. this key must  be unique.' 
;

COMMENT ON COLUMN IM_GLOBAL_PREFERENCES.VIEW_NAME IS 'holds view name associated with a page' 
;

COMMENT ON COLUMN IM_GLOBAL_PREFERENCES.COLUMNS_NAMES IS 'holds a a comma-seperated list of columns for multiview.  these values must be in reimresources.properties file.' 
;

COMMENT ON COLUMN IM_GLOBAL_PREFERENCES.COLUMNS_VISIBLE IS 'holds a a comma-separated list of 1s and 0s. this flag denotes if a column is visible or not.' 
;

COMMENT ON COLUMN IM_GLOBAL_PREFERENCES.COLUMNS_HIDABLE IS 'holds a a comma-separated list of 1s and 0s. this flag denotes if a column can be hidden or not.' 
;

PROMPT CREATING INDEX 'PK_IM_GLOBAL_PREFERENCES';
CREATE UNIQUE INDEX PK_IM_GLOBAL_PREFERENCES ON IM_GLOBAL_PREFERENCES 
    ( 
     PAGE_NAME ASC , 
     VIEW_NAME ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_GLOBAL_PREFERENCES';
ALTER TABLE IM_GLOBAL_PREFERENCES 
    ADD CONSTRAINT PK_IM_GLOBAL_PREFERENCES PRIMARY KEY ( PAGE_NAME, VIEW_NAME ) 
    USING INDEX PK_IM_GLOBAL_PREFERENCES ;




PROMPT CREATING TABLE 'IM_GL_CROSS_REF';
CREATE TABLE IM_GL_CROSS_REF 
    ( 
     ACCOUNT_TYPE    VARCHAR2 (6)  NOT NULL , 
     ACCOUNT_CODE    VARCHAR2 (20)  NOT NULL , 
     SEGMENT_NO      NUMBER (2)  NOT NULL , 
     SEGMENT_VALUE   VARCHAR2 (25) , 
     SET_OF_BOOKS_ID NUMBER (15) DEFAULT -1  NOT NULL , 
     TAX_CODE        VARCHAR2 (6) DEFAULT 'NOCODE'  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_GL_CROSS_REF.ACCOUNT_TYPE IS 'categories of account codes that describe the invoice matching operations.' 
;

COMMENT ON COLUMN IM_GL_CROSS_REF.ACCOUNT_CODE IS 'codes for invoice matching operations within the category designated in the account_type column.' 
;

COMMENT ON COLUMN IM_GL_CROSS_REF.SEGMENT_NO IS 'number for the segment of the financials gl account.  foreign key from the im_gl_options table.' 
;

COMMENT ON COLUMN IM_GL_CROSS_REF.SEGMENT_VALUE IS 'alphanumeric value for the financials gl account.  no special characters are allowed.' 
;

COMMENT ON COLUMN IM_GL_CROSS_REF.SET_OF_BOOKS_ID IS 'set of books identifier' 
;

COMMENT ON COLUMN IM_GL_CROSS_REF.TAX_CODE IS 'Tax code for account segment' 
;

COMMENT ON COLUMN IM_GL_CROSS_REF.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_GL_CROSS_REF.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_GL_CROSS_REF.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_GL_CROSS_REF.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_GL_CROSS_REF.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_GL_CROSS_REF';
CREATE UNIQUE INDEX PK_IM_GL_CROSS_REF ON IM_GL_CROSS_REF 
    ( 
     ACCOUNT_TYPE ASC , 
     SEGMENT_NO ASC , 
     ACCOUNT_CODE ASC , 
     SET_OF_BOOKS_ID ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_GL_CROSS_REF_I1';
CREATE INDEX IM_GL_CROSS_REF_I1 ON IM_GL_CROSS_REF 
    ( 
     SET_OF_BOOKS_ID ASC , 
     SEGMENT_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_GL_CROSS_REF';
ALTER TABLE IM_GL_CROSS_REF 
    ADD CONSTRAINT PK_IM_GL_CROSS_REF PRIMARY KEY ( ACCOUNT_TYPE, SEGMENT_NO, ACCOUNT_CODE, SET_OF_BOOKS_ID, TAX_CODE ) 
    USING INDEX PK_IM_GL_CROSS_REF ;




PROMPT CREATING TABLE 'IM_GL_OPTIONS';
CREATE TABLE IM_GL_OPTIONS 
    ( 
     SEGMENT_NO        NUMBER (2)  NOT NULL , 
     DYNAMIC_IND       VARCHAR2 (1)  NOT NULL , 
     SET_OF_BOOKS_ID   NUMBER (15) DEFAULT -1  NOT NULL , 
     SEGMENT_LABEL     VARCHAR2 (30) , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  ,
	 BUSINESS_ATTRIBUTE VARCHAR2 (20 ) NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_GL_OPTIONS';
ALTER TABLE IM_GL_OPTIONS 
    ADD CONSTRAINT CHK_IM_GL_OPTIONS_SEGMENT_NO 
    CHECK ( SEGMENT_NO BETWEEN 1 AND 20) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_GL_OPTIONS';
ALTER TABLE IM_GL_OPTIONS 
    ADD CONSTRAINT CHK_IM_GL_OPTIONS_DYNAMIC_IND 
    CHECK (DYNAMIC_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_GL_OPTIONS';
ALTER TABLE IM_GL_OPTIONS 
	ADD CONSTRAINT CHK_IGO_BUSINESS_ATTRIBUTE 
	CHECK (BUSINESS_ATTRIBUTE IN (NULL,'COMPANY','LOCATION','DEPARTMENT','CLASS'))
;


COMMENT ON COLUMN IM_GL_OPTIONS.SEGMENT_NO IS 'identifier for the gl account segment.' 
;

COMMENT ON COLUMN IM_GL_OPTIONS.DYNAMIC_IND IS 'indicates  if the segment can be left null and is a table lookup.' 
;

COMMENT ON COLUMN IM_GL_OPTIONS.SET_OF_BOOKS_ID IS 'set of books identifier' 
;

COMMENT ON COLUMN IM_GL_OPTIONS.SEGMENT_LABEL IS 'segment label' 
;

COMMENT ON COLUMN IM_GL_OPTIONS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_GL_OPTIONS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_GL_OPTIONS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_GL_OPTIONS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_GL_OPTIONS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_GL_OPTIONS.BUSINESS_ATTRIBUTE is 'Business attribute associated with the segment. Used for Dynamic mapping of segment values.'
;
PROMPT CREATING INDEX 'PK_IM_GL_OPTIONS';
CREATE UNIQUE INDEX PK_IM_GL_OPTIONS ON IM_GL_OPTIONS 
    ( 
     SET_OF_BOOKS_ID ASC , 
     SEGMENT_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_GL_OPTIONS';
ALTER TABLE IM_GL_OPTIONS 
    ADD CONSTRAINT PK_IM_GL_OPTIONS PRIMARY KEY ( SET_OF_BOOKS_ID, SEGMENT_NO ) 
    USING INDEX PK_IM_GL_OPTIONS ;




PROMPT CREATING TABLE 'IM_INJECT_DOC_DETAIL';
CREATE TABLE IM_INJECT_DOC_DETAIL 
    ( 
     INJECT_ID             NUMBER (10)  NOT NULL , 
     TRANSACTION_ID        NUMBER (10)  NOT NULL , 
     INJECT_DOC_ID         NUMBER (10)  NOT NULL , 
     DETAIL_ID             NUMBER (10)  NOT NULL , 
     ITEM                  VARCHAR2 (25) , 
     VPN                   VARCHAR2 (25) , 
     UPC                   VARCHAR2 (25) , 
     ITEM_SOURCE           VARCHAR2 (7) , 
     UPC_SUPPLEMENT        NUMBER (10) , 
     QTY                   NUMBER (20,4) , 
     UNIT_COST             NUMBER (20,4) , 
     TOTAL_ALLOWANCE       NUMBER (20,4) , 
     LAST_UPDATED_BY       VARCHAR2 (60)  DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE	   DATE  DEFAULT SYSDATE NOT NULL , 
	 CREATED_BY			   VARCHAR2 (60) DEFAULT USER NOT NULL , 
	 CREATION_DATE		   DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID	   NUMBER (15)  DEFAULT 1 NOT NULL , 
	 STATUS 			   VARCHAR2 (6) DEFAULT 'UNMTCH' NOT NULL , 
	 TAX_DISCREPANCY_IND   VARCHAR2 (1) DEFAULT 'N' NOT NULL , 
	 REASON_CODE_ID 	   VARCHAR2 (20) NULL , 
	 REF_OBJECT_VERSION_ID NUMBER (15) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_DETAIL IS 'This table stores staged document details'
;


COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.INJECT_ID IS 'Inject ID, unique for each injecting process' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.TRANSACTION_ID IS 'Transaction ID, unique for each document per inecting process. May not be unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.DETAIL_ID IS 'Detail ID, unique for each detail that is also unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.STATUS is 'The status of the document line item'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.TAX_DISCREPANCY_IND is 'Indicates if the current line items state is tax discrepant'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.REASON_CODE_ID is 'The reason code id of the document.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee integrity'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_DETAIL_I1';
CREATE INDEX IM_INJECT_DOC_DETAIL_I1 ON IM_INJECT_DOC_DETAIL 
    ( 
     INJECT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_INJECT_DOC_DETAIL_I2';
CREATE INDEX IM_INJECT_DOC_DETAIL_I2 ON IM_INJECT_DOC_DETAIL 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_INJECT_DOC_DETAIL_I3';
CREATE INDEX IM_INJECT_DOC_DETAIL_I3 ON IM_INJECT_DOC_DETAIL 
    ( 
     DETAIL_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INJECT_DOC_DETAIL_ALLOWANCE';
CREATE TABLE IM_INJECT_DOC_DETAIL_ALLOWANCE 
    ( 
     DETAIL_ID         NUMBER (10)  NOT NULL , 
     ALLOWANCE_CODE    VARCHAR2 (6) , 
     ALLOWANCE_AMOUNT  NUMBER (20,4) ,
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_DETAIL_ALLOWANCE IS 'This table stores staged document detail allowances'
;


COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOWANCE.DETAIL_ID IS 'Detail ID, globally unique line number' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOWANCE.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOWANCE.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOWANCE.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOWANCE.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOWANCE.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_DETAIL_ALLOW_I1';
CREATE INDEX IM_INJECT_DOC_DETAIL_ALLOW_I1 ON IM_INJECT_DOC_DETAIL_ALLOWANCE 
    ( 
     DETAIL_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INJECT_DOC_DETAIL_ALLOW_TAX';
CREATE TABLE IM_INJECT_DOC_DETAIL_ALLOW_TAX 
    ( 
     DETAIL_ID         NUMBER (10)  NOT NULL , 
     ALLOWANCE_CODE    VARCHAR2 (6) , 
     TAX_CODE          VARCHAR2 (6) , 
     TAX_RATE          NUMBER (20,4) , 
     TAX_BASIS         NUMBER (20,4) ,
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_DETAIL_ALLOW_TAX IS 'This table stores staged document detail allowance taxes'
;


COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOW_TAX.DETAIL_ID IS 'Detail ID, globally unique line number' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOW_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOW_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOW_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOW_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_ALLOW_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_DTL_ALLOW_TAX_I1';
CREATE INDEX IM_INJECT_DOC_DTL_ALLOW_TAX_I1 ON IM_INJECT_DOC_DETAIL_ALLOW_TAX 
    ( 
     DETAIL_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INJECT_DOC_DETAIL_TAX';
CREATE TABLE IM_INJECT_DOC_DETAIL_TAX 
    ( 
     DETAIL_ID             NUMBER (10)  NOT NULL , 
     TAX_CODE              VARCHAR2 (6) , 
     TAX_RATE              NUMBER (20,10) , 
     TAX_BASIS             NUMBER (20,4) , 
     REVERSE_VAT_IND       VARCHAR2 (1) DEFAULT 'N' , 
     LAST_UPDATED_BY       VARCHAR2 (60)  DEFAULT USER NOT NULL ,
     LAST_UPDATE_DATE      DATE  DEFAULT SYSDATE NOT NULL , 
	 CREATED_BY  	   	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE    	   DATE  DEFAULT SYSDATE NOT NULL ,  
	 OBJECT_VERSION_ID     NUMBER (15) DEFAULT 1 NOT NULL , 
	 TAX_AMOUNT			   NUMBER (20,4) NOT NULL , 
	 REF_OBJECT_VERSION_ID NUMBER (15) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_DETAIL_TAX IS 'This table stores staged document detail taxes'
;


COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.DETAIL_ID IS 'Detail ID, globally unique line number' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.REVERSE_VAT_IND IS 'Indicator if the tax is reverse VAT eligible' 
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.TAX_AMOUNT is 'The computed tax amount for a detail line'
;

COMMENT ON COLUMN IM_INJECT_DOC_DETAIL_TAX.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee integrity'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_DETAIL_TAX_I1';
CREATE INDEX IM_INJECT_DOC_DETAIL_TAX_I1 ON IM_INJECT_DOC_DETAIL_TAX 
    ( 
     DETAIL_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INJECT_DOC_ERROR';
CREATE TABLE IM_INJECT_DOC_ERROR 
    ( 
     INJECT_DOC_ID  NUMBER (10)  NOT NULL , 
     DETAIL_ID      NUMBER (10) , 
     NON_MERCH_CODE VARCHAR2 (6) , 
     RULE           VARCHAR2 (40)  NOT NULL , 
     ERROR_CONTEXT  VARCHAR2 (200) , 
     FIXABLE        VARCHAR2 (1) , 
     STATUS         VARCHAR2 (6)  NOT NULL , 
     ACTION_DATE    DATE , 
     CREATION_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
     CREATED_BY     VARCHAR2 (60) DEFAULT USER NOT NULL , 
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL , 
	 TRIAL_ID NUMBER (10) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_ERROR IS 'This table stores staging attempt document errors for specified rule violations'
;


COMMENT ON COLUMN IM_INJECT_DOC_ERROR.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.DETAIL_ID IS 'Detail ID, globally unique line number' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.NON_MERCH_CODE IS 'Non-merchandise code identifier' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.RULE IS 'Rule violation that caused the error' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.ERROR_CONTEXT IS 'Context associated with the error' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.FIXABLE IS 'Indicates if the error can be fixed (Y/N) without routing document to the vendor' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.STATUS IS 'Error status N(New), F(Fixed), X(Extracted), or D(Deleted)' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.ACTION_DATE IS 'Date action was taken to resolve error' 
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_ERROR.TRIAL_ID is 'Unique identifier to group errors per validation trial.'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_ERROR_I1';
CREATE INDEX IM_INJECT_DOC_ERROR_I1 ON IM_INJECT_DOC_ERROR 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING INDEX 'IM_INJECT_DOC_ERROR_I2';
CREATE INDEX IM_INJECT_DOC_ERROR_I2 on IM_INJECT_DOC_ERROR
	(
	 TRIAL_ID ASC
	)
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
	

PROMPT CREATING TABLE 'IM_INJECT_DOC_HEAD';
CREATE TABLE IM_INJECT_DOC_HEAD 
    ( 
     INJECT_ID              NUMBER (10)  NOT NULL , 
     TRANSACTION_ID         NUMBER (10)  NOT NULL , 
     INJECT_DOC_ID          NUMBER (10)  NOT NULL , 
     EXT_DOC_ID	            VARCHAR2 (150) , 
     DOC_TYPE               VARCHAR2 (6) , 
     ORDER_NO               NUMBER (12) , 
     LOCATION               NUMBER (10) , 
     LOC_TYPE               VARCHAR2 (1) , 
     VENDOR                 VARCHAR2 (10) , 
     VENDOR_TYPE            VARCHAR2 (6) , 
     REF_VENDOR             VARCHAR2 (10) , 
     CURRENCY_CODE          VARCHAR2 (3) , 
     TOTAL_COST             NUMBER (20,4) , 
     TOTAL_QTY              NUMBER (12,4) , 
     TOTAL_DISCOUNT         NUMBER (12,4) , 
     DOC_DATE               DATE , 
     DUE_DATE               DATE , 
     TERMS                  VARCHAR2 (15) , 
     TOTAL_TAX_AMOUNT       NUMBER (20,4) , 
     RTV_IND                VARCHAR2 (1) , 
     MANUALLY_PAID_IND      VARCHAR2 (1) , 
     EXCHANGE_RATE          NUMBER (20,10) , 
     DEAL_ID                NUMBER (10) , 
     DEAL_APPROVAL_IND      VARCHAR2 (1) , 
     FREIGHT_TYPE           VARCHAR2 (6) , 
     MERCH_TYPE             VARCHAR2 (6) , 
     PAYMENT_METHOD         VARCHAR2 (6) , 
     CUSTOM_DOC_REF1        VARCHAR2 (90) , 
     CUSTOM_DOC_REF2        VARCHAR2 (90) , 
     CUSTOM_DOC_REF3        VARCHAR2 (90) , 
     CUSTOM_DOC_REF4        VARCHAR2 (90) , 
     CROSS_REF_DOC          NUMBER (10) , 
     GROUP_ID               NUMBER (10) , 
     MULTI_LOC_IND          VARCHAR2 (1) , 
     REVERSE_VAT_IND        VARCHAR2 (1) DEFAULT 'N' , 
     LAST_UPDATED_BY        VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE	    DATE  DEFAULT SYSDATE NOT NULL , 
     THREAD_ID              NUMBER (10) , 
	 CREATED_BY 		    VARCHAR2 (60) DEFAULT USER NOT NULL , 
	 CREATION_DATE 		    DATE DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 	    NUMBER (15) DEFAULT 1 NOT NULL , 
	 STATUS 				VARCHAR2 (10 ) NULL ,
	 TERMS_DSCNT_PCT 		NUMBER (12,4) NULL , 
	 APPROVAL_ID 			VARCHAR2 (30 ) NULL , 
	 APPROVAL_DATE 			DATE  NULL ,
	 PRE_PAID_IND 			VARCHAR2 (1 ) NULL ,
	 PRE_PAID_ID 			VARCHAR2 (30 ) NULL , 
	 POST_DATE 				DATE  NULL ,
	 REF_AUTH_NO 			NUMBER (10,0) NULL , 
	 DEAL_TYPE 				VARCHAR2 (1 ) NULL , 
	 HOLD_STATUS 			VARCHAR2 (1 ) DEFAULT 'N' NULL , 
	 TOTAL_COST_INC_TAX 	NUMBER (20,4) NULL , 
	 HEADER_ONLY 			VARCHAR2 (1 ) NULL , 
	 SRC_DOC_ID 			NUMBER (10) NULL , 
	 REF_OBJECT_VERSION_ID 	NUMBER (15) NULL , 
	 DOC_SOURCE 			VARCHAR2 (6) , 
	 BEST_TERMS_SOURCE 		VARCHAR2 (6) , 
	 BEST_TERMS 			VARCHAR2 (15) , 
	 BEST_TERMS_DATE 		DATE , 
	 MATCH_DATE 			DATE ,
	 WORKSPACE_TYPE 		VARCHAR2 (20) NOT NULL ,
	 DEAL_DETAIL_ID NUMBER (10) NULL ,
	 REF_CNR_EXT_DOC_ID VARCHAR2 (150 ) NULL ,
	 REF_INV_EXT_DOC_ID VARCHAR2 (150 ) NULL ,
	 RTV_ORDER_NO NUMBER (10) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_INJECT_DOC_HEAD';
ALTER TABLE IM_INJECT_DOC_HEAD 
	ADD CONSTRAINT CHK_IM_INJ_DOC_HEAD_WS_TYPE 
	CHECK (WORKSPACE_TYPE IN ('DOC_MAINTAIN', 'EDI_INJECT', 'SPREADSHEET_INJECT','INJECT_COPY'))
;
		
COMMENT ON TABLE IM_INJECT_DOC_HEAD IS 'This table stores staged document headers'
;


COMMENT ON COLUMN IM_INJECT_DOC_HEAD.INJECT_ID IS 'Inject ID, unique for each injecting process' 
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.TRANSACTION_ID IS 'Transaction ID, unique for each document per inecting process. May not be unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.EXT_DOC_ID is 'Document identifier as provided by vendor'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.VENDOR is 'Vendor ID, identifies vendor that provided the document. It can be numeric (for Supppliers) and non-numeric (for Partners)'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.REF_VENDOR is 'Vendor ID derived from vendor ID'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.REVERSE_VAT_IND IS 'Indicator if the doc has reverse VAT applied' 
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.THREAD_ID IS 'Thread group based on Inject ID that the staged document belongs to' 
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.STATUS is 'The position of the document within the matching process and payment processes.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.TERMS_DSCNT_PCT is 'The discount percentage associated with the term for the document.  '
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.APPROVAL_ID is 'The id of the user that approved the document.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.APPROVAL_DATE is 'The date that the document was approved.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.PRE_PAID_IND is 'This indicates whether the invoice was paid prior to matching.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.PRE_PAID_ID is 'The id of the user that paid the invoice.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.POST_DATE is 'The date the document was posted to the general ledger.  '
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.REF_AUTH_NO is 'The authorization number for the reference rtvs.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.DEAL_TYPE is 'The type of deal'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.HOLD_STATUS is 'The hold status of the document.  '
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.TOTAL_COST_INC_TAX is 'The total header cost on the document including any applicable tax amount'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.HEADER_ONLY is 'This column indicates whether the documents contains details or not'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.SRC_DOC_ID is 'This column will hold the doc_id from im_doc_head while opening an existing document in edit mode'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee integrity'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.DOC_SOURCE is 'this colums holds the source of the invoice.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.BEST_TERMS_SOURCE is 'this column holds the source of the best terms.  when the best terms calculation is performed, the ranking of order and document terms (on the im_terms_ranking table) are compared.  the term with the higher ranking is the best term.  if the order term is the best term, the best_terms_source will be order.  if the document term is the best term, the best_terms_source will be doc.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.BEST_TERMS is 'this column holds the term determined to be best by the best terms calculation.  the best terms calculation runs after an invoice has been matched.  the best term is determined by comparing the order and invoice term.  the term that has the highest ranking (as defined on the im_terms_ranking table) is determined to be the best term.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.BEST_TERMS_DATE is 'this column holds the date associated with the best term chosen.  this date is the date by which the invoice has to be settled based on the best term.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.MATCH_DATE is 'this column holds the date that the document was matched.  this column will be defaulted by both the manual and automatch processes.  this column is optional.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.WORKSPACE_TYPE is 'The type of workspace this row belongs to.  Possible values are DOC_MAINTAIN, EDI_MAINTAIN, SPREADSHEET_INJECT.'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.DEAL_DETAIL_ID is 'Deal component id'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.REF_CNR_EXT_DOC_ID is 'Reference Credit Note Request vendor document number'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.REF_INV_EXT_DOC_ID is 'Reference Invoice vendor document number'
;

COMMENT ON COLUMN IM_INJECT_DOC_HEAD.RTV_ORDER_NO is 'RTV Order Number the document has been created for.'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_HEADER_I1';
CREATE INDEX IM_INJECT_DOC_HEADER_I1 ON IM_INJECT_DOC_HEAD 
    ( 
     INJECT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_INJECT_DOC_HEADER_I2';
CREATE INDEX IM_INJECT_DOC_HEADER_I2 ON IM_INJECT_DOC_HEAD 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

	PROMPT CREATING INDEX 'IM_INJECT_DOC_HEAD_I3';
CREATE INDEX IM_INJECT_DOC_HEAD_I3 on IM_INJECT_DOC_HEAD
	(
	 EXT_DOC_ID ASC
	)
	TABLESPACE RETAIL_INDEX 
	INITRANS 12 ;


	
PROMPT CREATING TABLE 'IM_INJECT_DOC_LOCK';
CREATE TABLE IM_INJECT_DOC_LOCK 
    ( 
     INJECT_DOC_ID  NUMBER (10)  NOT NULL , 
     LOCK_DATETIME  DATE  NOT NULL , 
     LOCK_CREATE_ID VARCHAR2 (30)  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_LOCK IS 'This table is used to store the document identifier locks for the inject tables'
;


COMMENT ON COLUMN IM_INJECT_DOC_LOCK.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_LOCK.LOCK_DATETIME IS 'Date when the document was locked' 
;

COMMENT ON COLUMN IM_INJECT_DOC_LOCK.LOCK_CREATE_ID IS 'User that holds the lock' 
;
PROMPT CREATING INDEX 'PK_IM_INJECT_DOC_LOCK';
CREATE UNIQUE INDEX PK_IM_INJECT_DOC_LOCK ON IM_INJECT_DOC_LOCK 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_INJECT_DOC_LOCK_I1';
CREATE INDEX IM_INJECT_DOC_LOCK_I1 ON IM_INJECT_DOC_LOCK 
    ( 
     LOCK_CREATE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_INJECT_DOC_LOCK';
ALTER TABLE IM_INJECT_DOC_LOCK 
    ADD CONSTRAINT PK_IM_INJECT_DOC_LOCK PRIMARY KEY ( INJECT_DOC_ID ) 
    USING INDEX PK_IM_INJECT_DOC_LOCK ;




PROMPT CREATING TABLE 'IM_INJECT_DOC_NON_MERCH';
CREATE TABLE IM_INJECT_DOC_NON_MERCH 
    ( 
     INJECT_ID             NUMBER (10)  NOT NULL , 
     TRANSACTION_ID        NUMBER (10)  NOT NULL , 
     INJECT_DOC_ID         NUMBER (10)  NOT NULL , 
     NON_MERCH_CODE        VARCHAR2 (6) , 
     NON_MERCH_AMOUNT      NUMBER (20,4) , 
     SERVICE_PERFORMED     VARCHAR2 (1) , 
     STORE                 NUMBER (10) , 
     LAST_UPDATED_BY       VARCHAR2 (60)  DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE      DATE  DEFAULT SYSDATE NOT NULL , 
	 CREATED_BY  	   	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     	   DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 	   NUMBER (15) DEFAULT 1 NOT NULL , 
	 REF_OBJECT_VERSION_ID NUMBER (15) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_NON_MERCH IS 'This table stores staged document non-merch costs'
;


COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.INJECT_ID IS 'Inject ID, unique for each injecting process' 
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.TRANSACTION_ID IS 'Transaction ID, unique for each document per inecting process. May not be unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee integrity'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_NON_MERCH_I1';
CREATE INDEX IM_INJECT_DOC_NON_MERCH_I1 ON IM_INJECT_DOC_NON_MERCH 
    ( 
     INJECT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_INJECT_DOC_NON_MERCH_I2';
CREATE INDEX IM_INJECT_DOC_NON_MERCH_I2 ON IM_INJECT_DOC_NON_MERCH 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INJECT_DOC_NON_MERCH_TAX';
CREATE TABLE IM_INJECT_DOC_NON_MERCH_TAX 
    ( 
     INJECT_DOC_ID         NUMBER (10)  NOT NULL , 
     NON_MERCH_CODE        VARCHAR2 (6) , 
     TAX_CODE              VARCHAR2 (6) , 
     TAX_RATE              NUMBER (20,4) , 
     TAX_BASIS             NUMBER (20,4) , 
     LAST_UPDATED_BY       VARCHAR2 (60)  DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE      DATE  DEFAULT SYSDATE NOT NULL , 
	 CREATED_BY  	       VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE         DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID     NUMBER (15) DEFAULT 1 NOT NULL , 
	 INJECT_ID	 		   NUMBER (10) NOT NULL , 
	 TAX_AMOUNT 		   NUMBER (20,4) NULL , 
	 REF_OBJECT_VERSION_ID NUMBER (15) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_NON_MERCH_TAX IS 'This table stores staged document non-merch cost taxes'
;


COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.INJECT_ID  is 'The user session id'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.TAX_AMOUNT is 'The computed tax amount for a non merch code'
;

COMMENT ON COLUMN IM_INJECT_DOC_NON_MERCH_TAX.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee integrity'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_NON_MERCH_TAX_I1';
CREATE INDEX IM_INJECT_DOC_NON_MERCH_TAX_I1 ON IM_INJECT_DOC_NON_MERCH_TAX 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INJECT_DOC_RECORD';
CREATE TABLE IM_INJECT_DOC_RECORD 
    ( 
     INJECT_ID         NUMBER (10)  NOT NULL , 
     TRANSACTION_ID    NUMBER (10)  NOT NULL , 
     INJECT_DOC_ID     NUMBER (10)  NOT NULL , 
     RECORD_NO         NUMBER (10)  NOT NULL , 
     RECORD            VARCHAR2 (763)  NOT NULL , 
     EXTRACTED         VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_RECORD IS 'This table stores staged document raw records. Mostly used for EDI documents that have type errors. Successfully processed documents will NOT be in this table. Main purpose of the table it to preserve original state of EDI data to be sent back into rejection file'
;


COMMENT ON COLUMN IM_INJECT_DOC_RECORD.INJECT_ID IS 'Inject ID, unique for each injecting process' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.TRANSACTION_ID IS 'Transaction ID, unique for each document per inecting process. May not be unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.RECORD_NO is 'Line number order of the record in the raw document'
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.RECORD IS 'Raw document record, not typed' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.EXTRACTED IS 'Flag indicating if the data has been extracted to an outbound data destination' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RECORD.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING INDEX 'IM_INJECT_DOC_RECORD_I1';
CREATE INDEX IM_INJECT_DOC_RECORD_I1 on IM_INJECT_DOC_RECORD
	(
	 INJECT_ID ASC 
	)
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


PROMPT CREATING INDEX 'IM_INJECT_DOC_RECORD_I2';
CREATE INDEX IM_INJECT_DOC_RECORD_I2 on IM_INJECT_DOC_RECORD
	(
	 INJECT_DOC_ID ASC
	)
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


	

PROMPT CREATING TABLE 'IM_INJECT_DOC_RULE';
CREATE TABLE IM_INJECT_DOC_RULE 
    ( 
     RULE              VARCHAR2 (40)  NOT NULL , 
     CATEGORY          VARCHAR2 (20)  NOT NULL , 
     ERROR_MSG         VARCHAR2 (512)  NOT NULL , 
     FIXABLE_DEFAULT   VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_RULE IS 'This table stores injection validation rules'
;


COMMENT ON COLUMN IM_INJECT_DOC_RULE.RULE IS 'Rule identifier' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.CATEGORY IS 'Category of the rule' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.ERROR_MSG IS 'Rule error message, not localized' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.FIXABLE_DEFAULT IS 'Indicates if the error can be fixed (Y/N) without routing document to the vendor' 
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_RULE.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_INJECT_DOC_RULE';
ALTER TABLE IM_INJECT_DOC_RULE
	ADD CONSTRAINT PK_IM_INJECT_DOC_RULE PRIMARY KEY ( RULE )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	

	

PROMPT CREATING TABLE 'IM_INJECT_DOC_TAX';
CREATE TABLE IM_INJECT_DOC_TAX 
    ( 
     INJECT_ID             NUMBER (10)  NOT NULL , 
     TRANSACTION_ID        NUMBER (10)  NOT NULL , 
     INJECT_DOC_ID         NUMBER (10)  NOT NULL , 
     TAX_CODE              VARCHAR2 (6) , 
     TAX_RATE              NUMBER (20,10) , 
     TAX_BASIS             NUMBER (20,4) , 
     LAST_UPDATED_BY       VARCHAR2 (60)  DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE      DATE  DEFAULT SYSDATE NOT NULL ,
	 TAX_AMOUNT 		   NUMBER (20,4) NULL , 
	 REF_OBJECT_VERSION_ID NUMBER (15) NULL , 
	 CREATED_BY  	       VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE         DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID     NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_DOC_TAX IS 'This table stores staged document taxes'
;


COMMENT ON COLUMN IM_INJECT_DOC_TAX.INJECT_ID IS 'Inject ID, unique for each injecting process' 
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.TRANSACTION_ID IS 'Transaction ID, unique for each document per inecting process. May not be unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.TAX_CODE IS 'Tax breakdown tax code' 
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.TAX_RATE IS 'Tax breakdown tax rate' 
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.TAX_BASIS IS 'Tax breakdown tax basis' 
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.TAX_AMOUNT is 'The computed tax amount for a non merch code'
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee integrity'
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_DOC_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_INJECT_DOC_TAX_I1';
CREATE INDEX IM_INJECT_DOC_TAX_I1 ON IM_INJECT_DOC_TAX 
    ( 
     INJECT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_INJECT_DOC_TAX_I2';
CREATE INDEX IM_INJECT_DOC_TAX_I2 ON IM_INJECT_DOC_TAX 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INJECT_DOC_XFORM_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_INJECT_DOC_XFORM_GTT 
    ( 
     INJECT_DOC_ID NUMBER (10)  NOT NULL , 
     DOC_ID        NUMBER (10)  NOT NULL 
    ) 
    ON COMMIT DELETE ROWS 
;



COMMENT ON TABLE IM_INJECT_DOC_XFORM_GTT IS 'Temporary table to hold identifiers when injecting documents into the system'
;


COMMENT ON COLUMN IM_INJECT_DOC_XFORM_GTT.INJECT_DOC_ID IS 'Injector Document ID, globally unique for all injector documents' 
;

COMMENT ON COLUMN IM_INJECT_DOC_XFORM_GTT.DOC_ID IS 'Document ID, globally unique for all documents' 
;



PROMPT CREATING TABLE 'IM_INJECT_STATUS';
CREATE TABLE IM_INJECT_STATUS 
    ( 
     INJECT_ID          NUMBER (10)  NOT NULL , 
     INJECT_SOURCE      VARCHAR2 (300)  NOT NULL , 
     INJECT_SOURCE_ID   NUMBER (10)  NOT NULL , 
     REJECT_DESTINATION VARCHAR2 (300)  NOT NULL , 
     INJECT_TYPE        VARCHAR2 (5)  NOT NULL , 
     STATUS             VARCHAR2 (20)  NOT NULL , 
     TOTAL_DOCS         NUMBER (7) , 
     INJECTED_DOCS      NUMBER (7) , 
     START_DATE         DATE  NOT NULL , 
     END_DATE           DATE , 
     CREATED_BY         VARCHAR2 (60)  DEFAULT USER NOT NULL , 
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_STATUS IS 'This table stores per process injection information'
;


COMMENT ON COLUMN IM_INJECT_STATUS.INJECT_ID IS 'Inject ID, unique for each injecting process' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.INJECT_SOURCE IS 'Inject source, will be the path to the source data file in case of file based data source, such as EDI' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.INJECT_SOURCE_ID IS 'Inject source id, will uniquely identify data source. Will be used in the combination with data source. In case of a file it will be a file size. Will be used to prevent multiple loading of the same file. Some other technique can be used such as taking hash code of loaded file records' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.REJECT_DESTINATION IS 'Reject destination. Defines the path to the destination file in case of file based data source, such as EDI' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.INJECT_TYPE IS 'Inject type. Identifies the type of injection (only EDI supported)' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.STATUS IS 'Inject status. Defines status of the injection process. Valid values are NEW (Initial state), FAILURE (complete failure, no documents have been injected), FULL_SUCCESS (complete success with no errors reported), SUCCESS_WITH_ERRORS (success with some errors reported)' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.TOTAL_DOCS IS 'Total documents processed count per data source. This includes successfully processed documents and the documents with some errors reported' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.INJECTED_DOCS IS 'Injected documents count per data source. This includes successfully processed documents only that have been injected into operational data flow' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.START_DATE IS 'Start data/time of the injection process' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.END_DATE IS 'End data/time of the injection process' 
;

COMMENT ON COLUMN IM_INJECT_STATUS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_STATUS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_STATUS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_STATUS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_STATUS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_INJECT_TAX_DISCREPANCY';
CREATE TABLE IM_INJECT_TAX_DISCREPANCY 
    ( 
     INJECT_DOC_ID      NUMBER (10)  NOT NULL , 
     ORDER_NO           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     TAX_CODE           VARCHAR2 (6)  NOT NULL , 
     DOC_TAX_RATE       NUMBER (20,10)  NOT NULL , 
     DOC_TAX_AMOUNT     NUMBER (20,4)  NOT NULL , 
     VERIFY_TAX_RATE    NUMBER (20,10)  NOT NULL , 
     VERIFY_TAX_AMOUNT  NUMBER (20,4)  NOT NULL , 
     VERIFY_TAX_SRC     VARCHAR2 (2)  NOT NULL , 
     VERIFY_TAX_FORMULA VARCHAR2 (500)  NOT NULL , 
     VERIFY_TAX_ORDER   NUMBER (10)  NOT NULL , 
	 CREATED_BY  	    VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE      DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY    VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE   DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID  NUMBER (15) DEFAULT 1 NOT NULL , 
	 VERIFY_TAX_CODE VARCHAR2 (6 ) NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INJECT_TAX_DISCREPANCY IS 'This table stores tax discrepancies that result from document validation'
;


COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_TAX_DISCREPANCY.VERIFY_TAX_CODE is 'the tax code according to the tax verification source'
;
PROMPT CREATING INDEX 'IM_INJECT_TAX_DISCREPANCY_I1';
CREATE INDEX IM_INJECT_TAX_DISCREPANCY_I1 ON IM_INJECT_TAX_DISCREPANCY 
    ( 
     INJECT_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INTRA_TAX_TMP';
CREATE TABLE IM_INTRA_TAX_TMP 
    ( 
     POSTING_ID NUMBER (20) , 
     DOC_ID     NUMBER (20) , 
     TAX_CODE   VARCHAR2 (6) , 
     TAX_RATE   NUMBER (20,10) , 
     TOTAL_COST NUMBER (20,4) 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_INTRA_TAX_TMP IS 'temporary table for tax proration used in posting'
;


COMMENT ON COLUMN IM_INTRA_TAX_TMP.POSTING_ID IS 'posting id' 
;

COMMENT ON COLUMN IM_INTRA_TAX_TMP.DOC_ID IS 'document id' 
;

COMMENT ON COLUMN IM_INTRA_TAX_TMP.TAX_CODE IS 'tax code' 
;

COMMENT ON COLUMN IM_INTRA_TAX_TMP.TAX_RATE IS 'tax rate' 
;

COMMENT ON COLUMN IM_INTRA_TAX_TMP.TOTAL_COST IS 'total cost' 
;



PROMPT CREATING TABLE 'IM_INVOICE_DETAIL';
CREATE TABLE IM_INVOICE_DETAIL 
    ( 
     DOC_ID                         NUMBER (10)  NOT NULL , 
     ITEM                           VARCHAR2 (25)  NOT NULL , 
     UNIT_COST                      NUMBER (20,4)  NOT NULL , 
     QTY                    		NUMBER (12,4)  NOT NULL , 
     RESOLUTION_ADJUSTED_UNIT_COST  NUMBER (20,4)  NOT NULL , 
     RESOLUTION_ADJUSTED_QTY        NUMBER (12,4)  NOT NULL , 
     STATUS                         VARCHAR2 (6)  NOT NULL , 
     COST_MATCHED                   VARCHAR2 (1)  NOT NULL , 
     QTY_MATCHED                    VARCHAR2 (1)  NOT NULL , 
     COST_VARIANCE_WITHIN_TOLERANCE NUMBER (20,4) , 
     QTY_VARIANCE_WITHIN_TOLERANCE  NUMBER (20,4) , 
     ADJUSTMENT_PENDING             VARCHAR2 (1)  NOT NULL , 
     LAST_UPDATED_BY                VARCHAR2 (60)  DEFAULT USER NOT NULL ,
     LAST_UPDATE_DATE	            DATE  DEFAULT SYSDATE NOT NULL ,  
     TAX_DISCREPANCY_IND            VARCHAR2 (1) , 
     UNIT_FREIGHT                   NUMBER (20,4) , 
     UNIT_MRP                       NUMBER (20,4) , 
     UNIT_RETAIL                    NUMBER (20,4) , 
	 CREATED_BY  	                VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE                  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 			    NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL';
ALTER TABLE IM_INVOICE_DETAIL 
    ADD CONSTRAINT CHK_IM_INVOICE_DET_STATUS 
    CHECK (STATUS IN ('MTCH','UNMTCH')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL';
ALTER TABLE IM_INVOICE_DETAIL 
    ADD CONSTRAINT CHK_IM_INVOICE_DET_COST_MATCH 
    CHECK (COST_MATCHED IN ('N','Y','R','D')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL';
ALTER TABLE IM_INVOICE_DETAIL 
    ADD CONSTRAINT CHK_IM_INVOICE_DET_QTY_MATCHED 
    CHECK (QTY_MATCHED IN ('N','Y','R','D'))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL';
ALTER TABLE IM_INVOICE_DETAIL 
    ADD CONSTRAINT CHK_IM_INVOICE_DET_ADJUST_PEND 
    CHECK (ADJUSTMENT_PENDING IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL';
ALTER TABLE IM_INVOICE_DETAIL 
    ADD CONSTRAINT CHK_IM_INVOICE_DET_TAX_DIS_IND 
    CHECK (TAX_DISCREPANCY_IND IN ('N','Y')) 
;


COMMENT ON COLUMN IM_INVOICE_DETAIL.DOC_ID IS 'this column holds the document to which this detail record belongs.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.ITEM IS 'this column holds the transaction level item that is on the document.  transaction level item means that the item is managed at this level in the merchandising system.  for rms 9, this could be either a pack, fashion sku or staple sku, but this could not be a fashion style.  for rms 10, this must be a transaction level.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.UNIT_COST IS 'this column specifies the unit cost of the invoice line.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.QTY is 'this column specifies the invoice quantity for the invoice line.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.RESOLUTION_ADJUSTED_UNIT_COST IS 'this column specifies the resolution adjusted unit cost. it is defaulted to the unit cost when the invoice line is first created.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.RESOLUTION_ADJUSTED_QTY IS 'this column specifies the resolution adjusted quantity invoiced. it is defaulted to the invoice quantity when the invoice line is first created.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.STATUS IS 'this column holds the status of the document line item.  valid values are unmtch - unmatched, pmtch for partially  matched and mtch for matched.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.COST_MATCHED IS 'this column indicates if the invoice line is already cost matched.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.QTY_MATCHED IS 'this column indicates if the invoice line is already quantity matched.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.COST_VARIANCE_WITHIN_TOLERANCE IS 'this column will hold the cost variance within tolerance for an invoice line or potentially for a set of invoice lines. the variance will represent any difference within tolerance between invoice unit cost and order unit cost.  in the case of an invoice line that has been resolved via a cost discrepancy resolution, the variance will represent any difference unexplained by resolution actions but that is still within tolerance.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.QTY_VARIANCE_WITHIN_TOLERANCE IS 'this column will hold the quantity variance within tolerance for an invoice line or potentially for a set of invoice lines. the variance will represent any difference within tolerance between invoice quantity and order quantity.  in the case of an invoice line that has been resolved via a quantity discrepancy resolution, the variance will represent any difference unexplained by resolution actions but that is still within tolerance.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.ADJUSTMENT_PENDING IS 'the column indicates whether there are receiver (cost/unit) adjustments pending. value is default n. value is y when a discrepancy resolution action is a receiver adjustment and the merchandise system has not been adjusted. value is set back to n once invoice match determines that the adjustment has been done in the merchandise system.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.TAX_DISCREPANCY_IND IS 'indicates if the current line items state is tax discrepant.  n or null mean the line is not discrepant.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.UNIT_FREIGHT IS 'unit freight for an item' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.UNIT_MRP IS 'maximum retail price for an item' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.UNIT_RETAIL IS 'unit retail price for an item' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_INVOICE_DETAIL';
CREATE UNIQUE INDEX PK_IM_INVOICE_DETAIL ON IM_INVOICE_DETAIL 
    ( 
     DOC_ID ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_INVOICE_DETAIL';
ALTER TABLE IM_INVOICE_DETAIL 
    ADD CONSTRAINT PK_IM_INVOICE_DETAIL PRIMARY KEY ( DOC_ID, ITEM ) 
    USING INDEX PK_IM_INVOICE_DETAIL ;




PROMPT CREATING TABLE 'IM_INVOICE_DETAIL_ALLOWANCE';
CREATE TABLE IM_INVOICE_DETAIL_ALLOWANCE 
    ( 
     DOC_ID           NUMBER (10)  NOT NULL , 
     ITEM             VARCHAR2 (25)  NOT NULL , 
     ALLOWANCE_CODE   VARCHAR2 (6)  NOT NULL , 
     ALLOWANCE_AMOUNT NUMBER (20,4)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.DOC_ID IS 'this column holds the document to which this detail record belongs.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.ITEM IS 'this column holds the transaction level item that is on the document.  transaction level item means that the item is managed at this level in the merchandising system.  for rms 9, this could be either a pack, fashion sku or staple sku, but this could not be a fashion style.  for rms 10, this must be a transaction level.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.ALLOWANCE_CODE IS 'this column holds the allowance code associated with this document/item combination.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.ALLOWANCE_AMOUNT IS 'this column holds the allowance amount for the document/item combination.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLOWANCE.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_INVOICE_DETAIL_ALLOWANCE_I1';
CREATE INDEX IM_INVOICE_DETAIL_ALLOWANCE_I1 ON IM_INVOICE_DETAIL_ALLOWANCE 
    ( 
     DOC_ID ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_INVOICE_DETAIL_ALLW_TAX';
CREATE TABLE IM_INVOICE_DETAIL_ALLW_TAX 
    ( 
     DOC_ID            NUMBER (10)  NOT NULL , 
     ITEM              VARCHAR2 (25)  NOT NULL , 
     TAX_CODE          VARCHAR2 (6)  NOT NULL , 
     TAX_RATE          NUMBER (20,10)  NOT NULL , 
     TAX_BASIS         NUMBER (20,4)  NOT NULL , 
     TAX_AMOUNT        NUMBER (20,4)  NOT NULL , 
     TAX_FORMULA       VARCHAR2 (500)  NOT NULL , 
     TAX_ORDER         NUMBER (10)  NOT NULL , 
     TAX_FORMULA_TYPE  VARCHAR2 (2) , 
     ALLOWANCE_CODE    VARCHAR2 (6)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL_ALLW_TAX';
ALTER TABLE IM_INVOICE_DETAIL_ALLW_TAX 
    ADD CONSTRAINT CHK_IM_INV_DET_ALL_TX_FORM_TYP 
    CHECK (TAX_FORMULA_TYPE IN ('CL','CO','CR','NC')) 
;


COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.DOC_ID IS 'the document the tax record belongs to.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.ITEM IS 'the item the tax record belongs to.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.TAX_CODE IS 'the tax code for this record.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.TAX_RATE IS 'the tax rate for this record.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.TAX_BASIS IS 'the tax basis this tax was applied to.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.TAX_AMOUNT IS 'the total tax amount calculated from the basis.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.TAX_FORMULA IS 'Tax Basis calculation formula' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.TAX_ORDER IS 'Tax application order' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.TAX_FORMULA_TYPE IS 'Tax Basis calculation formula type' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.ALLOWANCE_CODE IS 'the allowance code for this record' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_ALLW_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_INVOICE_DETAIL_ALLW_TAX';
CREATE UNIQUE INDEX PK_IM_INVOICE_DETAIL_ALLW_TAX ON IM_INVOICE_DETAIL_ALLW_TAX 
    ( 
     DOC_ID ASC , 
     ITEM ASC , 
     TAX_CODE ASC , 
     ALLOWANCE_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_INVOICE_DETAIL_ALLW_TAX';
ALTER TABLE IM_INVOICE_DETAIL_ALLW_TAX 
    ADD CONSTRAINT PK_IM_INVOICE_DETAIL_ALLW_TAX PRIMARY KEY ( DOC_ID, ITEM, TAX_CODE, ALLOWANCE_CODE ) 
    USING INDEX PK_IM_INVOICE_DETAIL_ALLW_TAX ;



PROMPT CREATING TABLE 'IM_INVOICE_DETAIL_TAX';
CREATE TABLE IM_INVOICE_DETAIL_TAX 
    ( 
     DOC_ID            NUMBER (10)  NOT NULL , 
     ITEM              VARCHAR2 (25)  NOT NULL , 
     TAX_CODE          VARCHAR2 (6)  NOT NULL , 
     TAX_RATE          NUMBER (20,10)  NOT NULL , 
     TAX_BASIS         NUMBER (20,4)  NOT NULL , 
     TAX_AMOUNT        NUMBER (20,4)  NOT NULL , 
     TAX_FORMULA       VARCHAR2 (500)  NOT NULL , 
     TAX_ORDER         NUMBER (10)  NOT NULL , 
     TAX_FORMULA_TYPE  VARCHAR2 (2) , 
     REVERSE_VAT_IND   VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL_TAX';
ALTER TABLE IM_INVOICE_DETAIL_TAX 
    ADD CONSTRAINT CHK_IIDT_TAX_FORMULA_TYPE 
    CHECK (TAX_FORMULA_TYPE IN ('CL','CO','CR','NC')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_INVOICE_DETAIL_TAX';
ALTER TABLE IM_INVOICE_DETAIL_TAX 
    ADD CONSTRAINT CHK_IIDT_REV_VAT_IND 
    CHECK ( REVERSE_VAT_IND IN ('Y', 'N')) 
;


COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.DOC_ID IS 'the document this item belongs to.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.ITEM IS 'the item for this detail record.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.TAX_CODE IS 'the tax code for this detail.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.TAX_RATE IS 'the tax rate for this detail.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.TAX_BASIS IS 'the tax basis for this specific detail.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.TAX_AMOUNT IS 'the total tax amount for this detail and tax component combination.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.TAX_FORMULA IS 'the formula used to calculate the tax basis.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.TAX_ORDER IS 'a numeric value indicating the sequence of how the taxes should be applied.   this is essential for calculating taxes that are based on other taxes.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.TAX_FORMULA_TYPE IS 'describes how item cost was considered in the calculation of the tax basis' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.REVERSE_VAT_IND IS 'Indicates if the item is subject to reverse charge VAT at the vat region. Valid values are Y and N.' 
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INVOICE_DETAIL_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_INVOICE_DETAIL_TAX_I1';
CREATE INDEX IM_INVOICE_DETAIL_TAX_I1 ON IM_INVOICE_DETAIL_TAX 
    ( 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'PK_IM_INVOICE_DETAIL_TAX';
CREATE UNIQUE INDEX PK_IM_INVOICE_DETAIL_TAX ON IM_INVOICE_DETAIL_TAX 
    ( 
     DOC_ID ASC , 
     ITEM ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_INVOICE_DETAIL_TAX';
ALTER TABLE IM_INVOICE_DETAIL_TAX 
    ADD CONSTRAINT PK_IM_INVOICE_DETAIL_TAX PRIMARY KEY ( DOC_ID, ITEM, TAX_CODE ) 
    USING INDEX PK_IM_INVOICE_DETAIL_TAX ;




PROMPT CREATING TABLE 'IM_INV_DOCUMENT';
CREATE TABLE IM_INV_DOCUMENT 
    ( 
     INV_ID     NUMBER (10)  NOT NULL , 
     REF_DOC_ID NUMBER (10)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 12 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_INV_DOCUMENT.INV_ID IS 'the invoice being cross referenced.' 
;

COMMENT ON COLUMN IM_INV_DOCUMENT.REF_DOC_ID IS 'the document referencing the invoice.' 
;

COMMENT ON COLUMN IM_INV_DOCUMENT.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INV_DOCUMENT.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INV_DOCUMENT.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INV_DOCUMENT.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INV_DOCUMENT.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_INV_DOCUMENT';
CREATE UNIQUE INDEX PK_IM_INV_DOCUMENT ON IM_INV_DOCUMENT 
    ( 
     INV_ID ASC , 
     REF_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_INV_DOCUMENT_I2';
CREATE INDEX IM_INV_DOCUMENT_I2 ON IM_INV_DOCUMENT 
    ( 
     REF_DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_INV_DOCUMENT';
ALTER TABLE IM_INV_DOCUMENT 
    ADD CONSTRAINT PK_IM_INV_DOCUMENT PRIMARY KEY ( INV_ID, REF_DOC_ID ) 
    USING INDEX PK_IM_INV_DOCUMENT ;




PROMPT CREATING TABLE 'IM_ITEM_TAX_AUDIT';
CREATE TABLE IM_ITEM_TAX_AUDIT 
    ( 
     DOC_ID             NUMBER (10)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     ORDER_NO           NUMBER (12)  NOT NULL , 
     TAX_CODE           VARCHAR2 (6)  NOT NULL , 
     SYS_TAX_RATE       NUMBER (20,10) , 
     SYS_TAX_AMOUNT     NUMBER (20,4) , 
     SYS_TAX_FORMULA    VARCHAR2 (500) , 
     SYS_TAX_ORDER      NUMBER (10) , 
     DOC_TAX_RATE       NUMBER (20,10) , 
     DOC_TAX_AMOUNT     NUMBER (20,4) , 
     DOC_TAX_FORMULA    VARCHAR2 (500) , 
     DOC_TAX_ORDER      NUMBER (10) , 
     CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
	 LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.DOC_ID IS 'the document containing the tax code discrepancy.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.ITEM IS 'the discrepant item.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.ORDER_NO IS 'the order for the document.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.TAX_CODE IS 'the tax code the system was expecting.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.SYS_TAX_RATE IS 'the tax rate the system was expecting.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.SYS_TAX_AMOUNT IS 'the tax amount according to the system.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.SYS_TAX_FORMULA IS 'the formula used to calculate the system tax basis.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.SYS_TAX_ORDER IS 'a numeric value indicating the sequence of how the system taxes should be applied.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.DOC_TAX_RATE IS 'the tax rate on the document that was used.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.DOC_TAX_AMOUNT IS 'the tax amount according to the document.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.DOC_TAX_FORMULA IS 'the formula used to calculate the document tax basis.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.DOC_TAX_ORDER IS 'a numeric value indicating the sequence of how the document taxes should be applied.' 
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_ITEM_TAX_AUDIT.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_ITEM_VAT_AUDIT';
CREATE TABLE IM_ITEM_VAT_AUDIT 
    ( 
     ITEM            VARCHAR2 (25)  NOT NULL , 
     DOC_ID          NUMBER (10)  NOT NULL , 
     VAT_CODE        VARCHAR2 (6) , 
     VAT_RATE        NUMBER (20,10) , 
     VAT_CODE_USED   VARCHAR2 (6)  NOT NULL , 
     VAT_RATE_USED   NUMBER (20,10)  NOT NULL , 
     CREATE_ID       VARCHAR2 (30)  NOT NULL , 
     CREATE_DATETIME DATE  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.ITEM IS 'the item id' 
;

COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.DOC_ID IS 'the document id' 
;

COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.VAT_CODE IS 'the vat code' 
;

COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.VAT_RATE IS 'the vat rate' 
;

COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.VAT_CODE_USED IS 'the vat code been used' 
;

COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.VAT_RATE_USED IS 'the vat rate being used' 
;

COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.CREATE_ID IS 'the id of creator' 
;

COMMENT ON COLUMN IM_ITEM_VAT_AUDIT.CREATE_DATETIME IS 'the creation time' 
;



PROMPT CREATING TABLE 'IM_MANUAL_GROUPS';
CREATE TABLE IM_MANUAL_GROUPS 
    ( 
     GROUP_ID 		   NUMBER (10)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_MANUAL_GROUPS.GROUP_ID IS 'id of group of unmatched invoices and receipts' 
;

COMMENT ON COLUMN IM_MANUAL_GROUPS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MANUAL_GROUPS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MANUAL_GROUPS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MANUAL_GROUPS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MANUAL_GROUPS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MANUAL_GROUPS';
CREATE UNIQUE INDEX PK_IM_MANUAL_GROUPS ON IM_MANUAL_GROUPS 
    ( 
     GROUP_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MANUAL_GROUPS';
ALTER TABLE IM_MANUAL_GROUPS 
    ADD CONSTRAINT PK_IM_MANUAL_GROUPS PRIMARY KEY ( GROUP_ID ) 
    USING INDEX PK_IM_MANUAL_GROUPS ;




PROMPT CREATING TABLE 'IM_MANUAL_GROUP_INVOICES';
CREATE TABLE IM_MANUAL_GROUP_INVOICES 
    ( 
     GROUP_ID          NUMBER (10)  NOT NULL , 
     DOC_ID        	   NUMBER (10)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_MANUAL_GROUP_INVOICES.GROUP_ID IS 'group id from parent table im_manual_groups' 
;

COMMENT ON COLUMN IM_MANUAL_GROUP_INVOICES.DOC_ID is 'this column contains the invoice id that the matched invoice line is part of.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_INVOICES.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_INVOICES.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_INVOICES.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_INVOICES.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_INVOICES.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MANUAL_GROUP_INVOICES';
CREATE UNIQUE INDEX PK_IM_MANUAL_GROUP_INVOICES ON IM_MANUAL_GROUP_INVOICES 
    ( 
     GROUP_ID ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING INDEX 'IM_MANUAL_GROUP_INVOICES_I1';
CREATE INDEX IM_MANUAL_GROUP_INVOICES_I1 ON IM_MANUAL_GROUP_INVOICES 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MANUAL_GROUP_INVOICES';
ALTER TABLE IM_MANUAL_GROUP_INVOICES 
    ADD CONSTRAINT PK_IM_MANUAL_GROUP_INVOICES PRIMARY KEY ( GROUP_ID, DOC_ID ) 
    USING INDEX PK_IM_MANUAL_GROUP_INVOICES ;




PROMPT CREATING TABLE 'IM_MANUAL_GROUP_RECEIPTS';
CREATE TABLE IM_MANUAL_GROUP_RECEIPTS 
    ( 
     GROUP_ID          NUMBER (10)  NOT NULL , 
     SHIPMENT          NUMBER (12)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_MANUAL_GROUP_RECEIPTS.GROUP_ID IS 'group id from parent table im_manual_groups' 
;

COMMENT ON COLUMN IM_MANUAL_GROUP_RECEIPTS.SHIPMENT IS 'shimpment belonging to the group' 
;

COMMENT ON COLUMN IM_MANUAL_GROUP_RECEIPTS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_RECEIPTS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_RECEIPTS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_RECEIPTS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MANUAL_GROUP_RECEIPTS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MANUAL_GROUP_RECEIPTS';
CREATE UNIQUE INDEX PK_IM_MANUAL_GROUP_RECEIPTS ON IM_MANUAL_GROUP_RECEIPTS 
    ( 
     GROUP_ID ASC , 
     SHIPMENT ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MANUAL_GROUP_RECEIPTS';
ALTER TABLE IM_MANUAL_GROUP_RECEIPTS 
    ADD CONSTRAINT PK_IM_MANUAL_GROUP_RECEIPTS PRIMARY KEY ( GROUP_ID, SHIPMENT ) 
    USING INDEX PK_IM_MANUAL_GROUP_RECEIPTS ;




PROMPT CREATING TABLE 'IM_MATCH_COST_VAR';
CREATE TABLE IM_MATCH_COST_VAR 
    ( 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     DISC_ID              NUMBER (10) , 
     AMOUNT               NUMBER (20,4)  NOT NULL , 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     QUANTITY             NUMBER (20,4)  NOT NULL , 
     QTY_SRC_TYPE         VARCHAR2 (30)  NOT NULL , 
     WITHIN_TOLERANCE     VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY  	      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE        DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE     DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID    NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_COST_VAR';
ALTER TABLE IM_MATCH_COST_VAR 
    ADD CONSTRAINT CHK_IM_MATCH_COST_VAR_W_TOLERA 
    CHECK (WITHIN_TOLERANCE IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_COST_VAR';
ALTER TABLE IM_MATCH_COST_VAR 
    ADD CONSTRAINT CHK_IMCV_WTOL_DISC 
    CHECK ((within_tolerance = 'N' and disc_id is not null)
or (within_tolerance = 'Y'and disc_id is null))
;


COMMENT ON COLUMN IM_MATCH_COST_VAR.PROCESS_ID IS 'this column holds the id of the automatch batch process that generated the discrepancy.' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.DISC_ID IS 'this column holds cost discrepancy id.' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.MATCH_POOL_RESULT_ID IS 'the match pool result at detail level that caused the row to be created.' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.QUANTITY IS 'the quantity of unit cost discrepancy.' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.QTY_SRC_TYPE IS 'the document type where the quantity was taken from.' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MATCH_COST_VAR';
CREATE UNIQUE INDEX PK_IM_MATCH_COST_VAR ON IM_MATCH_COST_VAR 
    ( 
     PROCESS_ID ASC , 
     MATCH_POOL_RESULT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_COST_VAR';
ALTER TABLE IM_MATCH_COST_VAR 
    ADD CONSTRAINT PK_IM_MATCH_COST_VAR PRIMARY KEY ( PROCESS_ID, MATCH_POOL_RESULT_ID ) 
    USING INDEX PK_IM_MATCH_COST_VAR ;




PROMPT CREATING TABLE 'IM_MATCH_COST_VAR_HIST';
CREATE TABLE IM_MATCH_COST_VAR_HIST 
    ( 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     DISC_ID              NUMBER (10) , 
     AMOUNT               NUMBER (20,4)  NOT NULL , 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     QUANTITY             NUMBER (20,4)  NOT NULL , 
     QTY_SRC_TYPE         VARCHAR2 (30)  NOT NULL , 
     WITHIN_TOLERANCE     VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY  	      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE        DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE     DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID    NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_COST_VAR_HIST';
ALTER TABLE IM_MATCH_COST_VAR_HIST 
    ADD CONSTRAINT CHK_IMCVH_WITHIN_TOLERANCE 
    CHECK (WITHIN_TOLERANCE IN ('N','Y')) 
;


COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.PROCESS_ID IS 'the unique id associated with the matching process itself.' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.DISC_ID IS 'the unique discrepancy id this row represents (if any).' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.AMOUNT IS 'the variance amount.' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.MATCH_POOL_RESULT_ID IS 'the match pool result at detail level that caused the row to be created' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.QUANTITY IS 'the quantity of unit cost discrepancy' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.QTY_SRC_TYPE IS 'the document type where the quantity was taken from' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.WITHIN_TOLERANCE IS 'y - if variance indicated in the row is within tolerance.   n if otherwise' 
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_COST_VAR_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_MATCH_DOC';
CREATE TABLE IM_MATCH_DOC 
    ( 
     PROCESS_ID        NUMBER (10)  NOT NULL , 
     DOC_REF           NUMBER (10)  NOT NULL , 
     DOC_TYPE          VARCHAR2 (30)  NOT NULL , 
     POOL_KEY          VARCHAR2 (150)  NOT NULL , 
     SUPPLIER          NUMBER (10)  NOT NULL , 
     CONFIG_ID         NUMBER (10)  NOT NULL , 
     SUPPLIER_GROUP    NUMBER (10) , 
     MATCH_LEVEL       VARCHAR2 (30) , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_DOC';
ALTER TABLE IM_MATCH_DOC 
    ADD CONSTRAINT CHK_IM_MATCH_DOC_DOC_TYPE 
    CHECK (DOC_TYPE IN ('CRDNRC','CRDNRQ','CRDNRT','CRDNT','MRCHI','RCPT')) 
;


COMMENT ON COLUMN IM_MATCH_DOC.PROCESS_ID IS 'contains the unique id of the batch run that populated this row.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.DOC_REF IS 'this is the document number this row represents.  typically im_doc_head.doc_id but could be something else like shipment.shipment.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.DOC_TYPE IS 'the type of document this reference refers to.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.POOL_KEY IS 'the actual key value that will be used for matching.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.SUPPLIER IS 'the supplier this document belongs to.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.CONFIG_ID IS 'the pool configuration id that caused this row to be populated.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.SUPPLIER_GROUP IS 'this column holds the supplier group (if any) that the document supplier belongs to.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.MATCH_LEVEL IS 'the match level (e.g. summary.match, detail.match, one.to.one) the document was successfully matched at.' 
;

COMMENT ON COLUMN IM_MATCH_DOC.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_DOC.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_DOC.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_DOC.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_DOC.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MATCH_DOC';
CREATE UNIQUE INDEX PK_IM_MATCH_DOC ON IM_MATCH_DOC 
    ( 
     PROCESS_ID ASC , 
     DOC_REF ASC , 
     DOC_TYPE ASC , 
     POOL_KEY ASC , 
     SUPPLIER ASC , 
     CONFIG_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_DOC';
ALTER TABLE IM_MATCH_DOC 
    ADD CONSTRAINT PK_IM_MATCH_DOC PRIMARY KEY ( PROCESS_ID, DOC_REF, DOC_TYPE, POOL_KEY, SUPPLIER, CONFIG_ID ) 
    USING INDEX PK_IM_MATCH_DOC ;




PROMPT CREATING TABLE 'IM_MATCH_DOC_HIST';
CREATE TABLE IM_MATCH_DOC_HIST 
    ( 
     PROCESS_ID         NUMBER (10)  NOT NULL , 
     DOC_REF            NUMBER (10)  NOT NULL , 
     DOC_TYPE           VARCHAR2 (30)  NOT NULL , 
     POOL_KEY           VARCHAR2 (150)  NOT NULL , 
     SUPPLIER           NUMBER (10)  NOT NULL , 
     CONFIG_ID          NUMBER (10)  NOT NULL , 
     SUPPLIER_GROUP     NUMBER (10) , 
     MATCH_LEVEL        VARCHAR2 (30) ,
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_DOC_HIST';
ALTER TABLE IM_MATCH_DOC_HIST 
    ADD CONSTRAINT CHK_IM_MATCH_DOC_HIST_DOC_TYPE 
    CHECK (DOC_TYPE IN ('CRDNRC','CRDNRQ','CRDNRT','CRDNT','MRCHI','RCPT')) 
;


COMMENT ON COLUMN IM_MATCH_DOC_HIST.PROCESS_ID IS 'contains the unique id of the batch process that generated this match.' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.DOC_REF IS 'contains the document reference this match refers to.  could be im_doc_head.doc_id or shipment.shipment for example.' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.DOC_TYPE IS 'the type of document that this entry represents.' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.POOL_KEY IS 'the actual key that was used to obtain the match.' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.SUPPLIER IS 'the supplier this document belongs to.' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.CONFIG_ID IS 'the configuration id that was used to obtain this match.' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.SUPPLIER_GROUP IS 'this column holds the supplier group that the document supplier belongs to (if any).' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.MATCH_LEVEL IS 'the match level (e.g. summary.match, detail.match, one.to.one) the document was successfully matched at.' 
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_DOC_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MATCH_DOC_HIST';
CREATE UNIQUE INDEX PK_IM_MATCH_DOC_HIST ON IM_MATCH_DOC_HIST 
    ( 
     PROCESS_ID ASC , 
     DOC_REF ASC , 
     DOC_TYPE ASC , 
     POOL_KEY ASC , 
     SUPPLIER ASC , 
     CONFIG_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_DOC_HIST';
ALTER TABLE IM_MATCH_DOC_HIST 
    ADD CONSTRAINT PK_IM_MATCH_DOC_HIST PRIMARY KEY ( PROCESS_ID, DOC_REF, DOC_TYPE, POOL_KEY, SUPPLIER, CONFIG_ID ) 
    USING INDEX PK_IM_MATCH_DOC_HIST ;




PROMPT CREATING TABLE 'IM_MATCH_POOL_CONFIG';
CREATE TABLE IM_MATCH_POOL_CONFIG 
    ( 
     CONFIG_ID         NUMBER (10)  NOT NULL , 
     MATCH_TYPE        VARCHAR2 (30)  NOT NULL , 
     PRIORITY          NUMBER (10)  NOT NULL , 
     KEY_ATTRIBUTES    VARCHAR2 (60)  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_POOL_CONFIG';
ALTER TABLE IM_MATCH_POOL_CONFIG 
    ADD CONSTRAINT CHK_IM_MATCH_POOL_CON_MATCH_TY 
    CHECK ( MATCH_TYPE IN ('CRDNT-CRDNRQ', 'MRCHI-RCPT')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_POOL_CONFIG';
ALTER TABLE IM_MATCH_POOL_CONFIG 
    ADD CONSTRAINT CHK_IM_MATCH_POOL_CON_KEY_ATTR 
    CHECK ( KEY_ATTRIBUTES
IN ('CREDIT_NOTE_REQUEST_ID', 'ORIGINAL_INVOICE_ID', 'PO_LOCATION')) 
;


COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.CONFIG_ID IS 'the unique indentifier for this configuration.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.MATCH_TYPE IS 'the type of match this configuration is to be performed.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.PRIORITY IS 'the priority this configuration is to run at within the given match type.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.KEY_ATTRIBUTES IS 'the document attributes to compare as part of this match configuration.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_POOL_CONFIG.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MATCH_POOL_CONFIG';
CREATE UNIQUE INDEX PK_IM_MATCH_POOL_CONFIG ON IM_MATCH_POOL_CONFIG 
    ( 
     CONFIG_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'UK_IM_MATCH_POOL_CONFIG';
CREATE UNIQUE INDEX UK_IM_MATCH_POOL_CONFIG ON IM_MATCH_POOL_CONFIG 
    ( 
     MATCH_TYPE ASC , 
     PRIORITY ASC , 
     KEY_ATTRIBUTES ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_POOL_CONFIG';
ALTER TABLE IM_MATCH_POOL_CONFIG 
    ADD CONSTRAINT PK_IM_MATCH_POOL_CONFIG PRIMARY KEY ( CONFIG_ID ) 
    USING INDEX PK_IM_MATCH_POOL_CONFIG ;


PROMPT CREATING UNIQUE KEY ON 'IM_MATCH_POOL_CONFIG';
ALTER TABLE IM_MATCH_POOL_CONFIG 
    ADD CONSTRAINT UK_IM_MATCH_POOL_CONFIG UNIQUE ( MATCH_TYPE , PRIORITY , KEY_ATTRIBUTES ) 
    USING INDEX UK_IM_MATCH_POOL_CONFIG ;




PROMPT CREATING TABLE 'IM_MATCH_POOL_ITEM';
CREATE TABLE IM_MATCH_POOL_ITEM 
    ( 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     MATCH_SIDE           VARCHAR2 (3)  NOT NULL , 
     DOC_TYPE             VARCHAR2 (30)  NOT NULL , 
     DOC_ID               NUMBER (10)  NOT NULL , 
     ITEM                 VARCHAR2 (25)  NOT NULL , 
     QTY                  NUMBER (20,4)  NOT NULL , 
     UNIT_COST            NUMBER (20,4)  NOT NULL , 
     REASON_CODE          VARCHAR2 (6) ,
	 CREATED_BY  	      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE        DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE     DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID    NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_POOL_ITEM';
ALTER TABLE IM_MATCH_POOL_ITEM 
    ADD CONSTRAINT CHK_IMPI_MATCH_SIDE 
    CHECK (match_side IN ('LHS','RHS')) 
;


COMMENT ON COLUMN IM_MATCH_POOL_ITEM.PROCESS_ID IS 'the match process that caused the row to be created.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.MATCH_POOL_RESULT_ID IS 'the match pool result that created the row.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.MATCH_SIDE IS 'lhs  if document item is on the left hand side of the match,  rhs if on right-hand-side.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.DOC_TYPE IS 'the document type of the referenced document' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.DOC_ID is 'the document reference of the item matched.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.ITEM IS 'the item matched at the detail level.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.QTY IS 'the quantity of the item being matched.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.UNIT_COST IS 'the unit cost of the item being matched.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.REASON_CODE IS 'populated with the reason code associated with the item when matching resolution documents (e.g. credit notes, credit note requests)' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_MATCH_POOL_ITEM_I1';
CREATE INDEX IM_MATCH_POOL_ITEM_I1 ON IM_MATCH_POOL_ITEM 
    ( 
     PROCESS_ID ASC , 
     MATCH_POOL_RESULT_ID ASC , 
     MATCH_SIDE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_MATCH_POOL_ITEM_HIST';
CREATE TABLE IM_MATCH_POOL_ITEM_HIST 
    ( 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     MATCH_SIDE           VARCHAR2 (3)  NOT NULL , 
     DOC_TYPE             VARCHAR2 (30)  NOT NULL , 
     DOC_ID               NUMBER (10)  NOT NULL , 
     ITEM                 VARCHAR2 (25)  NOT NULL , 
     QTY                  NUMBER (20,4)  NOT NULL , 
     UNIT_COST            NUMBER (20,4)  NOT NULL , 
     REASON_CODE          VARCHAR2 (6) , 
	 CREATED_BY  	      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE        DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE     DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID    NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.PROCESS_ID IS 'the match process that caused the row to be created' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.MATCH_POOL_RESULT_ID IS ' the match pool result that created the row' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.MATCH_SIDE IS 'lhs  if document item is on the left hand side of the match,  rhs if on right-hand-side.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.DOC_TYPE IS 'the document type of the referenced document' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.DOC_ID is 'the document reference of the item matched.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.ITEM IS 'the item matched at the detail level' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.QTY IS 'the quantity of the item matched' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.UNIT_COST IS 'the unit cost of the item' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.REASON_CODE IS 'the reason code associated with the item from the table im_doc_detail_reason_codes' 
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_POOL_ITEM_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_MATCH_POOL_RESULTS';
CREATE TABLE IM_MATCH_POOL_RESULTS 
    ( 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     SUPPLIER             NUMBER (30)  NOT NULL , 
     CONFIG_ID            NUMBER (10)  NOT NULL , 
     POOL_KEY             VARCHAR2 (150)  NOT NULL , 
     MATCH_LEVEL          VARCHAR2 (30)  NOT NULL , 
     MATCH_DATE           DATE  NOT NULL , 
     ITEM                 VARCHAR2 (25) , 
     LHS_DOC_ID           NUMBER (10) , 
     LHS_TOTAL_COST       NUMBER (20,4) , 
     LHS_TOTAL_QTY        NUMBER (20,4) , 
     RHS_TOTAL_COST       NUMBER (20,4) , 
     RHS_TOTAL_QTY        NUMBER (20,4) , 
     TOTAL_COST_VAR       NUMBER (20,4) , 
     TOTAL_QTY_VAR        NUMBER (20,4) , 
     COST_VAR_FAVOR_OF    VARCHAR2 (6) , 
     QTY_VAR_FAVOR_OF     VARCHAR2 (6) , 
     IS_COST_VWT          VARCHAR2 (1) , 
     IS_QTY_VWT           VARCHAR2 (1) , 
     SUCCESS_MATCH_ID     NUMBER (10) , 
     RESULT_TXT           VARCHAR2 (150) , 
     RHS_DOC_ID           NUMBER (10) , 
	 CREATED_BY  	      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE        DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE     DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID    NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.MATCH_POOL_RESULT_ID IS 'unique identifier for a row in this table.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.PROCESS_ID IS 'the match process id that caused the row to be populated.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.SUPPLIER IS 'he supplier owning this row.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.CONFIG_ID IS 'the match pool configuration from which the pool key of this row was derived from.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.POOL_KEY IS 'the match pool key.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.MATCH_LEVEL IS 'the match level that caused the row to be created.  either summary, one_to_one or line' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.MATCH_DATE IS 'the date when the row was created.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.ITEM IS 'the item id owning this row.    this is only populated if match_level = line' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.LHS_DOC_ID IS 'the document id owning this row.   this is only populated if match_level = one_to_one' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.LHS_TOTAL_COST IS 'the total extended cost of the documents on the left-hand-side of the match.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.LHS_TOTAL_QTY IS 'the total quantity of the documents on the left-hand-side of the match.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.RHS_TOTAL_COST IS 'the total extended cost of the documents on the right-hand-side of the match.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.RHS_TOTAL_QTY IS 'the total quantity of the documents on the right-hand-side of the match.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.TOTAL_COST_VAR IS 'the total extended cost variance between the documents on left and right hand side of the match within the pool key.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.TOTAL_QTY_VAR IS 'the total quantity variance between the documents on left and right hand side of the match within the pool key.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.COST_VAR_FAVOR_OF IS 'ret if cost variance favors the retailer, supp if favoring the supplier' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.QTY_VAR_FAVOR_OF IS 'ret if quantity variance favors the retailer, supp if favoring the supplier' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.IS_COST_VWT IS 'y if total cost variance with within tolerance' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.IS_QTY_VWT IS 'y if total quantity variance is within tolerance' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.SUCCESS_MATCH_ID IS 'if the match is successful for the pool,   then a match id is generated.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.RESULT_TXT IS 'a place to include errors, warnings, or informational text regarding the pool match.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.RHS_DOC_ID IS 'the doc reference in the right hand side of the match.  populated only  if match_level = one_to_one' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MATCH_POOL_RESULTS';
CREATE UNIQUE INDEX PK_IM_MATCH_POOL_RESULTS ON IM_MATCH_POOL_RESULTS 
    ( 
     MATCH_POOL_RESULT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_MATCH_POOL_RESULTS_I1';
CREATE INDEX IM_MATCH_POOL_RESULTS_I1 ON IM_MATCH_POOL_RESULTS 
    ( 
     PROCESS_ID ASC , 
     SUPPLIER ASC , 
     CONFIG_ID ASC , 
     POOL_KEY ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_POOL_RESULTS';
ALTER TABLE IM_MATCH_POOL_RESULTS 
    ADD CONSTRAINT PK_IM_MATCH_POOL_RESULTS PRIMARY KEY ( MATCH_POOL_RESULT_ID ) 
    USING INDEX PK_IM_MATCH_POOL_RESULTS ;




PROMPT CREATING TABLE 'IM_MATCH_POOL_RESULTS_HIST';
CREATE TABLE IM_MATCH_POOL_RESULTS_HIST 
    ( 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     SUPPLIER             NUMBER (30)  NOT NULL , 
     CONFIG_ID            NUMBER (10)  NOT NULL , 
     POOL_KEY             VARCHAR2 (150)  NOT NULL , 
     MATCH_LEVEL          VARCHAR2 (30)  NOT NULL , 
     MATCH_DATE           DATE  NOT NULL , 
     ITEM                 VARCHAR2 (25) , 
     LHS_DOC_ID           NUMBER (10) , 
     LHS_TOTAL_COST       NUMBER (20,4) , 
     LHS_TOTAL_QTY        NUMBER (20,4) , 
     RHS_TOTAL_COST       NUMBER (20,4) , 
     RHS_TOTAL_QTY        NUMBER (20,4) , 
     TOTAL_COST_VAR       NUMBER (20,4) , 
     TOTAL_QTY_VAR        NUMBER (20,4) , 
     COST_VAR_FAVOR_OF    VARCHAR2 (6) , 
     QTY_VAR_FAVOR_OF     VARCHAR2 (6) , 
     IS_COST_VWT          VARCHAR2 (1) , 
     IS_QTY_VWT           VARCHAR2 (1) , 
     SUCCESS_MATCH_ID     NUMBER (10) , 
     RESULT_TXT           VARCHAR2 (150) , 
     RHS_DOC_ID           NUMBER (10) , 
	 CREATED_BY 		  VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		  DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	  VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	  DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	  NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.MATCH_POOL_RESULT_ID IS 'unique identifier for a row in this table' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.PROCESS_ID IS 'the match process id that caused the row to be populated.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.SUPPLIER IS ' the supplier owning this row' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.CONFIG_ID IS 'the match pool configuration from which the pool key of this row was derived from' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.POOL_KEY IS 'the match pool key' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.MATCH_LEVEL IS 'the match level that caused the row to be created.  either summary, one_to_one or line' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.MATCH_DATE IS 'the date when the row was created' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.ITEM IS 'the item id owning this row.    this is only populated if match_level = line' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.LHS_DOC_ID IS 'the document id owning this row.   this is only populated if match_level = one_to_one' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.LHS_TOTAL_COST IS 'the total extended cost of the documents on the left-hand-side of the match' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.LHS_TOTAL_QTY IS 'the total quantity of the documents on the left-hand-side of the match' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.RHS_TOTAL_COST IS 'the total extended cost of the documents on the right-hand-side of the match' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.RHS_TOTAL_QTY IS 'the total quantity of the documents on the right-hand-side of the match' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.TOTAL_COST_VAR IS 'the total extended cost variance between the documents on left and right hand side of the match within the pool key.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.TOTAL_QTY_VAR IS 'the total quantity variance between the documents on left and right hand side of the match within the pool key.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.COST_VAR_FAVOR_OF IS 'ret if cost variance favors the retailer, supp if favoring the supplier' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.QTY_VAR_FAVOR_OF IS 'ret if quantity variance favors the retailer, supp if favoring the supplier' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.IS_COST_VWT IS ' y if total cost variance with within tolerance' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.IS_QTY_VWT IS 'y if total quantity variance is within tolerance' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.SUCCESS_MATCH_ID IS ' if the match is successful for the pool,   then a match id is generated' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.RESULT_TXT IS ' a place to include errors, warnings, or informational text regarding the pool match.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.RHS_DOC_ID IS 'the doc reference in the right hand side of the match.  populated only  if match_level = one_to_one' 
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_POOL_RESULTS_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_MATCH_POOL_TOLERANCES';
CREATE TABLE IM_MATCH_POOL_TOLERANCES 
    ( 
     PROCESS_ID              NUMBER (10)  NOT NULL , 
     POOL_KEY                VARCHAR2 (150)  NOT NULL , 
     TOL_OWNER_TYPE          VARCHAR2 (30)  NOT NULL , 
     TOL_OWNER               VARCHAR2 (30) , 
     TOL_KEY                 NUMBER (10)  NOT NULL , 
     SUPPLIER                NUMBER (10)  NOT NULL , 
     COST_QUANTITY_IND       VARCHAR2 (1)  NOT NULL , 
     SUMMARY_LINE_IND        VARCHAR2 (1)  NOT NULL , 
     TOLERANCE_DOCUMENT_TYPE VARCHAR2 (6)  NOT NULL , 
     LOWER_LIMIT_INCLUSIVE   NUMBER (20,4)  NOT NULL , 
     UPPER_LIMIT_EXCLUSIVE   NUMBER (20,4)  NOT NULL , 
     FAVOR_OF                VARCHAR2 (6)  NOT NULL , 
     TOL_VALUE_TYPE          VARCHAR2 (6)  NOT NULL , 
     TOL_VALUE               NUMBER (20,4)  NOT NULL , 
     CONFIG_ID               NUMBER (10)  NOT NULL , 
	 CREATED_BY  	         VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE           DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY         VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE        DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID       NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.PROCESS_ID IS 'the match process id owning the row.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.POOL_KEY IS 'the match pool key owning the row' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.TOL_OWNER_TYPE IS 'the level from which the tolerance values in the row are derived from :  supplier, department or system' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.TOL_OWNER IS 'the department or supplier owning the row.  null if system.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.TOL_KEY IS 'the reference to the im_tolerance% table from which the row was derived.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.SUPPLIER IS 'the owning supplier' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.COST_QUANTITY_IND IS 'c if tolerance is for cost, q for quantity' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.SUMMARY_LINE_IND IS 's if tolerance is for summary matches , l for line level matches' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.TOLERANCE_DOCUMENT_TYPE IS 'the document type for which the tolerance applies.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.LOWER_LIMIT_INCLUSIVE IS 'the lower limit range of the discrepancy for which the tolerance applies.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.UPPER_LIMIT_EXCLUSIVE IS 'the upper limit range (exclusive) for which the tolerance applies.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.FAVOR_OF IS 'ret if discrepancy favors the retailer,  supp if favoring the supplier.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.TOL_VALUE_TYPE IS 'the tolerance type - percent or amount' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.TOL_VALUE IS 'the tolerance value.' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.CONFIG_ID IS 'the pool key config that owns the tolerance information' 
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_POOL_TOLERANCES.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING TABLE 'IM_MATCH_QTY_VAR';
CREATE TABLE IM_MATCH_QTY_VAR 
    ( 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     DISC_ID              NUMBER (10) , 
     QTY                  NUMBER (20,4)  NOT NULL , 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     UNIT_COST            NUMBER (20,4)  NOT NULL , 
     UNIT_COST_SRC_TYPE   VARCHAR2 (30)  NOT NULL , 
     WITHIN_TOLERANCE     VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY  	      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE        DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY      VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE     DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID    NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_QTY_VAR';
ALTER TABLE IM_MATCH_QTY_VAR 
    ADD CONSTRAINT CHK_IM_MATCH_QTY_VAR_W_TOLERAN 
    CHECK (WITHIN_TOLERANCE IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_QTY_VAR';
ALTER TABLE IM_MATCH_QTY_VAR 
    ADD CONSTRAINT CHK_IMQV_WTOL_DISC 
    CHECK ((within_tolerance = 'N' and disc_id is not null)
or (within_tolerance = 'Y' and disc_id is null))
;


COMMENT ON COLUMN IM_MATCH_QTY_VAR.PROCESS_ID IS 'this column holds the id of the automatch batch process that generated the discrepancy.' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.DISC_ID IS 'this column holds the discrepancy id.' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.MATCH_POOL_RESULT_ID IS 'the match pool result at detail level that caused this row to be created.' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.UNIT_COST IS 'the unit cost of the quantity discrepancy.' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.UNIT_COST_SRC_TYPE IS 'the document type (im_doc_head) where the unit cost was derived from.' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_MATCH_QTY_VAR';
CREATE UNIQUE INDEX PK_IM_MATCH_QTY_VAR ON IM_MATCH_QTY_VAR 
    ( 
     PROCESS_ID ASC , 
     MATCH_POOL_RESULT_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_QTY_VAR';
ALTER TABLE IM_MATCH_QTY_VAR 
    ADD CONSTRAINT PK_IM_MATCH_QTY_VAR PRIMARY KEY ( PROCESS_ID, MATCH_POOL_RESULT_ID ) 
    USING INDEX PK_IM_MATCH_QTY_VAR ;




PROMPT CREATING TABLE 'IM_MATCH_QTY_VAR_HIST';
CREATE TABLE IM_MATCH_QTY_VAR_HIST 
    ( 
     PROCESS_ID           NUMBER (10)  NOT NULL , 
     DISC_ID              NUMBER (10) , 
     QTY                  NUMBER (20,4)  NOT NULL , 
     MATCH_POOL_RESULT_ID NUMBER (10)  NOT NULL , 
     UNIT_COST            NUMBER (20,4)  NOT NULL , 
     UNIT_COST_SRC_TYPE   VARCHAR2 (30)  NOT NULL , 
     WITHIN_TOLERANCE     VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY 		  VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		  DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	  VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	  DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	  NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_QTY_VAR_HIST';
ALTER TABLE IM_MATCH_QTY_VAR_HIST 
    ADD CONSTRAINT CHK_IMQVH_WITHIN_TOLERANCE 
    CHECK (within_tolerance IN ('N','Y')) 
;


COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.PROCESS_ID IS 'the unique id associated with the matching process itself' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.DISC_ID IS 'the unique discrepancy id this row represents (if any).' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.QTY is 'the variance quantity'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.MATCH_POOL_RESULT_ID IS 'the match pool result at detail level that caused this row to be created' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.UNIT_COST IS 'the unit cost of the quantity discrepancy' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.UNIT_COST_SRC_TYPE IS 'the document type (im_doc_head) where the unit cost was derived from' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.WITHIN_TOLERANCE IS 'if variance indicated in the row is within tolerance.   n if otherwise' 
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_QTY_VAR_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_ORDER_ITEM_TAX_AUDIT';
CREATE TABLE IM_ORDER_ITEM_TAX_AUDIT 
    ( 
     DOC_ID             NUMBER (10)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     ORDER_NO           NUMBER (12)  NOT NULL , 
     TAX_CODE           VARCHAR2 (6)  NOT NULL , 
     ORD_TAX_RATE       NUMBER (20,10) , 
     ORD_TAX_AMOUNT     NUMBER (20,4) , 
     ORD_TAX_FORMULA    VARCHAR2 (500) , 
     ORD_TAX_ORDER      NUMBER (10) , 
     DOC_TAX_RATE       NUMBER (20,10) , 
     DOC_TAX_AMOUNT     NUMBER (20,4) , 
     DOC_TAX_FORMULA    VARCHAR2 (500) , 
     DOC_TAX_ORDER      NUMBER (10) , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 	 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.DOC_ID IS 'document id' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.ITEM IS 'item number' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.ORDER_NO IS 'order number' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.TAX_CODE IS 'tax code' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.ORD_TAX_RATE IS 'order tax rate' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.ORD_TAX_AMOUNT IS 'order tax amount' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.ORD_TAX_FORMULA IS 'order tax basis formula' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.ORD_TAX_ORDER IS 'order tax application order' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.DOC_TAX_RATE IS 'document tax rate' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.DOC_TAX_AMOUNT IS 'document tax amount' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.DOC_TAX_FORMULA IS 'document tax basis formula' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.DOC_TAX_ORDER IS 'document tax application order' 
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_ORDER_ITEM_TAX_AUDIT.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_PARTIALLY_MATCHED_RECEIPTS';
CREATE TABLE IM_PARTIALLY_MATCHED_RECEIPTS 
    ( 
     SHIPMENT           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     QTY_MATCHED        NUMBER (12,4)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.SHIPMENT IS 'this contains the shipment id for the receipt item.' 
;

COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.ITEM IS 'this contains the item for the receipt item.' 
;

COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.QTY_MATCHED IS 'this coulmn holds the quantity already invoice matched for the receipt item.' 
;

COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_PARTIALLY_MATCHED_RECEIPTS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_PART_MATCHED_RECEIPTS';
CREATE UNIQUE INDEX PK_IM_PART_MATCHED_RECEIPTS ON IM_PARTIALLY_MATCHED_RECEIPTS 
    ( 
     SHIPMENT ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_PARTIALLY_MATCHED_RECEIPTS';
ALTER TABLE IM_PARTIALLY_MATCHED_RECEIPTS 
    ADD CONSTRAINT PK_IM_PART_MATCHED_RECEIPTS PRIMARY KEY ( SHIPMENT, ITEM ) 
    USING INDEX PK_IM_PART_MATCHED_RECEIPTS ;




PROMPT CREATING TABLE 'IM_POSTING_ACCT_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_POSTING_ACCT_GTT 
    ( 
     POSTING_AMT_ID  NUMBER (10) , 
     ACCOUNT_TYPE    VARCHAR2 (6) , 
     ACCOUNT_CODE    VARCHAR2 (6) , 
     SEGMENT_NO      NUMBER (2) , 
     SEGMENT_VALUE   VARCHAR2 (25) , 
     SET_OF_BOOKS_ID NUMBER (15) , 
     TAX_CODE        VARCHAR2 (6) DEFAULT 'NOCODE'  NOT NULL 
    ) 
    ON COMMIT DELETE ROWS 
;



COMMENT ON COLUMN IM_POSTING_ACCT_GTT.POSTING_AMT_ID IS 'posting amount id' 
;

COMMENT ON COLUMN IM_POSTING_ACCT_GTT.ACCOUNT_TYPE IS 'account type' 
;

COMMENT ON COLUMN IM_POSTING_ACCT_GTT.ACCOUNT_CODE IS 'account code' 
;

COMMENT ON COLUMN IM_POSTING_ACCT_GTT.SEGMENT_NO IS 'segment number' 
;

COMMENT ON COLUMN IM_POSTING_ACCT_GTT.SEGMENT_VALUE IS 'segment value' 
;

COMMENT ON COLUMN IM_POSTING_ACCT_GTT.SET_OF_BOOKS_ID IS 'set of books id' 
;

COMMENT ON COLUMN IM_POSTING_ACCT_GTT.TAX_CODE IS 'Tax code for account segment' 
;



PROMPT CREATING TABLE 'IM_POSTING_CONFIG';
CREATE TABLE IM_POSTING_CONFIG 
    ( 
     MAX_THREADS               NUMBER (3)  NOT NULL , 
     LUW_PER_THREAD            NUMBER (3)  NOT NULL , 
     STAGE_DATA_RETENTION_DAYS NUMBER (10)  NOT NULL , 
	 CREATED_BY 		       VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		       DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	       VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	       DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	       NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_POSTING_CONFIG.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_POSTING_CONFIG.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_POSTING_CONFIG.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_POSTING_CONFIG.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_POSTING_CONFIG.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_POSTING_DOC';
CREATE TABLE IM_POSTING_DOC 
    ( 
     POSTING_ID                NUMBER (10)  NOT NULL , 
     DOC_ID                    NUMBER (10)  NOT NULL , 
     DOC_TYPE                  VARCHAR2 (6) , 
     MATCH_TYPE                VARCHAR2 (20) , 
     CALC_BASIS                VARCHAR2 (30) , 
     RESOLUTION_COUNT          NUMBER (10) , 
     CURRENCY_RATE             NUMBER (20,4) , 
     SUMMARY_MATCH_PRIMARY_DOC VARCHAR2 (1) , 
     HAS_ERRORS                VARCHAR2 (1) DEFAULT 'N' , 
     PARENT_ID                 NUMBER (10) , 
     DOC_DATE                  DATE , 
     VENDOR_TYPE               VARCHAR2 (6) , 
     VENDOR                    VARCHAR2 (10) , 
     ORDER_NO                  NUMBER (12) , 
     BEST_TERMS                VARCHAR2 (15) , 
     BEST_TERMS_DATE           DATE , 
     MANUALLY_PAID_IND         VARCHAR2 (1) , 
     PRE_PAID_IND              VARCHAR2 (1) , 
     DEAL_ID                   NUMBER (10) , 
     EXT_DOC_ID                VARCHAR2 (150) , 
     CURRENCY_CODE             VARCHAR2 (3) , 
     CURRENCY_RATE_TYPE        VARCHAR2 (30) , 
     LOCATION                  NUMBER (10) , 
     LOC_TYPE                  VARCHAR2 (1) , 
     DECIMAL_DIGITS            NUMBER (6) , 
     DEFAULT_CLASS             NUMBER (4) , 
     DEFAULT_DEPT              NUMBER (4) , 
     SYS_CURRENCY_CODE         VARCHAR2 (3) , 
     DOC_TAX_COUNT             NUMBER (10) , 
     SYS_TAX_IND               VARCHAR2 (1) DEFAULT 'N'  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_POSTING_DOC.POSTING_ID IS 'posting process id' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DOC_ID IS 'the document id' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DOC_TYPE IS 'the document type' 
;

COMMENT ON COLUMN IM_POSTING_DOC.MATCH_TYPE IS 'the type of match - summary or detailed' 
;

COMMENT ON COLUMN IM_POSTING_DOC.CALC_BASIS IS 'the calculation basis - header or details' 
;

COMMENT ON COLUMN IM_POSTING_DOC.RESOLUTION_COUNT IS 'the number of resolutions associated with the document' 
;

COMMENT ON COLUMN IM_POSTING_DOC.CURRENCY_RATE IS 'the currency rate to be applied during posting' 
;

COMMENT ON COLUMN IM_POSTING_DOC.SUMMARY_MATCH_PRIMARY_DOC IS 'y if the doucment is the one designated as primary (holder of variance and unr) in a summary match' 
;

COMMENT ON COLUMN IM_POSTING_DOC.HAS_ERRORS IS 'default n  - processing of document yielded errors or not' 
;

COMMENT ON COLUMN IM_POSTING_DOC.PARENT_ID IS 'the parent id of the document being posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DOC_DATE IS 'the document date' 
;

COMMENT ON COLUMN IM_POSTING_DOC.VENDOR_TYPE IS 'the vendor type' 
;

COMMENT ON COLUMN IM_POSTING_DOC.VENDOR IS 'the vendor id of the docment' 
;

COMMENT ON COLUMN IM_POSTING_DOC.ORDER_NO IS 'the order number for the posted document.' 
;

COMMENT ON COLUMN IM_POSTING_DOC.BEST_TERMS IS 'best terms text' 
;

COMMENT ON COLUMN IM_POSTING_DOC.BEST_TERMS_DATE IS 'best terms date' 
;

COMMENT ON COLUMN IM_POSTING_DOC.MANUALLY_PAID_IND IS 'y if document was manually paid.' 
;

COMMENT ON COLUMN IM_POSTING_DOC.PRE_PAID_IND IS 'n if document was pre-paid' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DEAL_ID IS 'the associated deal id for the document' 
;

COMMENT ON COLUMN IM_POSTING_DOC.EXT_DOC_ID IS 'the external document id' 
;

COMMENT ON COLUMN IM_POSTING_DOC.CURRENCY_CODE IS 'the currency for the amounts in the document' 
;

COMMENT ON COLUMN IM_POSTING_DOC.CURRENCY_RATE_TYPE IS 'the type of currency rate - usually consolidate type.' 
;

COMMENT ON COLUMN IM_POSTING_DOC.LOCATION IS 'the location of the document' 
;

COMMENT ON COLUMN IM_POSTING_DOC.LOC_TYPE IS 'the location type of the document (store or warehouse).' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DECIMAL_DIGITS IS 'the number of decimal digits to be retained after rounding amounts in posting.' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DEFAULT_CLASS IS 'default class' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DEFAULT_DEPT IS 'default department' 
;

COMMENT ON COLUMN IM_POSTING_DOC.SYS_CURRENCY_CODE IS 'system currency code' 
;

COMMENT ON COLUMN IM_POSTING_DOC.DOC_TAX_COUNT IS 'The number of taxes on the document to be posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC.SYS_TAX_IND IS 'System overridden tax indicator' 
;
PROMPT CREATING INDEX 'PK_IM_POSTING_DOC';
CREATE UNIQUE INDEX PK_IM_POSTING_DOC ON IM_POSTING_DOC 
    ( 
     POSTING_ID ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_POSTING_DOC';
ALTER TABLE IM_POSTING_DOC 
    ADD CONSTRAINT PK_IM_POSTING_DOC PRIMARY KEY ( POSTING_ID, DOC_ID ) 
    USING INDEX PK_IM_POSTING_DOC ;




PROMPT CREATING TABLE 'IM_POSTING_DOC_ACCOUNTS';
CREATE TABLE IM_POSTING_DOC_ACCOUNTS 
    ( 
     SEGMENT1        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT2        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT3        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT4        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT5        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT6        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT7        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT8        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT9        VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT10       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT11       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT12       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT13       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT14       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT15       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT16       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT17       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT18       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT19       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     SEGMENT20       VARCHAR2 (25) DEFAULT 'NO_VALUE' , 
     ACCOUNT_TYPE    VARCHAR2 (6)  NOT NULL , 
     ACCOUNT_CODE    VARCHAR2 (20)  NOT NULL , 
     STATUS          VARCHAR2 (20) , 
     POSTING_AMT_ID  NUMBER (10) , 
     SET_OF_BOOKS_ID NUMBER (15) , 
     TAX_CODE        VARCHAR2 (6) DEFAULT 'NOCODE'  NOT NULL 
    ) 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT1 IS 'segment 1' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT2 IS 'segment 2' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT3 IS 'segment 3' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT4 IS 'segment 4' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT5 IS 'segment 5' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT6 IS 'segment 6' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT7 IS 'segment 7' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT8 IS 'segment 8' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT9 IS 'segment 9' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT10 IS 'segment 10' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT11 IS 'segment 11' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT12 IS 'segment 12' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT13 IS 'segment 13' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT14 IS 'segment 14' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT15 IS 'segment 15' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT16 IS 'segment 16' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT17 IS 'segment 17' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT18 IS 'segment 18' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT19 IS 'segment 19' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SEGMENT20 IS 'segment 20' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.ACCOUNT_TYPE IS 'account type' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.ACCOUNT_CODE IS 'account code' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.STATUS IS 'status' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.POSTING_AMT_ID IS 'posting amount id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.SET_OF_BOOKS_ID IS 'set of books id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ACCOUNTS.TAX_CODE IS 'Tax Code for account segment' 
;



PROMPT CREATING TABLE 'IM_POSTING_DOC_AMOUNTS';
CREATE TABLE IM_POSTING_DOC_AMOUNTS 
    ( 
     POSTING_ID         NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
     AMOUNT_TYPE        VARCHAR2 (50)  NOT NULL , 
     DEPT               NUMBER (4) , 
     CLASS              NUMBER (4) , 
     SUBCLASS           NUMBER (4) , 
     AMOUNT             NUMBER (20,4) , 
     GROUP_BY_1         VARCHAR2 (30) , 
     GROUP_BY_2         VARCHAR2 (30) , 
     GROUP_BY_3         VARCHAR2 (30) , 
     GROUP_BY_4         VARCHAR2 (30) , 
     GROUP_BY_5         VARCHAR2 (30) , 
     GROUP_BY_6         VARCHAR2 (30) , 
     GROUP_BY_7         VARCHAR2 (30) , 
     GROUP_BY_8         VARCHAR2 (30) , 
     POSTING_AMT_ID     NUMBER (10) , 
     ACCOUNT_TYPE       VARCHAR2 (6) , 
     ACCOUNT_CODE       VARCHAR2 (20) , 
     SET_OF_BOOKS_ID    NUMBER (15) , 
     ORG_UNIT           NUMBER (15) , 
     LOCATION           NUMBER (10) , 
     PRIM_CURRENCY_CODE VARCHAR2 (3) , 
     CURRENCY_RATE_TYPE VARCHAR2 (30) , 
     CURRENCY_RATE      NUMBER (30,10) , 
     TAX_CODE           VARCHAR2 (6) , 
     TAX_RATE           NUMBER (20,10) 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.POSTING_ID IS 'the posting process id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.DOC_ID IS 'the document id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.AMOUNT_TYPE IS 'the amount type (e.g. merch cost, variance, etc)' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.DEPT IS 'the department id associated with the amount being posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.CLASS IS 'the merchandise class assoc. with the amount being posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.SUBCLASS IS 'the  merchandise subclass associated with the amount being posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.AMOUNT IS 'the amount to be posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_1 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_2 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_3 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_4 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_5 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_6 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_7 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.GROUP_BY_8 IS 'allows for custom grouping of the amounts' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.POSTING_AMT_ID IS 'posting amount id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.ACCOUNT_TYPE IS 'account type' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.ACCOUNT_CODE IS 'account code' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.SET_OF_BOOKS_ID IS 'set of books id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.ORG_UNIT IS 'org unit' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.LOCATION IS 'location' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.PRIM_CURRENCY_CODE IS 'primary currency code' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.CURRENCY_RATE_TYPE IS 'currency rate type' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.CURRENCY_RATE IS 'Currency rate of the documents' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.TAX_CODE IS 'A tax code on the document to be posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC_AMOUNTS.TAX_RATE IS 'The tax rate for the corresponding tax code' 
;
PROMPT CREATING INDEX 'IM_POSTING_DOC_AMOUNTS_I1';
CREATE INDEX IM_POSTING_DOC_AMOUNTS_I1 ON IM_POSTING_DOC_AMOUNTS 
    ( 
     POSTING_ID ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_POSTING_DOC_DEPTCLASS';
CREATE TABLE IM_POSTING_DOC_DEPTCLASS 
    ( 
     POSTING_ID         NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
     TYPE               VARCHAR2 (15)  NOT NULL , 
     DEPT               NUMBER (4)  NOT NULL , 
     CLASS              NUMBER (4)  NOT NULL , 
     EXT_COST           NUMBER (20,4) , 
     MATCH_ID           NUMBER (12) , 
     SHIPMENT           NUMBER (12) , 
     CURRENCY_CODE      VARCHAR2 (3) , 
     EXCHANGE_RATE      NUMBER (20,4) , 
     EXCHANGE_TYPE      VARCHAR2 (30) , 
     PRIM_CURRENCY_CODE VARCHAR2 (3) 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.POSTING_ID IS 'reference to the posting process' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.DOC_ID IS 'reference to the document being posted' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.TYPE IS 'the type of information at dept/class level held by the row.' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.DEPT IS 'the department id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.CLASS IS 'the department class id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.EXT_COST IS 'extended cost' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.MATCH_ID IS 'match id.' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.SHIPMENT is 'associated receipt id'
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.CURRENCY_CODE IS 'currency of the dept/class amounts.' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.EXCHANGE_RATE IS 'exchange rate' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.EXCHANGE_TYPE IS 'exchange rate type.' 
;

COMMENT ON COLUMN IM_POSTING_DOC_DEPTCLASS.PRIM_CURRENCY_CODE IS 'primary currency code' 
;
PROMPT CREATING INDEX 'IM_POSTING_DOC_DEPTCLASS_I1';
CREATE INDEX IM_POSTING_DOC_DEPTCLASS_I1 ON IM_POSTING_DOC_DEPTCLASS 
    ( 
     POSTING_ID ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;




PROMPT CREATING TABLE 'IM_POSTING_DOC_ERRORS';
CREATE TABLE IM_POSTING_DOC_ERRORS 
    ( 
     POSTING_ID         NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
     SEVERITY           VARCHAR2 (6)  NOT NULL , 
     ERROR_MSG          VARCHAR2 (512) , 
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     CATEGORY           VARCHAR2 (20) , 
	 CREATED_BY         VARCHAR2 (60) DEFAULT USER NOT NULL , 
	 LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.POSTING_ID IS 'posting process id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.DOC_ID IS 'document id' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.SEVERITY IS 'severity (warn, error, debug)' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.ERROR_MSG IS 'free form text for the cause of the posting error on the document.' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.CATEGORY IS 'text categorizing the type of error' 
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_POSTING_DOC_ERRORS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_POSTING_DOC_ERRORS_I1';
CREATE INDEX IM_POSTING_DOC_ERRORS_I1 ON IM_POSTING_DOC_ERRORS 
    ( 
     POSTING_ID ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;




PROMPT CREATING TABLE 'IM_POSTING_STATUS';
CREATE TABLE IM_POSTING_STATUS 
    ( 
     POSTING_ID         NUMBER (10)  NOT NULL , 
     STATUS             VARCHAR2 (1) DEFAULT 'N' , 
     HAS_ERRORS         VARCHAR2 (1) DEFAULT 'N' , 
     DESCRIPTION        VARCHAR2 (50) , 
     START_DATE         DATE , 
     END_DATE           DATE , 
     CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
	 CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_POSTING_STATUS.POSTING_ID IS 'posting process id' 
;

COMMENT ON COLUMN IM_POSTING_STATUS.STATUS IS 'default n  - status of posting process' 
;

COMMENT ON COLUMN IM_POSTING_STATUS.HAS_ERRORS IS 'default n - indicates if error occured in posting process.' 
;

COMMENT ON COLUMN IM_POSTING_STATUS.DESCRIPTION IS 'posting description.' 
;

COMMENT ON COLUMN IM_POSTING_STATUS.START_DATE IS 'execution date and time of the posting process.' 
;

COMMENT ON COLUMN IM_POSTING_STATUS.END_DATE IS 'completion date and time of the posting process.' 
;

COMMENT ON COLUMN IM_POSTING_STATUS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_POSTING_STATUS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_POSTING_STATUS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_POSTING_STATUS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_POSTING_STATUS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_POSTING_STATUS';
CREATE UNIQUE INDEX PK_IM_POSTING_STATUS ON IM_POSTING_STATUS 
    ( 
     POSTING_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_POSTING_STATUS';
ALTER TABLE IM_POSTING_STATUS 
    ADD CONSTRAINT PK_IM_POSTING_STATUS PRIMARY KEY ( POSTING_ID ) 
    USING INDEX PK_IM_POSTING_STATUS ;




PROMPT CREATING TABLE 'IM_PRORATE_WORKSPACE';
CREATE TABLE IM_PRORATE_WORKSPACE 
    ( 
     PRORATE_WORKSPACE_ID     NUMBER (10)  NOT NULL , 
     PRORATE_GROUP_KEY        VARCHAR2 (100)  NOT NULL , 
     DECIMAL_SCALE            NUMBER (6)  NOT NULL , 
     AMOUNT_TO_PRORATE_1      NUMBER (20,4) DEFAULT 0 , 
     SHARE_IN_GROUP_1         NUMBER (20,4) DEFAULT 1 , 
     AMOUNT_TO_PRORATE_2      NUMBER (20,4) DEFAULT 0 , 
     SHARE_IN_GROUP_2         NUMBER (20,4) DEFAULT 1 , 
     AMOUNT_TO_PRORATE_3      NUMBER (20,4) DEFAULT 0 , 
     SHARE_IN_GROUP_3         NUMBER (20,4) DEFAULT 1 , 
     REF_ROWID_1              ROWID , 
     REF_ROWID_2              ROWID , 
     REF_ROWID_3              ROWID , 
     RESULT_PRORATED_AMOUNT_1 NUMBER (20,4) , 
     RESULT_PRORATED_AMOUNT_2 NUMBER (20,4) , 
     RESULT_PRORATED_AMOUNT_3 NUMBER (20,4) , 
     SHARE_DATA_1             VARCHAR2 (250) , 
     SHARE_DATA_2             VARCHAR2 (250) , 
     SHARE_DATA_3             VARCHAR2 (250) 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_PRORATE_WORKSPACE.PRORATE_WORKSPACE_ID IS 'workspace identifier for a proration activitiy' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.PRORATE_GROUP_KEY IS 'a key  designating a group within the workspace' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.DECIMAL_SCALE IS 'the decimal scale for which amounts will be rounded to.' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.AMOUNT_TO_PRORATE_1 IS 'default 0 - 1st amount to prorate' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.SHARE_IN_GROUP_1 IS 'default 1 - share of 1st amount within the group.' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.AMOUNT_TO_PRORATE_2 IS 'default 0 - 2nd amount to prorate' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.SHARE_IN_GROUP_2 IS 'default 1 - share of 2nd amount to prorate' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.AMOUNT_TO_PRORATE_3 IS 'default 0 - 3rd amount to prorate' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.SHARE_IN_GROUP_3 IS 'default 1 - share of 3rd amount to prorate' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.REF_ROWID_1 IS 'optional reference to the db row that owns any of the amounts.' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.REF_ROWID_2 IS 'optional reference to the db row that owns any of the amounts.' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.REF_ROWID_3 IS 'optional reference to the db row that owns any of the amounts.' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.RESULT_PRORATED_AMOUNT_1 IS 'result of prorating amount 1' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.RESULT_PRORATED_AMOUNT_2 IS 'result of prorating amount 2' 
;

COMMENT ON COLUMN IM_PRORATE_WORKSPACE.RESULT_PRORATED_AMOUNT_3 IS 'result of prorating amoutn 3' 
;



PROMPT CREATING TABLE 'IM_RCPT_ITEM_POSTING_INVOICE';
CREATE TABLE IM_RCPT_ITEM_POSTING_INVOICE 
    ( 
     SEQ_NO             NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
     STATUS             VARCHAR2 (1) , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_RCPT_ITEM_POSTING_INVOICE';
ALTER TABLE IM_RCPT_ITEM_POSTING_INVOICE 
    ADD CONSTRAINT CHK_IM_RCIP_STATUS 
    CHECK (STATUS IN ('M','P')) 
;


COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.SEQ_NO IS 'generated field that identifies a receipt item matched with an invoice' 
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.DOC_ID IS 'identifies the invoice number which relates the invoice to the shipment' 
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.STATUS IS 'identifies if the invoice has been matched or posted' 
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INVOICE.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_RCPT_ITEM_POSTING_INVOIC';
CREATE UNIQUE INDEX PK_IM_RCPT_ITEM_POSTING_INVOIC ON IM_RCPT_ITEM_POSTING_INVOICE 
    ( 
     SEQ_NO ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_RCPT_ITEM_POSTING_INVOIC_I1';
CREATE INDEX IM_RCPT_ITEM_POSTING_INVOIC_I1 ON IM_RCPT_ITEM_POSTING_INVOICE 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_RCPT_ITEM_POSTING_INVOICE';
ALTER TABLE IM_RCPT_ITEM_POSTING_INVOICE 
    ADD CONSTRAINT PK_IM_RCPT_ITEM_POSTING_INVOIC PRIMARY KEY ( SEQ_NO, DOC_ID ) 
    USING INDEX PK_IM_RCPT_ITEM_POSTING_INVOIC ;




PROMPT CREATING TABLE 'IM_RCPT_ITEM_POSTING_INV_STAGE';
CREATE TABLE IM_RCPT_ITEM_POSTING_INV_STAGE 
    ( 
     SEQ_NO             NUMBER (10)  NOT NULL , 
     DOC_ID             NUMBER (10)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INV_STAGE.SEQ_NO IS 'sequence' 
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INV_STAGE.DOC_ID IS 'invoice matched' 
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INV_STAGE.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INV_STAGE.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INV_STAGE.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INV_STAGE.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RCPT_ITEM_POSTING_INV_STAGE.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_REASON_CODES';
CREATE TABLE IM_REASON_CODES 
    ( 
     REASON_CODE_TYPE     VARCHAR2 (6)  NOT NULL , 
     REASON_CODE_ID       VARCHAR2 (20)  NOT NULL , 
     REASON_CODE_DESC     VARCHAR2 (1000)  NOT NULL , 
     ACTION               VARCHAR2 (6)  NOT NULL , 
     COMMENT_REQUIRED_IND VARCHAR2 (1)  NOT NULL , 
     HINT_COMMENT         VARCHAR2 (2000) , 
     DELETE_IND           VARCHAR2 (1)  NOT NULL ,
	 CREATED_BY 		  VARCHAR2 (60 ) DEFAULT USER NOT NULL ,
	 CREATION_DATE 		  DATE DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY 	  VARCHAR2 (60 ) DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE 	  DATE DEFAULT SYSDATE NOT NULL ,
	 OBJECT_VERSION_ID 	  NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_REASON_CODES';
ALTER TABLE IM_REASON_CODES 
    ADD CONSTRAINT CHK_IRE_REASON_CODE_TYPE 
    CHECK ( REASON_CODE_TYPE IN ('C', 'CNT', 'Q', 'RTV', 'T')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_REASON_CODES';
ALTER TABLE IM_REASON_CODES 
    ADD CONSTRAINT CHK_IRE_REASON_CODE_ID 
    CHECK ( REASON_CODE_ID = upper(REASON_CODE_ID)) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_REASON_CODES';
ALTER TABLE IM_REASON_CODES 
    ADD CONSTRAINT CHK_IRE_ACTION 
    CHECK ( ACTION
IN ('CBC', 'CBQ', 'CMC', 'CMQ', 'RCA', 'RCAS', 'RCAMR' , 'RCASMR',
'RUA', 'DWO', 'RCD', 'RQD', 'DD', 'SR', 'MR', 'ACDS', 'UIT', 'DMTI',
'DMTF', 'CNRTI', 'CNRTF')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_REASON_CODES';
ALTER TABLE IM_REASON_CODES 
    ADD CONSTRAINT CHK_IRE_COMMENT_REQUIRED_IND 
    CHECK (COMMENT_REQUIRED_IND IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_REASON_CODES';
ALTER TABLE IM_REASON_CODES 
    ADD CONSTRAINT CHK_IRE_DELETE_IND 
    CHECK (DELETE_IND IN ('N','Y')) 
;


COMMENT ON COLUMN IM_REASON_CODES.REASON_CODE_TYPE IS 'this column holds the type of reason code.  valid values are c , q, t,cnv,rtv.  this column is mandatory not null.  c-cost  q-quantity  t-tax  cnt-credit note tax  rtv-return to vendor' 
;

COMMENT ON COLUMN IM_REASON_CODES.REASON_CODE_ID IS 'this column holds the user defined reason code id.  a reason code must be unique across all user groups so that it can be mapped to different gl accounts.  reason codes must the upper case character string of not more than 6 characters.  this column is mandatory not null' 
;

COMMENT ON COLUMN IM_REASON_CODES.REASON_CODE_DESC IS 'this column holds the user-defined description of the reason code.  the description must be unique.  reason code descriptions can be mixed case and not more than .  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_REASON_CODES.ACTION IS 'e item cost) to match the invoice cost or to another value.  this action writes this adjustment record to a staging table, allowing the retailer to create a custom interface to rms to adjust the shipment/receipt or to create a report to support manual entry of receiver cost adjustments in rms.  rcas - receiver cost adjustment - po, receipt and supplier cost.  this action is identical to the in addition to the receiver cost adjustment - po and receipt only except that the supplier cost file in rms is updated as well.  rua - receiver unit adjustment.  this action creates a record from the unit adjustment to match the receiver with associated invoice lines.  this action writes this adjustment record to a staging table, allowing the retailer to create a custom interface to rms to adjust the shipment/receipt, or to write a report to support manual entry of the receiver unit adjustments in rms.    dwo - discrepancy write-off.  this action allows the user to stop any further matching activity, export the invoice for payment and create an entry for the unresolved difference (no document data is created; any discrepancies are written-off).  dd - deny dispute.  when the action type is deny dispute, retek invoice matching prompt will create a document that disputes there is a discrepancy.  sr - split receipt.  this action allows the user to split the invoice into multiple receipts.  the user may then match the invoice to the newly created sub-receipt (extract of the original receipt).  the remaining sub-receipt(s) are in unmatched status and available for matching through the auto-match and manual match processes.  mr - match to receipt.  this action allows the reviewer to directly match the invoice with the newly created receipt, resolving or partially resolving the discrepancy.  acds - approve credit in disputed status.  this action updates the line status on a credit memo from dispu' 
;

COMMENT ON COLUMN IM_REASON_CODES.COMMENT_REQUIRED_IND IS 'this column indicates whether or not an action requires a comments.' 
;

COMMENT ON COLUMN IM_REASON_CODES.HINT_COMMENT IS 'this column will be used as a hint for the given reason code.' 
;

COMMENT ON COLUMN IM_REASON_CODES.DELETE_IND IS 'this column is used to purge reason codes marked for delete. this column is checked when running the batch purge program. if that reason code record is marked for deletion than that reason code will not be displayed in reason code maintenance. if the user checks a reason code to be deleted that record should be set to be deleted(y) on the im_reason_codes table.' 
;

COMMENT ON COLUMN IM_REASON_CODES.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_REASON_CODES.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_REASON_CODES.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_REASON_CODES.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_REASON_CODES.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_REASON_CODES';
CREATE UNIQUE INDEX PK_IM_REASON_CODES ON IM_REASON_CODES 
    ( 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_REASON_CODES';
ALTER TABLE IM_REASON_CODES 
    ADD CONSTRAINT PK_IM_REASON_CODES PRIMARY KEY ( REASON_CODE_ID ) 
    USING INDEX PK_IM_REASON_CODES ;




PROMPT CREATING TABLE 'IM_RECEIPT_ITEM_POSTING';
CREATE TABLE IM_RECEIPT_ITEM_POSTING 
    ( 
     SEQ_NO             NUMBER (10)  NOT NULL , 
     SHIPMENT           NUMBER (12)  NOT NULL , 
     ITEM            	VARCHAR2 (25)  NOT NULL , 
     QTY_MATCHED        NUMBER (20,4) , 
     QTY_POSTED         NUMBER (20,4) , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.SEQ_NO IS 'generated value to uniquely identify a row on the table' 
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.SHIPMENT is 'contains the unique number identifying a specific shipment of goods.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.ITEM is 'unique alphanumeric value that represents the item'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.QTY_MATCHED IS 'contains the total number of items matched.' 
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.QTY_POSTED IS 'contains the total number of items posted' 
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_RECEIPT_ITEM_POSTING_I1';
CREATE INDEX IM_RECEIPT_ITEM_POSTING_I1 on IM_RECEIPT_ITEM_POSTING
	(
	 SHIPMENT ASC,
	 ITEM ASC
	)
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING INDEX 'PK_IM_RECEIPT_ITEM_POSTING';
CREATE UNIQUE INDEX PK_IM_RECEIPT_ITEM_POSTING ON IM_RECEIPT_ITEM_POSTING 
    ( 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_RECEIPT_ITEM_POSTING';
ALTER TABLE IM_RECEIPT_ITEM_POSTING 
    ADD CONSTRAINT PK_IM_RECEIPT_ITEM_POSTING PRIMARY KEY ( SEQ_NO ) 
    USING INDEX PK_IM_RECEIPT_ITEM_POSTING ;




PROMPT CREATING TABLE 'IM_RECEIPT_ITEM_POSTING_STAGE';
CREATE TABLE IM_RECEIPT_ITEM_POSTING_STAGE 
    ( 
     SEQ_NO             NUMBER (10)  NOT NULL , 
     SHIPMENT           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     QTY_POSTED         NUMBER (20,4)  NOT NULL , 
     CREATE_DATE        DATE  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.SEQ_NO IS 'sequence' 
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.SHIPMENT is 'receipt being tracked'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.ITEM is 'item being tracked'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.QTY_POSTED IS 'quantity already posted to financials' 
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.CREATE_DATE IS 'date record created' 
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RECEIPT_ITEM_POSTING_STAGE.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_RCPT_ITEM_POSTING_STG_I1';
CREATE INDEX IM_RCPT_ITEM_POSTING_STG_I1 on IM_RECEIPT_ITEM_POSTING_STAGE
	(
	 SHIPMENT ASC,
	 ITEM ASC
	)
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


PROMPT CREATING INDEX 'PK_IM_RECEIPT_ITEM_POSTING_STA';
CREATE UNIQUE INDEX PK_IM_RECEIPT_ITEM_POSTING_STA ON IM_RECEIPT_ITEM_POSTING_STAGE 
    ( 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_RECEIPT_ITEM_POSTING_STAGE';
ALTER TABLE IM_RECEIPT_ITEM_POSTING_STAGE 
    ADD CONSTRAINT PK_IM_RECEIPT_ITEM_POSTING_STA PRIMARY KEY ( SEQ_NO ) 
    USING INDEX PK_IM_RECEIPT_ITEM_POSTING_STA ;




PROMPT CREATING TABLE 'IM_RECEIVER_COST_ADJUST';
CREATE TABLE IM_RECEIVER_COST_ADJUST 
    ( 
     ORDER_NO           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     LOCATION           NUMBER (10)  NOT NULL , 
     SUPPLIER           NUMBER (10)  NOT NULL , 
     ADJUSTED_UNIT_COST NUMBER (20,4)  NOT NULL , 
     CURRENCY_CODE      VARCHAR2 (3)  NOT NULL , 
     COMMENTS           VARCHAR2 (2000) , 
     TYPE               VARCHAR2 (6)  NOT NULL , 
     REASON_CODE_ID     VARCHAR2 (20)  NOT NULL , 
     CREATED_BY         VARCHAR2 (60)  DEFAULT USER NOT NULL , 
     SHIPMENT           NUMBER (12)  NOT NULL , 
	 CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_RECEIVER_COST_ADJUST';
ALTER TABLE IM_RECEIVER_COST_ADJUST 
    ADD CONSTRAINT CHK_IM_RCVR_COST_ADJ_TYPE 
    CHECK (TYPE IN ('POR', 'PORS','POMR','POMRS')) 
;


COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.ORDER_NO IS 'the order number for the cost change' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.ITEM IS 'the item id for the cost change for the specified order-location' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.LOCATION IS 'the location on the order for which the items unit cost will be changed' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.SUPPLIER IS 'the supplier associated with the order' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.ADJUSTED_UNIT_COST IS 'the updated unit cost amount that should be reflected in the merchandising system.' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.CURRENCY_CODE IS 'this column holds the currency code associated with the document.  it should be the same as the order and invoice currency.' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.COMMENTS IS 'this column holds comments the user may enter when resolving the discrepancy' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.TYPE IS 'the column holds the type of receiver cost adjustment. valid values include: por - po and receipt only pors- po, receipt, and supplier cost' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.REASON_CODE_ID is 'the column holds the reason code of the discrepancy resolution.'
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.SHIPMENT IS 'id of the receipt that caused the adjustment' 
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RECEIVER_COST_ADJUST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_RECEIVER_COST_ADJUST_I1';
CREATE INDEX IM_RECEIVER_COST_ADJUST_I1 ON IM_RECEIVER_COST_ADJUST 
    ( 
     CURRENCY_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_RECEIVER_COST_ADJUST_I2';
CREATE INDEX IM_RECEIVER_COST_ADJUST_I2 ON IM_RECEIVER_COST_ADJUST 
    ( 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'PK_IM_RECEIVER_COST_ADJUST';
CREATE UNIQUE INDEX PK_IM_RECEIVER_COST_ADJUST ON IM_RECEIVER_COST_ADJUST 
    ( 
     ORDER_NO ASC , 
     ITEM ASC , 
     LOCATION ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_RECEIVER_COST_ADJUST';
ALTER TABLE IM_RECEIVER_COST_ADJUST 
    ADD CONSTRAINT PK_IM_RECEIVER_COST_ADJUST PRIMARY KEY ( ORDER_NO, ITEM, LOCATION ) 
    USING INDEX PK_IM_RECEIVER_COST_ADJUST ;




PROMPT CREATING TABLE 'IM_RECEIVER_UNIT_ADJUST';
CREATE TABLE IM_RECEIVER_UNIT_ADJUST 
    ( 
     SHIPMENT           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     SEQ_NO             NUMBER (10)  NOT NULL , 
     ADJUSTED_ITEM_QTY  NUMBER (12,4)  NOT NULL , 
     COMMENTS           VARCHAR2 (2000) , 
     REASON_CODE_ID     VARCHAR2 (20)  NOT NULL , 
     CREATED_BY 	    VARCHAR2 (60) DEFAULT USER NOT NULL ,
     LOCATION           NUMBER (10)  NOT NULL , 
	 CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.SHIPMENT IS 'the receipt shipment id of the item quantity change.' 
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.ITEM IS 'the item id that the quantity change applies to for the specified shipment' 
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.SEQ_NO IS 'the sequence number' 
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.ADJUSTED_ITEM_QTY IS 'the new item quantity that should be applied to the merchandising system.' 
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.COMMENTS IS 'this column holds comments the user may enter when resolving the discrepancy' 
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.REASON_CODE_ID is 'the column holds the reason code of the discrepancy resolution.'
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.LOCATION IS 'the column will hold the to location of the shipment' 
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RECEIVER_UNIT_ADJUST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_RECEIVER_UNIT_ADJUST';
CREATE UNIQUE INDEX PK_IM_RECEIVER_UNIT_ADJUST ON IM_RECEIVER_UNIT_ADJUST 
    ( 
     SHIPMENT ASC , 
     ITEM ASC , 
     SEQ_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_RECEIVER_UNIT_ADJUST_I1';
CREATE INDEX IM_RECEIVER_UNIT_ADJUST_I1 ON IM_RECEIVER_UNIT_ADJUST 
    ( 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_RECEIVER_UNIT_ADJUST';
ALTER TABLE IM_RECEIVER_UNIT_ADJUST 
    ADD CONSTRAINT PK_IM_RECEIVER_UNIT_ADJUST PRIMARY KEY ( SHIPMENT, ITEM, SEQ_NO ) 
    USING INDEX PK_IM_RECEIVER_UNIT_ADJUST ;




PROMPT CREATING TABLE 'IM_RESOLUTION_ACTION';
CREATE TABLE IM_RESOLUTION_ACTION 
    ( 
     DOC_ID             NUMBER (10)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     REASON_CODE_ID     VARCHAR2 (20)  NOT NULL , 
     ACTION             VARCHAR2 (6)  NOT NULL , 
     QTY                NUMBER (12,4) , 
     UNIT_COST          NUMBER (20,4) , 
     EXTENDED_COST      NUMBER (20,4) , 
     STATUS             VARCHAR2 (1)  NOT NULL , 
     SHIPMENT           NUMBER (12) , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_RESOLUTION_ACTION';
ALTER TABLE IM_RESOLUTION_ACTION 
    ADD CONSTRAINT CHK_IM_RESOL_ACTION_STATUS 
    CHECK ( STATUS IN ('R', 'U')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_RESOLUTION_ACTION';
ALTER TABLE IM_RESOLUTION_ACTION 
    ADD CONSTRAINT CHK_IM_RESOL_ACTION_ACTION 
    CHECK ((ACTION
IN ('CBC', 'CBQ', 'CMC', 'CMQ', 'RCA', 'RCAS','RCAMR','RCASMR', 'DWO'
, 'RCD', 'RQD', 'SR', 'MR', 'UIT', 'DMTI', 'DMTF', 'CNRTF', 'CNRTI'
)) OR (ACTION = 'RUA' AND SHIPMENT IS NOT NULL))
;


COMMENT ON COLUMN IM_RESOLUTION_ACTION.DOC_ID IS 'this column holds the document to which this resolution action belongs.' 
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.ITEM IS 'this column holds the transaction level item that is discrepant on the document or order.  transaction level item means that the item is managed at this level in the merchandising system.  for rms 9, this could be either a pack, fashion sku or staple sku, but this could not be a fashion style.  for rms 10, this must be a transaction level.  this column is mandatory not null.' 
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.REASON_CODE_ID is 'this column holds the user defined reason code id.  a reason code must be unique across all user groups so that it can be mapped to different gl accounts.  reason codes must the upper case character string of not more than 6 characters.  this column is mandatory not null'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.ACTION IS 'this column holds the action that is associated with the reason code.  these actions will be performed when a member of this role acts on the either a cost or quantity discrepancy (depending on the reason_code_type).  this field is mandator' 
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.QTY is 'this column will hold the adjustment quantity for the specified reason code.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.UNIT_COST IS 'the column holds the unit cost difference or the new unit cost if action is a receiver cost adjustment.' 
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.EXTENDED_COST IS 'this column will hold the extened total cost adjustment for the resolution reason.  extended cost means the cost adjustment amount times the quantity on the document or order' 
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.STATUS IS 'this column will hold the status of the record.  valid values for this field are rolled-up and unrolled.  a record is rolled-up once the action has been done.  it is written to the table in unrolled status.' 
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.SHIPMENT IS 'this column holds the receipt when it is associated with a discrepancy action of receiver adjustment.' 
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_RESOLUTION_ACTION_I1';
CREATE INDEX IM_RESOLUTION_ACTION_I1 ON IM_RESOLUTION_ACTION 
    ( 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'PK_IM_RESOLUTION_ACTION';
CREATE UNIQUE INDEX PK_IM_RESOLUTION_ACTION ON IM_RESOLUTION_ACTION 
    ( 
     DOC_ID ASC , 
     ITEM ASC , 
     REASON_CODE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_RESOLUTION_ACTION';
ALTER TABLE IM_RESOLUTION_ACTION 
    ADD CONSTRAINT PK_IM_RESOLUTION_ACTION PRIMARY KEY ( DOC_ID, ITEM, REASON_CODE_ID ) 
    USING INDEX PK_IM_RESOLUTION_ACTION ;



PROMPT CREATING TABLE 'IM_REV_VAT_DOC_ITEM_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_REV_VAT_DOC_ITEM_GTT 
    ( 
     INJECT_ID             NUMBER (10)  NOT NULL , 
     INJECT_DOC_ID         NUMBER (10)  NOT NULL , 
     TRANSACTION_ID        NUMBER (10)  NOT NULL , 
     DOC_DATE              DATE  NOT NULL , 
     MERCH_TYPE            VARCHAR2 (6)  NOT NULL , 
     DETAIL_ID             NUMBER (10)  NOT NULL , 
     ITEM                  VARCHAR2 (25)  NOT NULL , 
     TAX_CODE              VARCHAR2 (6)  NOT NULL , 
     TAX_RATE              NUMBER (20,10)  NOT NULL , 
     TAX_BASIS             NUMBER (20,4)  NOT NULL , 
     VAT_REGION            NUMBER (4)  NOT NULL , 
     REVERSE_VAT_THRESHOLD NUMBER (20,4)  NOT NULL 
    ) 
    ON COMMIT DELETE ROWS 
;



COMMENT ON TABLE IM_REV_VAT_DOC_ITEM_GTT IS 'Temporary table to hold document detail information required during reverse VAT validation'
;


COMMENT ON COLUMN IM_REV_VAT_DOC_ITEM_GTT.INJECT_ID IS 'Inject ID, unique for each injecting process' 
;

COMMENT ON COLUMN IM_REV_VAT_DOC_ITEM_GTT.INJECT_DOC_ID IS 'Injector document ID, unique for each documents that is unique globally' 
;

COMMENT ON COLUMN IM_REV_VAT_DOC_ITEM_GTT.TRANSACTION_ID IS 'Transaction ID, unique for each document per inecting process. May not be unique globally' 
;



PROMPT CREATING TABLE 'IM_RWO_SHIPMENT_HIST';
CREATE TABLE IM_RWO_SHIPMENT_HIST 
    ( 
     SHIPMENT            NUMBER (12)  NOT NULL , 
     ORDER_NO            NUMBER (12) , 
     STATUS_CODE         VARCHAR2 (1)  NOT NULL , 
     INVC_MATCH_STATUS   VARCHAR2 (1) , 
     ORDER_SUPPLIER      NUMBER (10) , 
     ORDER_CURRENCY_CODE VARCHAR2 (3) , 
     RECEIVE_DATE        DATE , 
     TO_LOC              NUMBER (10) , 
     TO_LOC_TYPE         VARCHAR2 (1) , 
	 CREATED_BY 		 VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		 DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	 VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	 DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	 NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.SHIPMENT IS 'shipment id' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.ORDER_NO IS 'order number' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.STATUS_CODE IS 'status code' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.INVC_MATCH_STATUS IS 'invoice match status' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.ORDER_SUPPLIER IS 'supplier in the order' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.ORDER_CURRENCY_CODE IS 'order currency code' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.RECEIVE_DATE IS 'received date' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.TO_LOC IS 'location' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.TO_LOC_TYPE IS 'location type' 
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RWO_SHIPMENT_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_RWO_SHIPMENT_HIST';
CREATE UNIQUE INDEX PK_IM_RWO_SHIPMENT_HIST ON IM_RWO_SHIPMENT_HIST 
    ( 
     SHIPMENT ASC 
    ) 
    TABLESPACE RETAIL_INDEX ;

PROMPT CREATING PRIMARY KEY ON 'IM_RWO_SHIPMENT_HIST';
ALTER TABLE IM_RWO_SHIPMENT_HIST 
    ADD CONSTRAINT PK_IM_RWO_SHIPMENT_HIST PRIMARY KEY ( SHIPMENT ) 
    USING INDEX PK_IM_RWO_SHIPMENT_HIST ;




PROMPT CREATING TABLE 'IM_RWO_SHIPSKU_HIST';
CREATE TABLE IM_RWO_SHIPSKU_HIST 
    ( 
     SHIPMENT           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     QTY_RECEIVED       NUMBER (12,4) , 
     UNIT_COST          NUMBER (20,4)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.SHIPMENT IS 'shipment' 
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.ITEM IS 'item id' 
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.QTY_RECEIVED IS 'quantity received' 
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.UNIT_COST IS 'unit cost' 
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_RWO_SHIPSKU_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_RWO_SHIPSKU_HIST';
CREATE UNIQUE INDEX PK_IM_RWO_SHIPSKU_HIST ON IM_RWO_SHIPSKU_HIST 
    ( 
     SHIPMENT ASC , 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX ;

PROMPT CREATING PRIMARY KEY ON 'IM_RWO_SHIPSKU_HIST';
ALTER TABLE IM_RWO_SHIPSKU_HIST 
    ADD CONSTRAINT PK_IM_RWO_SHIPSKU_HIST PRIMARY KEY ( SHIPMENT, ITEM ) 
    USING INDEX PK_IM_RWO_SHIPSKU_HIST ;




PROMPT CREATING TABLE 'IM_SUMMARY_MATCH_HISTORY';
CREATE TABLE IM_SUMMARY_MATCH_HISTORY 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     AUTO_MATCHED       VARCHAR2 (1)  NOT NULL , 
     EXACT_MATCH        VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUMMARY_MATCH_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_HISTORY 
    ADD CONSTRAINT CHK_IM_SUM_MTCH_HIST_AUTO_MAT 
    CHECK (AUTO_MATCHED IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUMMARY_MATCH_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_HISTORY 
    ADD CONSTRAINT CHK_IM_SUM_MTCH_HIST_EXACT_MAT 
    CHECK (EXACT_MATCH IN ('N','Y')) 
;


COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.MATCH_ID IS 'this column holds a system generated number for matching.' 
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.AUTO_MATCHED IS 'this column indicates whether the match was obtained automatically by the system or manually.' 
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.EXACT_MATCH IS 'this column indicates whether the match was an exact match or whether it was not exact but within tolerance.' 
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_HISTORY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_SUMMARY_MATCH_HISTORY';
CREATE UNIQUE INDEX PK_IM_SUMMARY_MATCH_HISTORY ON IM_SUMMARY_MATCH_HISTORY 
    ( 
     MATCH_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_SUMMARY_MATCH_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_HISTORY 
    ADD CONSTRAINT PK_IM_SUMMARY_MATCH_HISTORY PRIMARY KEY ( MATCH_ID ) 
    USING INDEX PK_IM_SUMMARY_MATCH_HISTORY ;




PROMPT CREATING TABLE 'IM_SUMMARY_MATCH_INVC_HISTORY';
CREATE TABLE IM_SUMMARY_MATCH_INVC_HISTORY 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     DOC_ID	            NUMBER (10)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_SUMMARY_MATCH_INVC_HISTORY.MATCH_ID IS 'this column references the match group this invoice is part of.' 
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_INVC_HISTORY.DOC_ID is 'this column references the invoice that is matched in the group.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_INVC_HISTORY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_INVC_HISTORY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_INVC_HISTORY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_INVC_HISTORY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_INVC_HISTORY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_SUMMARY_MATCH_INVC_HIST';
CREATE UNIQUE INDEX PK_IM_SUMMARY_MATCH_INVC_HIST ON IM_SUMMARY_MATCH_INVC_HISTORY 
    ( 
     MATCH_ID ASC , 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_SUMMARY_MATCH_INVC_HIST_I1';
CREATE INDEX IM_SUMMARY_MATCH_INVC_HIST_I1 ON IM_SUMMARY_MATCH_INVC_HISTORY 
    ( 
     DOC_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_SUMMARY_MATCH_INVC_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_INVC_HISTORY 
    ADD CONSTRAINT PK_IM_SUMMARY_MATCH_INVC_HIST PRIMARY KEY ( MATCH_ID, DOC_ID ) 
    USING INDEX PK_IM_SUMMARY_MATCH_INVC_HIST ;




PROMPT CREATING TABLE 'IM_SUMMARY_MATCH_RCPT_HISTORY';
CREATE TABLE IM_SUMMARY_MATCH_RCPT_HISTORY 
    ( 
     MATCH_ID           NUMBER (10)  NOT NULL , 
     SHIPMENT           NUMBER (12)  NOT NULL , 
	 CREATED_BY 		VARCHAR2 (60) DEFAULT USER NOT NULL ,
     CREATION_DATE 		DATE DEFAULT SYSDATE NOT NULL , 
     LAST_UPDATED_BY 	VARCHAR2 (60) DEFAULT USER NOT NULL , 
     LAST_UPDATE_DATE 	DATE DEFAULT SYSDATE NOT NULL , 
     OBJECT_VERSION_ID 	NUMBER (15) DEFAULT 1 NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_SUMMARY_MATCH_RCPT_HISTORY.MATCH_ID IS 'this column references the matching group this receipt is part of.' 
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_RCPT_HISTORY.SHIPMENT is 'this column references the receipt that is matched.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_RCPT_HISTORY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_RCPT_HISTORY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_RCPT_HISTORY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_RCPT_HISTORY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SUMMARY_MATCH_RCPT_HISTORY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'PK_IM_SUMMARY_MATCH_RCPT_HIST';
CREATE UNIQUE INDEX PK_IM_SUMMARY_MATCH_RCPT_HIST ON IM_SUMMARY_MATCH_RCPT_HISTORY 
    ( 
     MATCH_ID ASC , 
     SHIPMENT ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_SUMMARY_MATCH_RCPT_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_RCPT_HISTORY 
    ADD CONSTRAINT PK_IM_SUMMARY_MATCH_RCPT_HIST PRIMARY KEY ( MATCH_ID, SHIPMENT ) 
    USING INDEX PK_IM_SUMMARY_MATCH_RCPT_HIST ;




PROMPT CREATING TABLE 'IM_SUPPLIER_GROUPS';
CREATE TABLE IM_SUPPLIER_GROUPS 
    ( 
     GROUP_ID               NUMBER (10)  NOT NULL , 
     TOTAL_QTY_REQUIRED_IND VARCHAR2 (1)  NOT NULL , 
     MATCH_TOTAL_QTY_IND    VARCHAR2 (1)  NOT NULL , 
	 CREATED_BY  	   		VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     		DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   		VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  		DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 		NUMBER (15) DEFAULT 1 NOT NULL , 
	 MATCH_KEY 				VARCHAR2 (3 ) DEFAULT 'POL' NOT NULL ,
	 MATCH_STGY_ID 			NUMBER (10) NULL , 
	 SKU_COMP_PERCENT 		NUMBER (4,2) NULL ,
	 GROUP_DESC 			VARCHAR2 (240 ) DEFAULT 'Supplier Group Description' NOT NULL ,
	 AP_REVIEWER 			VARCHAR2 (30 ) NULL , 
	 QTY_DISC_DAY_BEFORE_RTE NUMBER (3) DEFAULT 10 NOT NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_SUPPLIER_GROUPS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.MATCH_KEY is 'The Matching Key which would define the receipts being selected for matching against the invoices from the suppliers belonging to this group.
Possible Values:
POL - PO/Loc,
PO    - PO,
SSL  - Supp-Site/Loc,
SS    - Supp-Site,
SL    - Supplier/Loc,
S      - Supplier,
SGL  - Supplier-Group/Loc,
SG  - Supplier-Group'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.MATCH_STGY_ID is 'The ID of the Matching startegy that would be used for matching invoices from the suppliers belonging to this group.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.SKU_COMP_PERCENT is 'The Minimum Sku Compliance Percentage required for a summary match.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.GROUP_DESC is 'Description of the Supplier Group.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.AP_REVIEWER is 'Defines the Accounts Payable Employee who is the default reviewer for the invoices from the suppliers which belong to this group.'
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.QTY_DISC_DAY_BEFORE_RTE is 'Defines the earliest allowable routing date. May or may not be actual routing date'
;
PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_GROUPS';
ALTER TABLE IM_SUPPLIER_GROUPS 
    ADD CONSTRAINT CHK_IM_SUPP_GRP_TOT_QT_REQ_IND 
    CHECK (TOTAL_QTY_REQUIRED_IND IN ('N','Y')) 
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_GROUPS';
ALTER TABLE IM_SUPPLIER_GROUPS 
	ADD CONSTRAINT CHK_ISG_MATCH_KEY 
	CHECK (MATCH_KEY IN ('POL','PO','SSL','SS','SL','S','SGL','SG',NULL))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_GROUPS';
ALTER TABLE IM_SUPPLIER_GROUPS 
    ADD CONSTRAINT CHK_IM_SUPP_GRP_MTCH_TOT_QT_IN 
    CHECK (MATCH_TOTAL_QTY_IND IN ('N','Y')) 
;


COMMENT ON COLUMN IM_SUPPLIER_GROUPS.GROUP_ID IS 'the group id' 
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.TOTAL_QTY_REQUIRED_IND IS 'the indicator of whether total quantity is required' 
;

COMMENT ON COLUMN IM_SUPPLIER_GROUPS.MATCH_TOTAL_QTY_IND IS 'the indicator of whether match total quantity is required' 
;
PROMPT CREATING INDEX 'PK_IM_SUPPLIER_GROUPS';
CREATE UNIQUE INDEX PK_IM_SUPPLIER_GROUPS ON IM_SUPPLIER_GROUPS 
    ( 
     GROUP_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_SUPPLIER_GROUPS';
ALTER TABLE IM_SUPPLIER_GROUPS 
    ADD CONSTRAINT PK_IM_SUPPLIER_GROUPS PRIMARY KEY ( GROUP_ID ) 
    USING INDEX PK_IM_SUPPLIER_GROUPS ;




PROMPT CREATING TABLE 'IM_SUPPLIER_GROUP_MEMBERS';
CREATE TABLE IM_SUPPLIER_GROUP_MEMBERS 
    ( 
     GROUP_ID    NUMBER (10)  NOT NULL , 
     SUPPLIER    NUMBER (10)  NOT NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;

	

COMMENT ON COLUMN IM_SUPPLIER_GROUP_MEMBERS.GROUP_ID IS 'the supplier group id' 
;

COMMENT ON COLUMN IM_SUPPLIER_GROUP_MEMBERS.SUPPLIER is 'the supplier id'
;
-- PROMPT CREATING INDEX 'UK_IM_SUPPLIER_GROUP_MEMBERS';
-- CREATE UNIQUE INDEX UK_IM_SUPPLIER_GROUP_MEMBERS ON IM_SUPPLIER_GROUP_MEMBERS 
    -- ( 
     -- SUPPLIER ASC 
    -- ) 
    -- TABLESPACE RETAIL_INDEX 
    -- INITRANS 12 ;
	
PROMPT CREATING UNIQUE KEY ON 'UK_IM_SUPPLIER_GROUP_MEMBERS';
ALTER TABLE IM_SUPPLIER_GROUP_MEMBERS
	ADD CONSTRAINT UK_IM_SUPPLIER_GROUP_MEMBERS  UNIQUE ( SUPPLIER )
	USING INDEX 
	TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	
	
PROMPT CREATING INDEX 'PK_IM_SUPPLIER_GROUP_MEMBERS';
CREATE UNIQUE INDEX PK_IM_SUPPLIER_GROUP_MEMBERS ON IM_SUPPLIER_GROUP_MEMBERS 
    ( 
     GROUP_ID ASC , 
     SUPPLIER ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_SUPPLIER_GROUP_MEMBERS';
ALTER TABLE IM_SUPPLIER_GROUP_MEMBERS 
    ADD CONSTRAINT PK_IM_SUPPLIER_GROUP_MEMBERS PRIMARY KEY ( GROUP_ID, SUPPLIER ) 
    USING INDEX PK_IM_SUPPLIER_GROUP_MEMBERS ;




PROMPT CREATING TABLE 'IM_SUPPLIER_OPTIONS';
CREATE TABLE IM_SUPPLIER_OPTIONS 
    ( 
     SUPPLIER                    NUMBER (10)  NOT NULL , 
     SEND_DEBIT_MEMO             VARCHAR2 (6)  NOT NULL , 
     MANUALLY_PAID_IND           VARCHAR2 (1)  NOT NULL , 
     USE_INVOICE_TERMS_IND       VARCHAR2 (1)  NOT NULL , 
     ROG_DATE_ALLOWED_IND        VARCHAR2 (1)  NOT NULL , 
     AP_REVIEWER                 VARCHAR2 (30)  NOT NULL , 
     CLOSE_OPEN_SHIPMENT_DAYS    NUMBER (3) , 
     QTY_DISC_DAY_BEFORE_RTE     NUMBER (3)  NOT NULL , 
     HOLD_INVOICES               VARCHAR2 (1) DEFAULT 'N'  NOT NULL ,
	 CREATED_BY  	   			 VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     			 DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   			 VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  			 DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 			 NUMBER (15) DEFAULT 1 NOT NULL , 
	 MATCH_KEY 					 VARCHAR2 (3 ) NULL , 
	 MATCH_STGY_ID 				 NUMBER (10) NULL ,
	 SKU_COMP_PERCENT 			 NUMBER (4,2) NULL , 
	 MATCH_TOTAL_QTY_IND 		 VARCHAR2 (1 ) DEFAULT 'N' NOT NULL , 
	 TOTAL_QTY_REQUIRED_IND 	 VARCHAR2 (1 ) DEFAULT 'N' NOT NULL  
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;




PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT CHK_IM_SUP_OPT_SEND_DEBIT_MEMO 
    CHECK ( SEND_DEBIT_MEMO IN ('A', 'L', 'N')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT CHK_IM_SUP_OPT_MANUAL_PAID_IND 
    CHECK ( MANUALLY_PAID_IND IN ('N', 'Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT CHK_IM_SUP_OPT_USE_INVC_TERMS 
    CHECK ( USE_INVOICE_TERMS_IND IN ('N', 'Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT CHK_IM_SUP_OPT_ROG_DATE_ALLOW 
    CHECK ( ROG_DATE_ALLOWED_IND IN ('N', 'Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT CHK_IM_SUP_OPT_CLOSE_OPEN_SHIP 
    CHECK ( CLOSE_OPEN_SHIPMENT_DAYS BETWEEN 0 AND 999) 
;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT CHK_IM_SUP_OPT_QTY_DISC_DAY_BE 
    CHECK ( QTY_DISC_DAY_BEFORE_RTE BETWEEN 0 AND 999) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT CHK_IM_SUP_OPT_HOLD_INVOICES 
    CHECK (HOLD_INVOICES IN ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
	ADD CONSTRAINT CHK_ISO_MATCH_KEY 
	CHECK (MATCH_KEY IN ('POL','PO','SSL','SS','SL','S',NULL))
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.SUPPLIER IS 'this column holds the id of the supplier whose retek invoice matching options are being defined.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.SEND_DEBIT_MEMO IS 'this column determines the type of document to send to the supplier when a resolution document is automatically being created to resolve an invoice discrepancy (invoice amount > receipt amount).  always indicates the system should always create debit memos for this vendor to resolved invoice discrepancies.  never indicates the system should never send debit memos for this vendor to resolve invoice discrepancies (credit note requests will be sent instead).  only when credit note is late indicates that debit memos should be sent only after a credit note request due date has passed.  valid values for this column are a - always, l - only when credit note is late and n - never.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.MANUALLY_PAID_IND IS 'the column will indicate whether the suppliers invoices are manually paid.  valid values include y yes and n no' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.USE_INVOICE_TERMS_IND IS 'this column allows the retailer to indicate that this supplier always requires the invoice terms to be used.  yes indicates the invoice terms must always be used.  no indicates that terms other than the invoice terms can be used (e.g. po terms, receipt of goods (rog) terms, etc.).  if this column is yes, the best terms calculation will always produce the invoice terms.  if this column is no, the best terms calculation will consider all terms to find the most cost effective method of dealing with the supplier on a particular invoice.  valid values for this column are y and n.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.ROG_DATE_ALLOWED_IND IS 'this column allows the retailer to indicate that this supplier allows the receipt-of-goods (rog) date to be used when determining the best terms for an invoice.  yes indicates the supplier allows the use to the rog to determine the best terms date for an invoice.  no indicates the supplier does not allow the rogdate to be used.  if this column is yes, the best terms calculation can use the rog date for the final terms if rog date terms are better than the invoice date terms.  if this column is no, the best terms calculation must use the invoice date terms.  valid values for this column are y and n.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.AP_REVIEWER IS 'this column allows the retailer to indicate which accounts payable employee will be the default reviewer for this suppliers invoices.  this column can hold the id of any user with permissions to access retek invoice matching.  these users will be defined on the im_business_role_member table.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.CLOSE_OPEN_SHIPMENT_DAYS IS 'this column holds the number of days that a shipment from this supplier can remain in ready for match status before it is automatically closed by the retek invoice match close open shipment batch process.  if a value is not defined for this supplier, the system level close_open_ship_days (as defined on the im_systems_option table) will be used by the system.  valid values for this field are non-negative, whole numbers up to three digits in length.  this field can be left null.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.QTY_DISC_DAY_BEFORE_RTE IS 'this field is used in supplier options details page.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.HOLD_INVOICES IS 'determines if invoices should be held from payment for this supplier if there are outstanding credit note requests for a given invoice.  if yes, the posting process will exclude documents with im_doc_head.hold_status = h.  valid options are: y - yes, n - no.' 
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.MATCH_KEY is 'The Matching Key which would define the receipts being selected for matching against the invoices from this supplier.
Possible Values:
POL - PO/Loc,
PO    - PO,
SSL  - Supp-Site/Loc,
SS    - Supp-Site,
SL    - Supplier/Loc,
S      - Supplier'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.MATCH_STGY_ID is 'The ID of the Matching startegy that the supplier would use for matching its invoices.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.SKU_COMP_PERCENT is 'The Minimum Sku Compliance Percentage required for a summary match.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.MATCH_TOTAL_QTY_IND is 'This column defines whether Quantity will be considered during Summary level matching.'
;

COMMENT ON COLUMN IM_SUPPLIER_OPTIONS.TOTAL_QTY_REQUIRED_IND is 'This column defines whether Total Qty is required at a document header level.'
;
PROMPT CREATING INDEX 'IM_SUPPLIER_OPTIONS_I1';
CREATE INDEX IM_SUPPLIER_OPTIONS_I1 ON IM_SUPPLIER_OPTIONS 
    ( 
     AP_REVIEWER ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'PK_IM_SUPPLIER_OPTIONS';
CREATE UNIQUE INDEX PK_IM_SUPPLIER_OPTIONS ON IM_SUPPLIER_OPTIONS 
    ( 
     SUPPLIER ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS 
    ADD CONSTRAINT PK_IM_SUPPLIER_OPTIONS PRIMARY KEY ( SUPPLIER ) 
    USING INDEX PK_IM_SUPPLIER_OPTIONS ;




PROMPT CREATING TABLE 'IM_SYSTEM_OPTIONS';
CREATE TABLE IM_SYSTEM_OPTIONS 
    ( 
     DEBIT_MEMO_SEND_DAYS          NUMBER (3)  NOT NULL , 
     CLOSE_OPEN_RECEIPT_DAYS       NUMBER (3)  NOT NULL , 
     DOC_HIST_DAYS                 NUMBER (3)  NOT NULL , 
     DEBIT_MEMO_PREFIX_COST        VARCHAR2 (30)  NOT NULL , 
     DEBIT_MEMO_PREFIX_QTY         VARCHAR2 (30)  NOT NULL , 
     DEBIT_MEMO_PREFIX_TAX         VARCHAR2 (30)  NOT NULL , 
     CREDIT_MEMO_PREFIX_COST       VARCHAR2 (30)  NOT NULL , 
     CREDIT_MEMO_PREFIX_QTY        VARCHAR2 (30)  NOT NULL , 
     CREDIT_NOTE_REQ_PREFIX_COST   VARCHAR2 (30)  NOT NULL , 
     CREDIT_NOTE_REQ_PREFIX_QTY    VARCHAR2 (30)  NOT NULL , 
     CREDIT_NOTE_REQ_PREFIX_TAX    VARCHAR2 (30)  NOT NULL , 
     POST_DATED_DOC_DAYS           NUMBER (3)  NOT NULL , 
     MAX_TOLERANCE_PCT             NUMBER (7,4)  NOT NULL , 
     DAYS_BEFORE_DUE_DATE          NUMBER (3)  NOT NULL , 
     DFLT_PAY_NOW_TERMS_DEALS      VARCHAR2 (15)  NULL , 
     CALC_TOLERANCE                NUMBER (7,4)  NOT NULL , 
     TAX_VALIDATION_TYPE           VARCHAR2 (5)  DEFAULT 'RECON' NOT NULL , 
     TAX_DOCUMENT_CREATION_LVL     VARCHAR2 (12)  DEFAULT 'ITEM' NOT NULL , 
     DFLT_HEADER_TAX               VARCHAR2 (1)  NOT NULL , 
     TAX_RESOLUTION_DUE_DAYS       NUMBER (3)  NOT NULL , 
     CALC_TOLERANCE_IND            VARCHAR2 (1) DEFAULT 'A'  NOT NULL , 
     RECEIPT_WRITE_OFF_DAYS        NUMBER (3) DEFAULT 0  NOT NULL , 
     DFLT_COST_OVERBILL_RC         VARCHAR2 (20) , 
     DFLT_QTY_OVERBILL_RC          VARCHAR2 (20) , 
     DFLT_COST_UNDERBILL_RC        VARCHAR2 (20) , 
     DFLT_QTY_UNDERBILL_RC         VARCHAR2 (20) , 
     NUM_TAX_ALLOW                 VARCHAR2 (1) DEFAULT 'S'  NOT NULL , 
     BALANCING_TOLERANCE           NUMBER (20,4) DEFAULT 1 , 
     POST_ON_DOC_HEADER            VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
     PRORATE_ACROSS_TAX_CODES      VARCHAR2 (1) DEFAULT 'N'  NOT NULL , 
	 CREATED_BY  	   			   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     			   DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   			   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  			   DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID 			   NUMBER (15) DEFAULT 1 NOT NULL , 
	 LUW_AUTO_MATCH 			   NUMBER (10) DEFAULT 10000 NOT NULL ,
	 DELAY_LN_MTCH_UNTL_ROUTE_DATE VARCHAR2 (1 ) DEFAULT 'Y' NOT NULL , 
	 DFLT_PAY_NOW_TERMS_RTV 	   VARCHAR2 (15 ) NULL , 
	 TOTAL_QTY_REQUIRED 		   VARCHAR2 (1 ) DEFAULT 'N' NOT NULL , 
	 DFLT_NON_MERCH_LOCATION 	   NUMBER (10) NULL , 
	 DFLT_DEPT 					   NUMBER (4) NULL , 
	 DFLT_CLASS 				   NUMBER (4) NULL , 
	 GL_MAX_SEGMENTS 			   NUMBER (2) DEFAULT 20 NOT NULL , 
	 DFLT_SOB 					   NUMBER (15) NULL , 
	 DEAL_DOCS_PURGE_DAYS 		   NUMBER (3) DEFAULT 90 NOT NULL , 
	 DOC_QTY_DECIMALS 			   NUMBER (1) DEFAULT 4 NOT NULL , 
	 BATCH_DATE_FORMAT 			   VARCHAR2 (20 ) DEFAULT 'yyyyMMddHHmmss' NOT NULL , 
	 WS_FIN_ACC_VALID_URL 		   VARCHAR2 (1000 ) NULL , 
	 WS_FIN_ACC_VALID_CRED 		   VARCHAR2 (1 ) NULL , 
	 WS_FIN_DRILL_FWD_URL 		   VARCHAR2 (1000 ) NULL , 
	 WS_FIN_DRILL_FWD_CRED 		   VARCHAR2 (1 ) NULL , 
	 INCL_DOC_DATE_FOR_DUPL_CHECK  VARCHAR2 (1 ) DEFAULT 'N' NOT NULL ,
	 INCL_DOC_YEAR_FOR_DUPL_CHECK  VARCHAR2 (1 ) DEFAULT 'N' NOT NULL ,
	 POST_INTRA_REGION_TAX_IND 	   VARCHAR2 (1 ) DEFAULT 'N' NOT NULL , 
	 RESOLUTION_DUE_DAYS 		   NUMBER (3) DEFAULT 1 NOT NULL ,
	 OBIEE_ENABLED VARCHAR2 (1 ) DEFAULT 'N' NOT NULL ,
	 LUW_EDI_INJECTOR NUMBER (10) DEFAULT 10000 NOT NULL
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT CHK_ISO_DELAY_LN_MTCH_YN 
	CHECK (DELAY_LN_MTCH_UNTL_ROUTE_DATE IN ('Y','N'))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_DEBIT_MEMO_SEND 
    CHECK ( DEBIT_MEMO_SEND_DAYS BETWEEN 0 AND 999) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_CLOSE_OPEN_REC 
    CHECK ( CLOSE_OPEN_RECEIPT_DAYS BETWEEN 0 AND 999) 
;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_DOC_HIST_DAYS 
    CHECK ( DOC_HIST_DAYS BETWEEN 0 AND 999) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_DEB_MEM_PRE_COS 
    CHECK ( DEBIT_MEMO_PREFIX_COST = upper(DEBIT_MEMO_PREFIX_COST)) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_DEB_MEM_PRE_QTY 
    CHECK ( DEBIT_MEMO_PREFIX_QTY = upper(DEBIT_MEMO_PREFIX_QTY)) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_CRE_MEM_PRE_COS 
    CHECK ( CREDIT_MEMO_PREFIX_COST = upper(CREDIT_MEMO_PREFIX_COST)) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_CRE_MEM_PRE_QTY 
    CHECK ( CREDIT_MEMO_PREFIX_QTY = upper(CREDIT_MEMO_PREFIX_QTY)) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_TAX_VALID_TYPE 
    CHECK ( TAX_VALIDATION_TYPE IN ('RECON', 'RETLR', 'VENDR')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_TAX_DOC_CR_LVL 
    CHECK ( TAX_DOCUMENT_CREATION_LVL IN ('FULL_INVOICE', 'ITEM')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_DFAULT_TAX_HEAD 
    CHECK (DFLT_HEADER_TAX in ('N','Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_CALC_TOLERA_IND 
    CHECK ( CALC_TOLERANCE_IND IN('P','A')) 
;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_NUM_TAX_ALLOW 
    CHECK (NUM_TAX_ALLOW IN ('N','S')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
    ADD CONSTRAINT CHK_IM_SYS_OPT_PST_BSD_DOC_HD 
    CHECK ( POST_ON_DOC_HEADER IN ('N', 'Y')) 
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT CHK_IM_SYS_OPT_GL_MAX_SEG 
	CHECK (GL_MAX_SEGMENTS <= 20)
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT CHK_IM_SYS_OPT_DOC_QTY_DEC 
	CHECK (DOC_QTY_DECIMALS <= 4)
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT CHK_IM_SYS_OPT_INCL_DOC_DATE 
	CHECK (INCL_DOC_DATE_FOR_DUPL_CHECK IN ('Y', 'N'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT CHK_IM_SYS_OPT_INCL_DOC_YEAR 
	CHECK (INCL_DOC_YEAR_FOR_DUPL_CHECK IN ('Y', 'N'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT CHK_IM_SYS_OPT_POST_INTRA_TAX 
	CHECK (POST_INTRA_REGION_TAX_IND IN ('Y', 'N'))
;



COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DEBIT_MEMO_SEND_DAYS IS 'this column holds the number of days prior to the due date on an invoice that a debit memo should be sent if a credit note has not yet been received. this is applied to all suppliers for which the only when credit memo is late option is selected.  valid values for this column are non-negative, whole numbers up to three digits in length.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CLOSE_OPEN_RECEIPT_DAYS IS 'this column holds the number of days that a shipment can remain in ready for match status before it is automatically closed by retek invoice match.  valid values for this field are non-negative, whole numbers up to three digits in length.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DOC_HIST_DAYS IS 'this column contains the number of days that matched/posted invoices should be held in the system before they are purged.  valid values for this column are non-negative, whole numbers up to three digits in length.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DEBIT_MEMO_PREFIX_COST IS 'this column holds the prefix that indicates a document is a debit memo due to cost.  when an automatic debit memo is created to resolve a price discrepancy this value will be concatenated to the beginning of the invoices supplier invoice number.  this field must be an upper case character string.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DEBIT_MEMO_PREFIX_QTY IS 'this column holds the prefix that indicates a document is a debit memo due to quantity.  when an automatic debit memo is created to resolve a quantity discrepancy this value will be concatenated to the beginning of the invoices supplier invoice number.  this field must be an upper case character string.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DEBIT_MEMO_PREFIX_TAX IS 'this column holds the prefix that indicates a document is a debit memo due to tax being invalid. when an automatic debit memo is created to resolve a tax discrepancy this value will be concatenated to the beginning of the invoices supplier invoice number. this field must be an upper case character string. this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CREDIT_MEMO_PREFIX_COST IS 'this column holds the prefix that indicates a document is a credit memo due to cost.  this column holds the prefix that indicates a credit memo.  when an automatic credit memo is created to resolve a cost discrepancy this value should be concatenated to the beginning of the invoices supplier invoice number.  this field must be an upper case character string.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CREDIT_MEMO_PREFIX_QTY IS 'this column holds the prefix that indicates a document is a credit memo due to quantity.  when an automatic credit memo is created to resolve a quantity discrepancy this value should be concatenated to the beginning of the invoices supplier invoice number.  this field must be an upper case character string.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CREDIT_NOTE_REQ_PREFIX_COST IS 'this column holds the prefix that indicates a document is a credit note request due to cost.   when an automatic credit note request is created to resolve a cost discrepancy this value should be concatenated to the beginning of the invoices supplier invoice number.  this field must be an upper case character string.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CREDIT_NOTE_REQ_PREFIX_QTY IS 'this column holds the prefix that indicates a document is a credit note request due to quantity.  when an automatic credit note request is created to resolve a quantity discrepancy this value should be concatenated to the beginning of the invoices supplier invoice number.  this field must be an upper case character string.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CREDIT_NOTE_REQ_PREFIX_TAX IS 'this column holds the prefix that indicates a document is a credit note request due to tax being invalid. when an automatic credit note request is created to resolve a tax discrepancy this value will be concatenated to the beginning of the invoices supplier invoice number. this field must be an upper case character string. this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.POST_DATED_DOC_DAYS IS 'this column contains the number of days that a document can be post dated.  this column is mandatory not null and must be a whole number.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.MAX_TOLERANCE_PCT IS 'determines the maximum tolerance that can be entered on the document matching tolerance matching detail screen.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DAYS_BEFORE_DUE_DATE IS 'this parameter will indicate the maximum number of days before the invoice due date that any discrepancies for that invoice should be routed.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CALC_TOLERANCE IS 'the vat tolerance percentage' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.TAX_VALIDATION_TYPE is 'this column indicates how tax validation will be done in the system. value can be vendr for vendor, retlr for retailer, recon for reconcile, or notax for no validation)'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.TAX_DOCUMENT_CREATION_LVL is 'this system option will control how tax debit memos, and tax credit note requests are created.  this system option will control the actions that are available when reason codes are being created.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_HEADER_TAX  is 'indicates if detail level tax information should be rolled up and defaulted at the header level.  y tax will default from details to header.  n tax will not default.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.TAX_RESOLUTION_DUE_DAYS IS 'this column holds the number of days that a tax resolution can stay outstanding from when it was routed for review to when it is due.  valid values for this field are non-negative, whole numbers up to three digits in length.  this field is mandatory not null.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.RECEIPT_WRITE_OFF_DAYS IS 'receipt write off days' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_COST_OVERBILL_RC is 'Default Cost Overbill Reason Code'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_QTY_OVERBILL_RC is 'Default Qty Overbill Reason Code'
;
	
COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_COST_UNDERBILL_RC is 'Default Cost Underbill Reason Code'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_QTY_UNDERBILL_RC is 'Default Qty Underbill Reason Code'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.NUM_TAX_ALLOW IS 'this column holds the possible number of taxes to be applied' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.BALANCING_TOLERANCE IS 'tolerance setting for adjusting detail lines to align vat amount for balancing.' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.POST_ON_DOC_HEADER is 'when set to y will ensure that the posted amount in im_ap_stage_head/im_financials_stage is equal to total_cost in header of an invoice.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.PRORATE_ACROSS_TAX_CODES IS 'should prorate across tax codes' 
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.LUW_AUTO_MATCH is 'Number of Receipt Items that can be processsed in one chunk of Auto Match Batch.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DELAY_LN_MTCH_UNTL_ROUTE_DATE is 'The option that specifies whether the Auto Match should delay detail matching until routing date.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_PAY_NOW_TERMS_RTV is 'Default terms used for RTV and resolution docs driven document payments'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_PAY_NOW_TERMS_DEALS is 'Default Pay now terms for deals'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.TOTAL_QTY_REQUIRED is 'Indicator that defines whether total qty is required at the document header.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_NON_MERCH_LOCATION is 'Default non-mech location'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_DEPT is 'Default fixed deal department'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_CLASS is 'Default fixed deal class'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.GL_MAX_SEGMENTS is 'Maximum GL segments that can be defined in the system.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DFLT_SOB is 'Default Set of Books'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DEAL_DOCS_PURGE_DAYS is 'Number of days to keep posted deal documents'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.DOC_QTY_DECIMALS is 'Max number of digits allowed for quantity. Both display as well as accepting data'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.BATCH_DATE_FORMAT is 'Expected date format for Injector batch'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.WS_FIN_ACC_VALID_URL is 'provider URL for account validation'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.WS_FIN_ACC_VALID_CRED is 'Enable validation of webservice account credentials. Should be secure'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.WS_FIN_DRILL_FWD_URL is 'provider URL for drill forward'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.WS_FIN_DRILL_FWD_CRED is 'Enable validation of webservice account credentials. Should be secure'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.INCL_DOC_DATE_FOR_DUPL_CHECK is 'Include Document date(date, month and year) while checking for uniqueness on document ID.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.INCL_DOC_YEAR_FOR_DUPL_CHECK is 'Include Document year while checking for uniqueness on document ID.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.POST_INTRA_REGION_TAX_IND is 'Post actual taxes applicable on the item on the location''s vat region (to the financial system) even though the supplier and the location''s vat region are different.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.RESOLUTION_DUE_DAYS is 'Resolution Due days for both Cost and Qty'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.OBIEE_ENABLED is 'Flag associated with OBIEE integration. Used for enabled/disabled OBIEE reports display.'
;

COMMENT ON COLUMN IM_SYSTEM_OPTIONS.LUW_EDI_INJECTOR is 'Number of documents that would be processed by EDI batch in one thread.'
;



PROMPT CREATING TABLE 'IM_TAX_DISCREPANCY';
CREATE TABLE IM_TAX_DISCREPANCY 
    ( 
     DOC_ID             NUMBER (10)  NOT NULL , 
     ORDER_NO           NUMBER (12)  NOT NULL , 
     ITEM               VARCHAR2 (25)  NOT NULL , 
     TAX_CODE           VARCHAR2 (6)  NOT NULL , 
     DOC_TAX_RATE       NUMBER (20,10) , 
     DOC_TAX_AMOUNT     NUMBER (20,4) , 
     VERIFY_TAX_RATE    NUMBER (20,10) , 
     VERIFY_TAX_AMOUNT  NUMBER (20,4) , 
     VERIFY_TAX_SRC     VARCHAR2 (2) , 
     VERIFY_TAX_FORMULA VARCHAR2 (500) , 
     VERIFY_TAX_ORDER   NUMBER (10) ,
	 CREATED_BY  	    VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE      DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY    VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE   DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID  NUMBER (15) DEFAULT 1 NOT NULL ,
	 VERIFY_TAX_CODE VARCHAR2 (6 ) NULL	 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_TAX_DISCREPANCY';
ALTER TABLE IM_TAX_DISCREPANCY 
    ADD CONSTRAINT CHK_ITDY_VERIFY_TAX_SRC 
    CHECK ( VERIFY_TAX_SRC IN ('IN', 'PO', 'SH', 'SY')) 
;


COMMENT ON COLUMN IM_TAX_DISCREPANCY.DOC_ID IS 'the document the discrepancy was recorded on.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.ORDER_NO IS 'the order number containing the item.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.ITEM IS 'the discrepant item.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.TAX_CODE IS 'the discrepant tax code.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.DOC_TAX_RATE IS 'the tax rate on the document.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.DOC_TAX_AMOUNT IS 'the tax amount on the document.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.VERIFY_TAX_RATE IS 'the tax rate according to the tax verification source.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.VERIFY_TAX_AMOUNT IS 'the tax amount according to the tax verification source.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.VERIFY_TAX_SRC IS 'the source of tax information that the discrepancy was created against.  po-purchase order sy-system in-invoice sh-shipment' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.VERIFY_TAX_FORMULA IS 'this column holds the formula for verify tax' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.VERIFY_TAX_ORDER IS 'this column holds the apply order of verify tax source' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY.VERIFY_TAX_CODE is 'the tax code according to the tax verification source'
;
PROMPT CREATING INDEX 'PK_IM_TAX_DISCREPANCY';
CREATE UNIQUE INDEX PK_IM_TAX_DISCREPANCY ON IM_TAX_DISCREPANCY 
    ( 
     DOC_ID ASC , 
     ITEM ASC , 
     TAX_CODE ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_TAX_DISCREPANCY_I1';
CREATE INDEX IM_TAX_DISCREPANCY_I1 ON IM_TAX_DISCREPANCY 
    ( 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_TAX_DISCREPANCY_I2';
CREATE INDEX IM_TAX_DISCREPANCY_I2 ON IM_TAX_DISCREPANCY 
    ( 
     ORDER_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_TAX_DISCREPANCY';
ALTER TABLE IM_TAX_DISCREPANCY 
    ADD CONSTRAINT PK_IM_TAX_DISCREPANCY PRIMARY KEY ( DOC_ID, ITEM, TAX_CODE ) 
    USING INDEX PK_IM_TAX_DISCREPANCY ;




PROMPT CREATING TABLE 'IM_TAX_DISCREPANCY_HISTORY';
CREATE TABLE IM_TAX_DISCREPANCY_HISTORY 
    ( 
     DOC_ID            NUMBER (10)  NOT NULL , 
     ORDER_NO          NUMBER (12)  NOT NULL , 
     ITEM              VARCHAR2 (25)  NOT NULL , 
     TAX_CODE          VARCHAR2 (6)  NOT NULL , 
     DOC_TAX_RATE      NUMBER (20,10) , 
     DOC_TAX_AMOUNT    NUMBER (20,4) , 
     VERIFY_TAX_RATE   NUMBER (20,10) , 
     VERIFY_TAX_AMOUNT NUMBER (20,4) , 
     VERIFY_TAX_SRC    VARCHAR2 (2) , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL ,
	 VERIFY_TAX_CODE VARCHAR2 (6 ) NULL 
    ) 
        INITRANS 6 
        TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_TAX_DISCREPANCY_HISTORY';
ALTER TABLE IM_TAX_DISCREPANCY_HISTORY 
    ADD CONSTRAINT CHK_ITDH_VERIFY_TAX_SRC 
    CHECK (VERIFY_TAX_SRC IN ('PO','SY')) 
;


COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.DOC_ID IS 'the document the discrepancy was recorded on.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.ORDER_NO IS 'the order number containing the item.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.ITEM IS 'the discrepant item.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.TAX_CODE IS 'the discrepant tax code.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.DOC_TAX_RATE IS 'the tax rate on the document.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.DOC_TAX_AMOUNT IS 'the tax amount on the document.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.VERIFY_TAX_RATE IS 'the tax rate according to the tax verification source.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.VERIFY_TAX_AMOUNT IS 'the tax amount according to the tax verification source.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.VERIFY_TAX_SRC IS 'the source of tax information that the descrepancy was created against.' 
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_TAX_DISCREPANCY_HISTORY.VERIFY_TAX_CODE is 'the tax code according to the tax verification source'
;
PROMPT CREATING INDEX 'IM_TAX_DISCREPANCY_HISTORY_I2';
CREATE INDEX IM_TAX_DISCREPANCY_HISTORY_I2 ON IM_TAX_DISCREPANCY_HISTORY 
    ( 
     ORDER_NO ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
PROMPT CREATING INDEX 'IM_TAX_DISCREPANCY_HISTORY_I1';
CREATE INDEX IM_TAX_DISCREPANCY_HISTORY_I1 ON IM_TAX_DISCREPANCY_HISTORY 
    ( 
     ITEM ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;




PROMPT CREATING TABLE 'IM_VALID_ACCOUNTS';
CREATE TABLE IM_VALID_ACCOUNTS 
    ( 
     SET_OF_BOOKS_ID  NUMBER (15)  NOT NULL , 
     SEGMENT1          VARCHAR2 (25) , 
     SEGMENT2          VARCHAR2 (25) , 
     SEGMENT3          VARCHAR2 (25) , 
     SEGMENT4          VARCHAR2 (25) , 
     SEGMENT5          VARCHAR2 (25) , 
     SEGMENT6          VARCHAR2 (25) , 
     SEGMENT7          VARCHAR2 (25) , 
     SEGMENT8          VARCHAR2 (25) , 
     SEGMENT9          VARCHAR2 (25) , 
     SEGMENT10         VARCHAR2 (25) , 
     SEGMENT11         VARCHAR2 (25) , 
     SEGMENT12         VARCHAR2 (25) , 
     SEGMENT13         VARCHAR2 (25) , 
     SEGMENT14         VARCHAR2 (25) , 
     SEGMENT15         VARCHAR2 (25) , 
     SEGMENT16         VARCHAR2 (25) , 
     SEGMENT17         VARCHAR2 (25) , 
     SEGMENT18         VARCHAR2 (25) , 
     SEGMENT19         VARCHAR2 (25) , 
     SEGMENT20         VARCHAR2 (25) , 
     CREATE_DATE_TIME  DATE , 
     ACCOUNT_TYPE      VARCHAR2 (6)  NOT NULL , 
     ACCOUNT_CODE      VARCHAR2 (20)  NOT NULL , 
     TAX_CODE          VARCHAR2 (6) DEFAULT 'NOCODE'  NOT NULL , 
	 CREATED_BY  	   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 CREATION_DATE     DATE  DEFAULT SYSDATE NOT NULL ,
	 LAST_UPDATED_BY   VARCHAR2 (60)  DEFAULT USER NOT NULL ,
	 LAST_UPDATE_DATE  DATE  DEFAULT SYSDATE NOT NULL , 
	 OBJECT_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL  
    ) 
        TABLESPACE RETAIL_DATA ;



COMMENT ON COLUMN IM_VALID_ACCOUNTS.SET_OF_BOOKS_ID IS 'set of books id' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT1 IS 'segment 1' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT2 IS 'segment 2' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT3 IS 'segment 3' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT4 IS 'segment 4' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT5 IS 'segment 5' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT6 IS 'segment 6' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT7 IS 'segment 7' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT8 IS 'segment 8' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT9 IS 'segment 9' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT10 IS 'segment 10' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT11 IS 'segment 11' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT12 IS 'segment 12' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT13 IS 'segment 13' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT14 IS 'segment 14' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT15 IS 'segment 15' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT16 IS 'segment 16' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT17 IS 'segment 17' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT18 IS 'segment 18' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT19 IS 'segment 19' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.SEGMENT20 IS 'segment 20' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.CREATE_DATE_TIME IS 'created date' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.ACCOUNT_TYPE IS 'account type' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.ACCOUNT_CODE IS 'account code' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.TAX_CODE IS 'Tax code for account segment' 
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_VALID_ACCOUNTS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;



PROMPT CREATING TABLE 'IM_DOC_INVC_SEARCH_WS';
CREATE TABLE IM_DOC_INVC_SEARCH_WS
    (
     WORKSPACE_ID       NUMBER (10,0)  NOT NULL ,
     DOC_ID             NUMBER (10,0)  NOT NULL ,
     EXT_DOC_ID         VARCHAR2 (150) ,
     DOC_SOURCE         VARCHAR2 (6) ,
     TYPE               VARCHAR2 (6) ,
     STATUS             VARCHAR2 (10) ,
     ORDER_NO           NUMBER (12,0) ,
     LOCATION           NUMBER (10,0) ,
     LOC_TYPE           VARCHAR2 (1) ,
     LOC_NAME           VARCHAR2 (150) ,
     VENDOR_TYPE        VARCHAR2 (6) ,
     VENDOR             VARCHAR2 (10) ,
     VENDOR_NAME        VARCHAR2 (240) ,
     SUPPLIER_SITE_ID   VARCHAR2 (10) ,
     SUPPLIER_SITE_NAME VARCHAR2 (240) ,
     DOC_DATE 			DATE ,
     DUE_DATE 			DATE ,
     FREIGHT_TYPE	    VARCHAR2 (6) ,
     CONSIGNMENT_IND    VARCHAR2 (1) ,
     CURRENCY_CODE      VARCHAR2 (3) ,
     AP_REVIEWER        VARCHAR2 (30) ,
	 TOTAL_COST NUMBER (20,4) NULL ,
	 TOTAL_QTY NUMBER (12,4) NULL ,
	 CHOICE_FLAG VARCHAR2 (1 ) NULL ,
	 DOC_HEAD_VERSION_ID NUMBER (15) DEFAULT 1 NOT NULL ,
	 HOLD_STATUS 		VARCHAR2 (1 ) NULL ,
	 PRE_PAID_IND 		VARCHAR2 (1 ) NULL ,
	 MANUALLY_PAID_IND VARCHAR2 (1 ) DEFAULT 'N' NULL
    )
	    INITRANS 6
	    TABLESPACE RETAIL_DATA ;

	

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.WORKSPACE_ID is 'Unique identifier tying the search results to a specific user''s workspace.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.DOC_ID is 'Document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.EXT_DOC_ID is 'EXT_DOC_ID of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.DOC_SOURCE is 'The source of the invoice.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.TYPE is 'TYPE of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.STATUS is 'STATUS of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.ORDER_NO is 'ORDER_NO of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.LOCATION is 'LOCATION of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.LOC_TYPE is 'LOC_TYPE of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.LOC_NAME is 'LOC_NAME of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.VENDOR_TYPE is 'VENDOR_TYPE of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.VENDOR is 'VENDOR of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.VENDOR_NAME is 'VENDOR_NAME of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.SUPPLIER_SITE_ID is 'SUPPLIER_SITE_ID of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.SUPPLIER_SITE_NAME is 'SUPPLIER_SITE_NAME of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.DOC_DATE is 'DOC_DATE of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.DUE_DATE is 'DUE_DATE of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.FREIGHT_TYPE is 'FREIGHT_TYPE of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.CONSIGNMENT_IND is 'CONSIGNMENT_IND of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.CURRENCY_CODE is 'CURRENCY_CODE of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.AP_REVIEWER is 'AP_REVIEWER of the document that meets the search criteria.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.TOTAL_COST is 'Total cost of the invoice with tax included'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.TOTAL_QTY is 'Total quantity of the invoice'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.CHOICE_FLAG is 'This column indicates if the row has been selected in the UI.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.DOC_HEAD_VERSION_ID is 'Object Version ID of the referenced document'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.HOLD_STATUS is 'this column contains the hold status of the document.  based on the supplier option im_supplier_options.hold_invoices, documents can be withheld from the posting process if they are considered to be in held status. valid values are: n - never held, h - currently held, r - previously held, now released.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.PRE_PAID_IND is 'The column will indicate whether the invoice was paid prior to matching.  valid values are Y and N.'
;

COMMENT ON COLUMN IM_DOC_INVC_SEARCH_WS.MANUALLY_PAID_IND is 'this column indicates whether the invoice is manually paid or not.valid values are Y and N.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_DOC_INVC_SEARCH_WS'
ALTER TABLE IM_DOC_INVC_SEARCH_WS
    ADD CONSTRAINT PK_IM_DOC_INVC_SEARCH_WS PRIMARY KEY( WORKSPACE_ID, DOC_ID )
    USING INDEX 
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;	
	
	
	
PROMPT CREATING TABLE 'IM_RESOLUTION_ACTION_WS';
CREATE TABLE IM_RESOLUTION_ACTION_WS
    (
     WORKSPACE_ID NUMBER (10,0) NOT NULL,
     MATCH_LUW_ID NUMBER (10,0) NOT NULL,
     MATCH_KEY_ID NUMBER (10,0) NOT NULL,
     CHUNK_NUM NUMBER (10,0),
     MATCH_GROUP_ID NUMBER (10,0) NOT NULL,
     DOC_ID NUMBER (10,0) NOT NULL,
     ITEM VARCHAR2 (25) NOT NULL,
     REASON_CODE_ID VARCHAR2 (20) NOT NULL,
     ACTION VARCHAR2 (6) NOT NULL,
     QTY NUMBER (12,4),
     UNIT_COST NUMBER (20,4),
     EXTENDED_COST NUMBER (20,4),
     STATUS VARCHAR2 (1) NOT NULL,
     SHIPMENT NUMBER (12,0)
    )
	    INITRANS 6
	    TABLESPACE RETAIL_DATA ;
	
	

COMMENT ON TABLE IM_RESOLUTION_ACTION_WS is 'Workspace used in auto resolution processing.'
;


COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.WORKSPACE_ID is 'Identifier of the workspace the data belongs to.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.CHUNK_NUM is 'Unique ID for the chunk'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.MATCH_GROUP_ID is 'Identifier of the match group the data belongs to.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.DOC_ID is 'this column holds the document to which this resolution action belongs.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.ITEM is 'this column holds the transaction level item that is discrepant on the document or order.  transaction level item means that the item is managed at this level in the merchandising system.  for rms 9, this could be either a pack, fashion sku or staple sku, but this could not be a fashion style.  for rms 10, this must be a transaction level.  this column is mandatory not null.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.REASON_CODE_ID is 'this column holds the user defined reason code id.  a reason code must be unique across all user groups so that it can be mapped to different gl accounts.  reason codes must the upper case character string of not more than 6 characters.  this column is mandatory not null'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.ACTION is 'this column holds the action that is associated with the reason code.  these actions will be performed when a member of this role acts on the either a cost or quantity discrepancy (depending on the reason_code_type).  this field is mandator'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.QTY is 'this column will hold the adjustment quantity for the specified reason code.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.UNIT_COST is 'the column holds the unit cost difference or the new unit cost if action is a receiver cost adjustment.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.EXTENDED_COST is 'this column will hold the extened total cost adjustment for the resolution reason.  extended cost means the cost adjustment amount times the quantity on the document or order'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.STATUS is 'this column will hold the status of the record.  valid values for this field are rolled-up and unrolled.  a record is rolled-up once the action has been done.  it is written to the table in unrolled status.'
;

COMMENT ON COLUMN IM_RESOLUTION_ACTION_WS.SHIPMENT is 'this column holds the receipt when it is associated with a discrepancy action of receiver adjustment.'
;
PROMPT CREATING INDEX ON 'IM_RESOLUTION_ACTION_WS';
CREATE INDEX IM_RESOLUTION_ACTION_WS_I1 ON IM_RESOLUTION_ACTION_WS
    (
	 WORKSPACE_ID ,
     MATCH_LUW_ID ,
     CHUNK_NUM
    )
    TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

	
	
	
PROMPT CREATING TABLE 'IM_INVC_DETL_RCPT_WS';
CREATE TABLE IM_INVC_DETL_RCPT_WS
    (
     INJECT_ID  	  NUMBER (10)  NOT NULL ,
     INJECT_DOC_ID    NUMBER (10)  NOT NULL ,
     SHIPMENT 		  NUMBER (12) ,
     BILL_TO_LOC      NUMBER (10) ,
     BILL_TO_LOC_DESC VARCHAR2 (150) ,
     ORDER_NO		  NUMBER (12) ,
     TOTAL_COST 	  NUMBER  ,
     TOTAL_QTY	      NUMBER  ,
     TOTAL_AVAIL_QTY  NUMBER  ,
     SHIP_DATE		  DATE ,
     RECEIVE_DATE 	  DATE ,
     CURRENCY_CODE 	  VARCHAR2 (3) ,
     SET_OF_BOOKS_ID  NUMBER (15) ,
     SUPP_VAT_REGION  NUMBER (4) ,
     LOC_VAT_REGION   NUMBER (4) ,
     CHOICE_FLAG 	  VARCHAR2 (1) DEFAULT 'N'  NOT NULL
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA ;
	
	

COMMENT ON TABLE IM_INVC_DETL_RCPT_WS is 'The table will hold receipt information to be included on an invoice. Receipts may or may not be included depending on the user selection.'
;


COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.INJECT_ID is 'Inject ID, unique for each injecting process'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.INJECT_DOC_ID is 'Injector document ID, unique for each documents that is unique globally'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.SHIPMENT is 'Contains shipment number.'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.BILL_TO_LOC is 'Contain billing location for the document. It may be store or physical warehouse'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.BILL_TO_LOC_DESC is 'The description of the Bill_to_loc'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.ORDER_NO is 'Identifies the order number which relates to the goods delivered in the shipment. It may be different from invoice''s order'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.TOTAL_COST is 'Contains the total cost of the shipment based on the number of quantities received'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.TOTAL_QTY is 'Contains the number of items already received for the Shipment.'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.TOTAL_AVAIL_QTY is 'This field containst the total available quantity.'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.SHIP_DATE is 'This field contains the date the transfer or PO was shipped.'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.RECEIVE_DATE is 'This field contains the date the transfer or PO is received.'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.CURRENCY_CODE is 'Contains the currency code for the order.  '
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.SET_OF_BOOKS_ID is 'Set of books'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.SUPP_VAT_REGION is 'VAT region of the purchase order''s supplier'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.LOC_VAT_REGION is 'VAT region of the purchase order''s location'
;

COMMENT ON COLUMN IM_INVC_DETL_RCPT_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;
	
	
 

PROMPT CREATING TABLE 'IM_DETAIL_MATCH_WS';
CREATE TABLE IM_DETAIL_MATCH_WS
    (
     DETAIL_MATCH_WS_ID 	 NUMBER (10,0)  NOT NULL ,
     WORKSPACE_ID 			 NUMBER (10,0)  NOT NULL ,
     ANCESTOR_ID 			 NUMBER (10,0) ,
     MATCH_STATUS 			 VARCHAR2 (1) ,
     ITEM_PARENT 			 VARCHAR2 (25) ,
     ITEM  					 VARCHAR2 (25) ,
     ITEM_DESCRIPTION		 VARCHAR2 (250) ,
     ENTITY_TYPE 			 VARCHAR2 (5)  NOT NULL ,
     INVOICE_ID 			 NUMBER (10,0) ,
     INVOICE_UNIT_COST 		 NUMBER (20,4) ,
     INVOICE_QTY             NUMBER (12,4) ,
     INVOICE_EXT_COST        NUMBER (20,4) ,
     RECEIPT_ID 			 NUMBER (12,0) ,
     RECEIPT_UNIT_COST       NUMBER (20,4) ,
     RECEIPT_AVAIL_QTY 		 NUMBER (12,4) ,
     RECEIPT_EXT_COST        NUMBER (20,4) ,
     RECEIPT_RECEIVED_QTY    NUMBER (12,4) ,
     DEPT 					 NUMBER (12,0) ,
     CLASS 					 NUMBER (12,0) ,
     SUBCLASS 				 NUMBER (12,0) ,
     TOLERANCE_ID 			 NUMBER (10,0) ,
     TOLERANCE_EXCHANGE_RATE NUMBER (20,10) ,
     IN_TOLERANCE 			 VARCHAR2 (1) ,
     UNIT_COST_VARIANCE 	 NUMBER (20,4) ,
     UNIT_COST_VARIANCE_PCT  NUMBER (20,10) ,
     COST_TOLERANCE_DTL_ID 	 NUMBER (10,0) ,
     COST_IN_TOLERANCE 		 VARCHAR2 (1) ,
     QTY_VARIANCE 			 NUMBER (20,4) ,
     QTY_VARIANCE_PCT 		 NUMBER (20,10) ,
     QTY_TOLERANCE_DTL_ID 	 NUMBER (10,0) ,
     QTY_IN_TOLERANCE 		 VARCHAR2 (1) ,
     SELECTED_RECEIPT_COUNT  NUMBER (10,0) ,
     SELECTED_INVOICE_COUNT  NUMBER (10,0) ,
     MATCH_GROUP_ID 		 NUMBER (10,0) ,
     COST_MATCHED 			 VARCHAR2 (1) ,
     QTY_MATCHED 			 VARCHAR2 (1) ,
     MATCH_HIST_ID 			 NUMBER (10,0) ,
     MANUAL_GROUP_ID 		 NUMBER (10,0) ,
     MATCHED_FILTER 		 VARCHAR2 (1) ,
     CHOICE_FLAG 			 VARCHAR2 (1) DEFAULT 'N' , 
	 UI_FILTER_IND 			 VARCHAR2 (1 ) DEFAULT 'N' NULL , 
	 DISPLAY_ITEM 			 VARCHAR2 (25 ) NULL , 
	 SUBSTITUTE_ITEM VARCHAR2 (25 ) NULL ,
	 INVC_SUPPLIER_GROUP_ID NUMBER (10,0) NULL ,
	 INVC_SUPPLIER NUMBER (10,0) NULL ,
	 INVC_SUPPLIER_NAME VARCHAR2 (240 ) NULL , 
	 INVC_SUPPLIER_PHONE VARCHAR2 (20 ) NULL ,
	 INVC_PO_SUPPLIER NUMBER (10,0) NULL , 
	 INVC_PO_SUPPLIER_SITE_ID NUMBER (10,0) NULL ,
	 INVC_SUPPLIER_SITE_ID NUMBER (10,0) NULL , 
	 INVC_SUPPLIER_SITE_NAME VARCHAR2 (240 ) NULL ,
	 RCPT_SUPPLIER NUMBER (10,0) NULL , 
	 RCPT_SUPPLIER_NAME VARCHAR2 (240 ) NULL ,
	 RCPT_SUPPLIER_SITE_ID NUMBER (10,0) NULL , 
	 RCPT_SUPPLIER_SITE_NAME VARCHAR2 (240 ) NULL ,
	 DISCREPANCY_FILTER_IND VARCHAR2 (1 ) NULL ,
	 INVOICE_EXT_DOC_ID VARCHAR2 (150 ) NULL ,
	 INVC_ORDLOC_UNIT_COST NUMBER (20,4) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;

	
	
COMMENT ON TABLE IM_DETAIL_MATCH_WS is 'Workspace table to support online detail matching.'
;


COMMENT ON COLUMN IM_DETAIL_MATCH_WS.DETAIL_MATCH_WS_ID is 'Primary key column.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.WORKSPACE_ID is 'Workspace of the data.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.ANCESTOR_ID is 'The parent row''s DETAIL_MATCH_WS_ID.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.MATCH_STATUS is 'The match status. Valid values are ''M''atch and ''U''nmatch.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.ITEM_PARENT is 'The parent of the item.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.ITEM is 'The item.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.ITEM_DESCRIPTION is 'The description of the item.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.ENTITY_TYPE is 'The type of the row.  Valid values are: STYLE, SKU, INVC, and RCPT.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVOICE_ID is 'The invoice being considered for matching. Empty for STYLE and RCPT levels, a single invoice at the INVC level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVOICE_UNIT_COST is 'The unit cost of the invoice(s).  Empty for STYLE and RCPT levels, a single invoice''s unit cost at the INVC level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVOICE_QTY is 'The quantity of the invoice(s). Empty for STYLE and RCPT levels, a single invoice''s quantity at the INVC level, and summed up to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVOICE_EXT_COST is 'The extended cost of the invoice(s). Empty for STYLE and RCPT levels, a single invoice''s extended cost at the INVC level, and summed up to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RECEIPT_ID is 'The receipt being considered for matching. Empty for STYLE and INVC levels, a single receipt at the RCPT level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RECEIPT_UNIT_COST is 'The unit cost of the receipt. Empty for STYLE and INVC levels, a single receipt''s unit cost at the RCPT level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RECEIPT_AVAIL_QTY is 'The quantity of the receipt available match. Empty for STYLE and INVC levels, a single receipt''s available quantity at the RCPT level, and summed up to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RECEIPT_EXT_COST is 'The extended quantity of the receipt. Empty for STYLE and INVC levels, a single invoice''s extended cost at the RCPT level, and summed up to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RECEIPT_RECEIVED_QTY is 'The received quantity of the receipt. Empty for STYLE and INVC levels, a single receipt''s received quantity at the RCPT level, and summed up to the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.DEPT is 'The department of the item.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.CLASS is 'The class of the item.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.SUBCLASS is 'The subclass of the item.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.TOLERANCE_ID is 'The tolerance being used for the match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.TOLERANCE_EXCHANGE_RATE is 'The exchange rate of the tolerance''s currency code.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.IN_TOLERANCE is 'Indicates if SKU level rows match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.UNIT_COST_VARIANCE is 'The amount of variance in unit cost at the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.UNIT_COST_VARIANCE_PCT is 'The percent variance in unit cost at the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.COST_TOLERANCE_DTL_ID is 'The cost tolerance detail being used for the match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.COST_IN_TOLERANCE is 'Indicates if SKU level rows cost match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.QTY_VARIANCE is 'The amount of variance in quantity at the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.QTY_VARIANCE_PCT is 'The percent variance in quantity at the SKU level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.QTY_TOLERANCE_DTL_ID is 'The quantity tolerance detail being used for the match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.QTY_IN_TOLERANCE is 'Indicates if SKU level rows quantity matches.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.SELECTED_RECEIPT_COUNT is 'The number of RCPT rows that have marching cost values across an item summed up to the STYLE and SKU levels.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.SELECTED_INVOICE_COUNT is 'The number of INVC rows that have marching cost values across an item summed up to the STYLE and SKU levels.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.MATCH_GROUP_ID is 'The match group id for matched rows.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.COST_MATCHED is 'The cost_matched indicator populated for INVC rows.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.QTY_MATCHED is 'The qty_matched indicator populated for INVC rows.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.MATCH_HIST_ID is 'The match id from match history tables. Only valid for rows where MATCH_STATUS is ''M''atched.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.MANUAL_GROUP_ID is 'The manual group id from IM_MANUAL_GROUP_INVOICES for INVC level and from IM_MANUAL_GROUP_RECEIPTS for RCPT level.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.MATCHED_FILTER is 'Indicates whether a SKU or STYLE is parent to a matched INVC or RCPT record'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.CHOICE_FLAG is 'Indicates whether an INVC or RCPT level row will be included in a match. For SKU level rows, this columns indicates if the user wants to consume the match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.UI_FILTER_IND is 'Indicates if the row has been filtered by the UI.  N = not filtered and should be displayed.  Y = filtered and should be displayed.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.DISPLAY_ITEM is 'Populated with substitute_item if it exist or the item on the receipt is it does not.  Used for display purposes.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.SUBSTITUTE_ITEM is 'The substitute item for the item on the receipt.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_SUPPLIER_GROUP_ID is 'Supplier Group Identifier'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_SUPPLIER_NAME is 'Holds Supplier  name'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_SUPPLIER_PHONE is 'Holds Supplier phone number'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_PO_SUPPLIER is 'Purchase Order Supplier Identifier'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_PO_SUPPLIER_SITE_ID is 'Purchase Order Supplier Site Identifier'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_SUPPLIER_SITE_NAME is 'Holds Supplier site name'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RCPT_SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RCPT_SUPPLIER_NAME is 'Suppliers Trading Name'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RCPT_SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.RCPT_SUPPLIER_SITE_NAME is 'Supplier Site Trading Name'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.DISCREPANCY_FILTER_IND is 'This column is used to filter which rows are displayed when navigating to detail matching from the discrepancy review list.  It will hold N when the row should be visible and Y when the row should not be visible.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVOICE_EXT_DOC_ID is 'The ext_doc_id for the doc_id.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_WS.INVC_ORDLOC_UNIT_COST is 'The unit cost on the order for the item / location.'
;
PROMPT CREATING INDEX ON 'IM_DETAIL_MATCH_WS';
CREATE INDEX IM_DETAIL_MATCH_WS_I1 on IM_DETAIL_MATCH_WS
	(
	 WORKSPACE_ID ASC,
	 ITEM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_DETAIL_MATCH_WS';
ALTER TABLE IM_DETAIL_MATCH_WS
    ADD CONSTRAINT PK_IM_DETAIL_MATCH_WS PRIMARY KEY ( DETAIL_MATCH_WS_ID )
    USING INDEX 
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;	
	
	
	
PROMPT CREATING TABLE 'IM_INJECT_COMPLEX_DEAL_DETAIL';
CREATE TABLE IM_INJECT_COMPLEX_DEAL_DETAIL
    (
     INJECT_ID				 NUMBER (10)  NOT NULL ,
     INJECT_DOC_ID			 NUMBER (10)  NOT NULL ,
     SEQ_NO 				 NUMBER (10)  NOT NULL ,
     LOC_TYPE 				 VARCHAR2 (6) ,
     LOCATION				 NUMBER (10) ,
     ITEM					 VARCHAR2 (25)  NOT NULL ,
     ORDER_NO				 NUMBER (12) ,
     LOCAL_CURRENCY			 VARCHAR2 (3)  NOT NULL ,
     INCOME_LOCAL_CURR		 NUMBER (20,4)  NOT NULL ,
     INCOME_DEAL_CURR		 NUMBER (20,4)  NOT NULL ,
     ACTUAL_TURNOVER_UNITS	 NUMBER (20,4) ,
     ACTUAL_TURNOVER_REVENUE NUMBER (20,4) ,
     LAST_UPDATED_BY 		 VARCHAR2 (60)  NOT NULL ,
     LAST_UPDATE_DATE 		 DATE NOT NULL ,
     CREATED_BY				 VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE 			 DATE  NOT NULL ,
     OBJECT_VERSION_ID		 NUMBER (15)  NOT NULL ,
     REF_OBJECT_VERSION_ID	 NUMBER (15)
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
	
	

COMMENT ON TABLE IM_INJECT_COMPLEX_DEAL_DETAIL is 'This table holds staged data for complex deals'
;


COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.INJECT_ID is 'This column is unique for each injecting process.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.INJECT_DOC_ID is 'This column holds the inject document id  for the  deal income.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.SEQ_NO is 'This column holds the sequence to uniquely identify the record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.LOC_TYPE is 'This column holds the location type of the deal income.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.LOCATION is 'This column holds the location corresponding to the deal income.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.ITEM is 'This column holds the item corresponding to this portion of the income.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.ORDER_NO is 'This column holds the order_no corresponding to this portion of the income.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.LOCAL_CURRENCY is 'This column holds the locations currency'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.INCOME_LOCAL_CURR is 'This column holds the sum of all the income for an item/location in the local currency for the periods the deal is invoiced for.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.INCOME_DEAL_CURR is 'This column holds the sum of all the income for an item/location in the deals currency for the periods the deal is invoiced for.The exchange rate used will be the exchange rate at the end of each individual period.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.ACTUAL_TURNOVER_UNITS is 'This value will be the sum of all units across for the item/loc for all the periods that are being invoiced.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.ACTUAL_TURNOVER_REVENUE is 'This value will be the sum of all revenue across for the item/loc for all the periods that are being invoiced.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_DETAIL.REF_OBJECT_VERSION_ID is '	This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee  '
;
PROMPT CREATING INDEX ON 'IM_INJECT_COMPLEX_DEAL_DETAIL';
CREATE INDEX IM_INJECT_COMPLEX_DEAL_I1 ON IM_INJECT_COMPLEX_DEAL_DETAIL
    (
	 INJECT_DOC_ID ,
     SEQ_NO
    )
    TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	
	
	
	
PROMPT CREATING TABLE 'IM_INJECT_COMPLEX_DEAL_TAX';
CREATE TABLE IM_INJECT_COMPLEX_DEAL_TAX
    (
     SEQ_NO   			   NUMBER (10)  NOT NULL ,
     TAX_CODE			   VARCHAR2 (6)  NOT NULL ,
     TAX_RATE			   NUMBER (20,10)  NOT NULL ,
     TAX_BASIS			   NUMBER (20,4) ,
     TAX_AMOUNT			   NUMBER (20,4) ,
     REVERSE_VAT_IND       VARCHAR2 (1) ,
     LAST_UPDATED_BY	   VARCHAR2 (60)  NOT NULL ,
     LAST_UPDATE_DATE 	   DATE  NOT NULL ,
     CREATED_BY			   VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE 		   DATE  NOT NULL ,
     OBJECT_VERSION_ID 	   NUMBER (15)  NOT NULL ,
     REF_OBJECT_VERSION_ID NUMBER (15) , 
	 INJECT_ID NUMBER (10) NOT NULL , 
	 INJECT_DOC_ID NUMBER (10) NOT NULL , 
	 ITEM VARCHAR2 (25 ) NOT NULL 
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;

		
		
COMMENT ON TABLE IM_INJECT_COMPLEX_DEAL_TAX is 'This table holds staged data for complex deal taxes'
;


COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.SEQ_NO is 'This column holds the sequence to uniquely identify the record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.TAX_CODE is 'This column holds the tax code'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.TAX_RATE is 'This column holds the tax rate'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.TAX_BASIS is 'This column holds the tax basis'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.TAX_AMOUNT is 'This column holds the tax amount'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.REVERSE_VAT_IND is 'This column indicates if the item is subject to reverse charge VAT at the vat region. Valid values are Y and N.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.REF_OBJECT_VERSION_ID is '	This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee '
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.INJECT_ID is 'This column is unique for each injecting process.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.INJECT_DOC_ID is 'This column holds the inject document id  for the  deal income.'
;

COMMENT ON COLUMN IM_INJECT_COMPLEX_DEAL_TAX.ITEM is 'This column holds the item corresponding to this portion of the income.'
;
PROMPT CREATING INDEX ON 'IM_INJECT_COMPLEX_DEAL_TAX';
CREATE INDEX IM_INJECT_COMPLEX_DEAL_TAX_I1 ON IM_INJECT_COMPLEX_DEAL_TAX
    (
	 INJECT_DOC_ID ASC ,
     SEQ_NO ASC 
    )
    TABLESPACE RETAIL_INDEX
	INITRANS 12 ;




PROMPT CREATING TABLE 'IM_INJECT_FIXED_DEAL_DETAIL';
CREATE TABLE IM_INJECT_FIXED_DEAL_DETAIL
    (
     INJECT_ID 			   NUMBER (10)  NOT NULL ,
     INJECT_DOC_ID		   NUMBER (10)  NOT NULL ,
     SEQ_NO				   NUMBER (10)  NOT NULL ,
     LOC_TYPE 			   VARCHAR2 (6) ,
     LOCATION			   NUMBER (10) ,
     DEPT 				   NUMBER (4) ,
     CLASS				   NUMBER (4) ,
     SUBCLASS			   NUMBER (4) ,
     INCOME				   NUMBER (20,4)  NOT NULL ,
     LAST_UPDATED_BY	   VARCHAR2 (60)  NOT NULL ,
     LAST_UPDATE_DATE 	   DATE  NOT NULL ,
     CREATED_BY			   VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE 		   DATE  NOT NULL ,
     OBJECT_VERSION_ID	   NUMBER (15)  NOT NULL ,
     REF_OBJECT_VERSION_ID NUMBER (15) 
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
	
	
	
COMMENT ON TABLE IM_INJECT_FIXED_DEAL_DETAIL is 'This table stores staged  fixed deal details'
;


COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.INJECT_ID is 'This column is unique for each injecting process'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.INJECT_DOC_ID is 'This column holds the inject document id  for the fixed deal income.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.SEQ_NO is 'This column holds the sequence to uniquely identify the record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.LOC_TYPE is 'This column holds the location type of the fixed deal income.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.LOCATION is 'This column holds the location corresponding to the fixed deal income.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.DEPT is 'This column holds the dept corresponding to this portion of the fixed deal income.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.CLASS is 'This column holds the class corresponding to this portion of the fixed deal  income'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.SUBCLASS is 'This column holds the subclass corresponding to this portion of the fixed deal  income'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.INCOME is 'This column holds the current income associated with this location/dept/class/subclass the fixed deal'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_DETAIL.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee '
;
PROMPT CREATING INDEX ON 'IM_INJECT_FIXED_DEAL_DETAIL';
CREATE INDEX IM_INJECT_FIXED_DETAIL_DEAL_I1 ON IM_INJECT_FIXED_DEAL_DETAIL
    (
     INJECT_DOC_ID ,
     SEQ_NO
    )
    INITRANS 12
    TABLESPACE RETAIL_INDEX ;

	
	

PROMPT CREATING TABLE 'IM_INJECT_FIXED_DEAL_TAX';	
CREATE TABLE IM_INJECT_FIXED_DEAL_TAX
    (
     SEQ_NO				   NUMBER (10)  NOT NULL ,
     TAX_CODE			   VARCHAR2 (6)  NOT NULL ,
     TAX_RATE 			   NUMBER (20,10)  NOT NULL ,
     TAX_BASIS 			   NUMBER (20,4) ,
     TAX_AMOUNT 		   NUMBER (20,4) ,
     LAST_UPDATED_BY 	   VARCHAR2 (60)  NOT NULL ,
     LAST_UPDATE_DATE	   DATE NOT NULL ,
     CREATED_BY			   VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE 		   DATE  NOT NULL ,
     OBJECT_VERSION_ID	   NUMBER (15)  NOT NULL ,
     REF_OBJECT_VERSION_ID NUMBER (15) , 
	 INJECT_ID NUMBER (10) NOT NULL , 
	 INJECT_DOC_ID NUMBER (10) NOT NULL  
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_INJECT_FIXED_DEAL_TAX is 'This table holds staged data for fixed deal taxes'
;


COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.SEQ_NO is 'This column holds the sequence to uniquely identify the record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.TAX_CODE is 'This column holds the tax code'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.TAX_RATE is 'This column holds the tax rate'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.TAX_BASIS is 'This column holds the tax basis'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.TAX_AMOUNT is 'This column holds the tax amount'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee '
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.INJECT_ID is 'This column is unique for each injecting process.'
;

COMMENT ON COLUMN IM_INJECT_FIXED_DEAL_TAX.INJECT_DOC_ID is 'This column holds the inject document id  for the  deal income.'
;
PROMPT CREATING INDEX ON 'IM_INJECT_FIXED_DEAL_TAX';
CREATE INDEX IM_INJECT_FIXED_DEAL_TAX_I1 ON IM_INJECT_FIXED_DEAL_TAX
    (
	 INJECT_DOC_ID ,
     SEQ_NO
    )
    TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
    

	

PROMPT CREATING TABLE 'IM_OI_SYS_OPTIONS';	
CREATE TABLE IM_OI_SYS_OPTIONS
    (
     WEIGHT_EXACT_MATCH 	   NUMBER (5) DEFAULT 30  NOT NULL ,
     WEIGHT_NON_DISCREPANCY    NUMBER (5) DEFAULT 50  NOT NULL ,
     WEIGHT_TIMELY_SHIP		   NUMBER (5) DEFAULT 20  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_OI_SYS_OPTIONS is 'Operation intelligence settings used invoice matching.'
;


COMMENT ON COLUMN IM_OI_SYS_OPTIONS.WEIGHT_EXACT_MATCH is 'The weight used for the exact match value when calculating the supplier score card rating.'
;

COMMENT ON COLUMN IM_OI_SYS_OPTIONS.WEIGHT_NON_DISCREPANCY is 'The weight used for the non discrepancy value when calculating the supplier score card rating.'
;

COMMENT ON COLUMN IM_OI_SYS_OPTIONS.WEIGHT_TIMELY_SHIP is 'The weight used for the timely shipment value when calculating the supplier score card rating.'
;




PROMPT CREATING TABLE 'IM_CN_MANUAL_GROUPS';
CREATE TABLE IM_CN_MANUAL_GROUPS
    (
     GROUP_ID 		   NUMBER (10,0)  NOT NULL ,
     DOC_ID 		   NUMBER (12,0)  NOT NULL ,
     TYPE              VARCHAR2 (6 )  NOT NULL ,
     CREATED_BY        VARCHAR2 (60 ) DEFAULT USER  NOT NULL ,
     CREATION_DATE     DATE DEFAULT SYSDATE   NOT NULL ,
     LAST_UPDATED_BY   VARCHAR2 (60 ) DEFAULT USER  NOT NULL ,
     LAST_UPDATE_DATE  DATE DEFAULT SYSDATE   NOT NULL ,
     OBJECT_VERSION_ID NUMBER (15,0) DEFAULT 1  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;

		
		
COMMENT ON TABLE IM_CN_MANUAL_GROUPS is 'This table stores the credit notes requests and credit notes that have been manually grouped.'
;


COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.GROUP_ID is 'ID of group of unmatched credit notes and credit not requests.'
;

COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.DOC_ID is 'Internal identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.TYPE is 'Type of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_CN_MANUAL_GROUPS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_CN_MANUAL_GROUPS';
ALTER TABLE IM_CN_MANUAL_GROUPS
    ADD CONSTRAINT PK_IM_CN_MANUAL_GROUPS PRIMARY KEY ( GROUP_ID, DOC_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	
	


PROMPT CREATING TABLE 'IM_CN_SEARCH_WS';
CREATE TABLE IM_CN_SEARCH_WS
    (
     WORKSPACE_ID		      NUMBER (10,0)  NOT NULL ,
     DOC_ID				      NUMBER (10,0)  NOT NULL ,
     EXT_DOC_ID			      VARCHAR2 (150) ,
     TYPE				      VARCHAR2 (6) ,
     STATUS				      VARCHAR2 (10) ,
     ORDER_NO			      NUMBER (12,0) ,
     LOCATION			      NUMBER (10,0) ,
     LOC_TYPE			      VARCHAR2 (1) ,
     LOC_NAME			      VARCHAR2 (150) ,
     VENDOR_TYPE		      VARCHAR2 (6) ,
     VENDOR				      VARCHAR2 (10) ,
     VENDOR_NAME		      VARCHAR2 (240) ,
     SUPPLIER_SITE_ID 	      VARCHAR2 (10) ,
     SUPPLIER_SITE_NAME       VARCHAR2 (240) ,
     DOC_DATE 			      DATE ,
     CURRENCY_CODE 		      VARCHAR2 (3) ,
     TOTAL_COST 		      NUMBER (20,4) ,
     TOTAL_QTY 			      NUMBER (12,4) ,
     DOC_HEAD_VERSION_ID      NUMBER (15,0) ,
     CHOICE_FLAG 		      VARCHAR2 (1)  NOT NULL , 
	 LOC_VAT_REGION 	      NUMBER (4) NULL , 
	 LOC_SET_OF_BOOKS_ID      NUMBER (15) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL ,
	 RTV_ORDER_NO NUMBER (10) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_CN_SEARCH_WS is 'This table stores the documents that meet the given criteria when searching documents for credit note request summary matching.'
;


COMMENT ON COLUMN IM_CN_SEARCH_WS.WORKSPACE_ID is 'Unique identifier tying the search results to a specific user''s workspace.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.DOC_ID is 'Internal identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.EXT_DOC_ID is 'External identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.TYPE is 'Type of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.STATUS is 'Status of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.ORDER_NO is 'Order Number on the document'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.LOCATION is 'Location identifier'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.LOC_TYPE is 'Location type.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.LOC_NAME is 'Location name'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.VENDOR_TYPE is 'Type of vendor.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.VENDOR is 'Vendor identifer.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.VENDOR_NAME is 'Vendor name'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.SUPPLIER_SITE_ID is 'Supplier Site identifier'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.SUPPLIER_SITE_NAME is 'Supplier Site name'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.DOC_DATE is 'Date on the invoice'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.CURRENCY_CODE is 'Currency code for all monetary values on document'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.TOTAL_COST is 'Total cost of the document with tax included'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.TOTAL_QTY is 'Total quantity of the document'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.DOC_HEAD_VERSION_ID is 'The version identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.CHOICE_FLAG is 'Indicator used to select those invoices which should be merged into the matching workspace.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.LOC_VAT_REGION is 'The vat region of the location.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.LOC_SET_OF_BOOKS_ID is 'The set of books id of the location.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_CN_SEARCH_WS.RTV_ORDER_NO is 'RTV Order Number the Credit Note has been created for.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_CN_SEARCH_WS';
ALTER TABLE IM_CN_SEARCH_WS
    ADD CONSTRAINT PK_IM_CN_SEARCH_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	


PROMPT CREATING TABLE 'IM_CNR_SEARCH_WS';
CREATE TABLE IM_CNR_SEARCH_WS
    (
     WORKSPACE_ID		      NUMBER (10,0)  NOT NULL ,
     DOC_ID				      NUMBER (10,0)  NOT NULL ,
     EXT_DOC_ID			      VARCHAR2 (150) ,
     TYPE				      VARCHAR2 (6) ,
     STATUS				      VARCHAR2 (10) ,
     ORDER_NO			      NUMBER (12,0) ,
     LOCATION			      NUMBER (10,0) ,
     LOC_TYPE			      VARCHAR2 (1) ,
     LOC_NAME			      VARCHAR2 (150) ,
     VENDOR_TYPE		      VARCHAR2 (6) ,
     VENDOR				      VARCHAR2 (10) ,
     VENDOR_NAME		      VARCHAR2 (240) ,
     SUPPLIER_SITE_ID         VARCHAR2 (10) ,
     SUPPLIER_SITE_NAME       VARCHAR2 (240) ,
     DOC_DATE 			      DATE ,
     CURRENCY_CODE	          VARCHAR2 (3) ,
     TOTAL_COST 		      NUMBER (20,4) ,
     TOTAL_QTY 			      NUMBER (12,4) ,
     DOC_HEAD_VERSION_ID      NUMBER (15,0) ,
     CHOICE_FLAG 		      VARCHAR2 (1)  NOT NULL , 
	 LOC_VAT_REGION 	      NUMBER (4) NULL , 
	 LOC_SET_OF_BOOKS_ID      NUMBER (15) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL ,
	 RTV_ORDER_NO NUMBER (10) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		

COMMENT ON TABLE IM_CNR_SEARCH_WS is 'This table stores the documents that meet the given criteria when searching documents for credit note summary matching.'
;


COMMENT ON COLUMN IM_CNR_SEARCH_WS.WORKSPACE_ID is 'Unique identifier tying the search results to a specific user''s workspace.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.DOC_ID is 'Internal identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.EXT_DOC_ID is 'External identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.TYPE is 'Type of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.STATUS is 'Status of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.ORDER_NO is 'Order Number on the document'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.LOCATION is 'Location identifier'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.LOC_TYPE is 'Location type.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.LOC_NAME is 'Location name'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.VENDOR_TYPE is 'Type of vendor.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.VENDOR is 'Vendor identifer.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.VENDOR_NAME is 'Vendor name'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.SUPPLIER_SITE_ID is 'Supplier Site identifier'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.SUPPLIER_SITE_NAME is 'Supplier Site name'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.DOC_DATE is 'Date on the invoice'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.CURRENCY_CODE is 'Currency code for all monetary values on document'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.TOTAL_COST is 'Total cost of the document with tax included'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.TOTAL_QTY is 'Total quantity of the document'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.DOC_HEAD_VERSION_ID is 'The version identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.CHOICE_FLAG is 'Indicator used to select those invoices which should be merged into the matching workspace.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.LOC_VAT_REGION is 'The vat region of the location.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.LOC_SET_OF_BOOKS_ID is 'The set of books id of the location.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_CNR_SEARCH_WS.RTV_ORDER_NO is 'RTV Order Number the Credit Note Request has been created for.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_CNR_SEARCH_WS';
ALTER TABLE IM_CNR_SEARCH_WS
    ADD CONSTRAINT PK_IM_CNR_SEARCH_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


	
PROMPT CREATING TABLE 'IM_MATCH_INQ_SEARCH_WS';
CREATE TABLE IM_MATCH_INQ_SEARCH_WS
    (
     WORKSPACE_ID       VARCHAR2 (30)  NOT NULL ,
     DOC_ID             NUMBER (10,0)  NOT NULL ,
     STATUS             VARCHAR2 (10) ,
     DOC_DATE           DATE ,
     DUE_DATE           DATE ,
     ORDER_NO           NUMBER (12,0) ,
     SUPPLIER           NUMBER (10,0) ,
     SUPPLIER_NAME	    VARCHAR2 (240) ,
     SUPPLIER_SITE_ID   NUMBER (10,0) ,
     SUPPLIER_SITE_NAME VARCHAR2 (240) ,
     LOCATION 		    NUMBER(10,0) ,
     LOCATION_NAME 	    VARCHAR2(150) ,
     LOC_TYPE		    VARCHAR2(1) ,
     CURRENCY_CODE	    VARCHAR2(3) ,
     TOTAL_COST		    NUMBER(20,4) ,
     MATCH_ID		    VARCHAR2(30) ,
     MATCH_DATE 	    DATE ,
     SUMMARY_MATCH_IND  VARCHAR2(1) ,
     DETAIL_MATCH_IND   VARCHAR2(1) , 
	 EXT_DOC_ID 		VARCHAR2 (150 ) NULL , 
	 AP_REVIEWER 		VARCHAR2 (30 ) NULL , 
	 TOTAL_QTY 			NUMBER (12,4) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;

		
COMMENT ON TABLE IM_MATCH_INQ_SEARCH_WS is 'This table stores the invoices that meet the given criteria when searching invoices that have been matched.'
;


COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.WORKSPACE_ID is 'Unique identifier tying the search results to a specific user''s workspace.'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.DOC_ID is 'Internal identifier of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.STATUS is 'Status of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.DOC_DATE is 'Date on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.DUE_DATE is 'Due date on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.ORDER_NO is 'Order Number on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.SUPPLIER is 'Supplier identifier'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.SUPPLIER_NAME is 'Supplier name'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.SUPPLIER_SITE_ID is 'Supplier Site identifier'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.SUPPLIER_SITE_NAME is 'Supplier Site name'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.LOCATION is 'Location identifier'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.LOCATION_NAME is 'Location name'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.LOC_TYPE is 'Location type.'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.CURRENCY_CODE is 'Currency code for all monetary values on invoice'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.TOTAL_COST is 'Total cost of the invoice with tax included'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.MATCH_ID is 'The user id of the user that performed the match'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.MATCH_DATE is 'The date the match was performed.'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.SUMMARY_MATCH_IND is 'Indicates whether or not a summary match exists.'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.DETAIL_MATCH_IND is 'Indicates whether or not a detail match exists.'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.EXT_DOC_ID is 'The ext_doc_id of the document.'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.AP_REVIEWER is 'The AP reviewer of the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INQ_SEARCH_WS.TOTAL_QTY is 'The total quantity of the invoice.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_INQ_SEARCH_WS';
ALTER TABLE IM_MATCH_INQ_SEARCH_WS
    ADD CONSTRAINT PK_IM_MATCH_INQ_SEARCH_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	



PROMPT CREATING TABLE 'IM_MATCH_CNR_DETL_WS';
CREATE TABLE IM_MATCH_CNR_DETL_WS
    (
     WORKSPACE_ID 	NUMBER (10,0)  NOT NULL ,
     DOC_ID 		NUMBER (10,0)  NOT NULL ,
     ITEM 			VARCHAR2 (25)  NOT NULL ,
     REASON_CODE_ID VARCHAR2 (25) ,
     STATUS 		VARCHAR2 (6) ,
     UNIT_COST 		NUMBER (20,4) ,
     DOC_QTY 		NUMBER (12,4) ,
     COST_MATCHED 	VARCHAR2 (1) ,
     QTY_MATCHED 	VARCHAR2 (1) ,
     MATCH_HIST_ID 	NUMBER (10,0) ,
     MATCH_KEY_ID 	NUMBER (10,0) ,
     CHOICE_FLAG 	VARCHAR2 (1) DEFAULT 'N' ,
	 EXT_DOC_ID VARCHAR2(150) NULL ,
	 TAX_CODE VARCHAR2(6) NULL ,
	 TAX_RATE NUMBER(20,10) NULL ,
	 TAX_AMOUNT NUMBER(20,4) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_MATCH_CNR_DETL_WS is 'This table stores the item details of credit note requests.'
;


COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.DOC_ID is 'Identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.ITEM is 'Line Item of the document.'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.REASON_CODE_ID is 'Reason code of the line item of the document.'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.STATUS is 'Match status of the document item.'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.UNIT_COST is 'Unit Cost of the Item.'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.DOC_QTY is 'Quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.COST_MATCHED is 'Indicates whether the item is cost matched.'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.QTY_MATCHED is 'Indicates whether the item is qty matched.'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.MATCH_HIST_ID is 'Match History ID if the item was detail matched'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.MATCH_KEY_ID is 'The match key used to perform the match on this row.'
;

COMMENT ON COLUMN IM_MATCH_CNR_DETL_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN im_match_cnr_detl_ws.EXT_DOC_ID is 'The ext_doc_id for the doc_id.'
;

COMMENT ON COLUMN im_match_cnr_detl_ws.TAX_CODE is 'The tax code for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN im_match_cnr_detl_ws.TAX_RATE is 'The tax rate for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN im_match_cnr_detl_ws.TAX_AMOUNT is 'The tax amount for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;
	
PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_CNR_DETL_WS';
ALTER TABLE IM_MATCH_CNR_DETL_WS
    ADD CONSTRAINT PK_IM_MATCH_CNR_DETL_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID, ITEM )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

	

PROMPT CREATING TABLE 'IM_MATCH_CN_WS';
CREATE TABLE IM_MATCH_CN_WS
 (
     WORKSPACE_ID				  NUMBER (10,0)  NOT NULL ,
     DOC_ID 					  NUMBER (10,0)  NOT NULL , 
     DOC_HEAD_VERSION_ID		  NUMBER (15,0) ,
     STATUS					      VARCHAR2 (6) ,
     DOC_DATE					  DATE ,
     DUE_DATE					  DATE ,
     SUPPLIER_GROUP_ID			  NUMBER (10,0) ,
     SUPPLIER					  NUMBER (10,0) ,
     SUPPLIER_NAME				  VARCHAR2 (240) ,
     SUPPLIER_PHONE				  VARCHAR2 (20) ,
     SUPPLIER_SITE_ID			  NUMBER (10,0) ,
     SUPPLIER_SITE_NAME			  VARCHAR2 (240) ,
     SUPPLIER_SITE_VAT_REGION	  NUMBER (4,0) ,
     CURRENCY_CODE				  VARCHAR2 (3),
     ORDER_NO					  NUMBER (12,0) ,
     LOCATION					  NUMBER (10,0) ,
     LOC_TYPE					  VARCHAR2 (1) ,
     LOCATION_NAME				  VARCHAR2 (150) ,
     LOC_VAT_REGION				  NUMBER (4,0) ,
     LOC_SET_OF_BOOKS_ID		  NUMBER (15,0) ,
     TOTAL_AVAIL_COST		      NUMBER (20,4) ,
     TOTAL_AVAIL_QTY			  NUMBER (12,4) ,
     MERCH_AMOUNT				  NUMBER (20,4) ,
     TOTAL_QTY					  NUMBER (12,4) ,
     HEADER_ONLY				  VARCHAR2 (1) ,
     SUMMARY_MTCH_ELIG			  VARCHAR2 (1) ,
     DETAIL_MTCH_ELIG			  VARCHAR2 (1) ,
     QTY_REQUIRED				  VARCHAR2 (1) ,
     QTY_MATCH_REQUIRED			  VARCHAR2 (1) ,
     TOLERANCE_ID			      NUMBER (12,0) ,
     TOLERANCE_CURRENCY_CODE	  VARCHAR2 (3) ,
     TOLERANCE_EXCHANGE_RATE	  NUMBER (20,10) ,
     SKU_COMP_PERCENT			  NUMBER (4,2) ,
     MANUAL_GROUP_ID			  NUMBER (10,0) ,
     CN_MATCH_REF_CNR_EXT_DOC_ID  VARCHAR2 (150) ,
     CN_MATCH_REF_INVC_EXT_DOC_ID VARCHAR2 (150) ,
     DEAL_ID					  NUMBER (10,0) ,
     DEAL_DETAIL_ID				  NUMBER (10,0) ,
     DEAL_TYPE					  VARCHAR2 (1) ,
     RTV_ORDER_NO				  NUMBER (10,0) ,
     RTV_IND					  VARCHAR2 (1) ,
     HOLD_STATUS				  VARCHAR2 (1) ,
     MATCH_KEY_ID				  NUMBER (10,0) ,
     CHOICE_FLAG				  VARCHAR2 (1) DEFAULT 'N' ,
	 EXT_DOC_ID VARCHAR2(150) NULL ,
	 TAX_CODE VARCHAR2(6) NULL ,
	 TAX_RATE NUMBER(20,10) NULL ,
	 TAX_AMOUNT NUMBER(20,4) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_MATCH_CN_WS is 'This table stores the list of credit notes which are being processed undar a specific workspace_id.'
;


COMMENT ON COLUMN IM_MATCH_CN_WS.WORKSPACE_ID is 'Unique ID for the specific run of CN Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DOC_ID is 'Identifier of the credit note from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DOC_HEAD_VERSION_ID is 'The version identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.STATUS is 'Status of the document on IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DOC_DATE is 'Date on the document'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DUE_DATE is 'Due date of the document'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUPPLIER_GROUP_ID is 'Supplier Group Identifier'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUPPLIER_NAME is 'Holds Supplier  name'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUPPLIER_PHONE is 'Holds Supplier phone number'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUPPLIER_SITE_NAME is 'Holds Supplier site name'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.CURRENCY_CODE is 'document''s Currency Code'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.ORDER_NO is 'Order Number of the document'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.LOCATION is 'Location Identifier'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.LOC_TYPE is 'Location Type Identifier'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.LOCATION_NAME is 'Holds location name'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.LOC_VAT_REGION is 'The vat region for the location.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.LOC_SET_OF_BOOKS_ID is 'The set of books ID for the location.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TOTAL_AVAIL_COST is 'Total Available Cost of the document (Without Tax)'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TOTAL_AVAIL_QTY is 'Total Available Quantity of the document'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.MERCH_AMOUNT is 'Holds the merchandise amount of the document'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TOTAL_QTY is 'Total Quantity of the document'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.HEADER_ONLY is 'Indicator that specifies if the document is header only or contains details'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SUMMARY_MTCH_ELIG is 'Indicator that specifies if the document can be considered for summary matching.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DETAIL_MTCH_ELIG is 'Indicator that specifies if the document can be considered for detail matching.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.QTY_REQUIRED is 'Indicator that specifies whether qty is required on the header of the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.QTY_MATCH_REQUIRED is 'Indicator that specifies whether qty must be considered during summary matching.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TOLERANCE_ID is 'Holds the tolerance id for that match key'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TOLERANCE_CURRENCY_CODE is 'Holds the Currency Code of the tolerance being used for matching.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TOLERANCE_EXCHANGE_RATE is 'Holds the Exchange rate between document and Tolerance Currencies'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.SKU_COMP_PERCENT is 'The Minimum Sku Compliance Percentage required for a summary match.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.MANUAL_GROUP_ID is 'Identifier of the Manual Group, the document belongs to.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.CN_MATCH_REF_CNR_EXT_DOC_ID is 'The reference credit note request for the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.CN_MATCH_REF_INVC_EXT_DOC_ID is 'The reference invoice for the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DEAL_ID is 'The deal associated with the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DEAL_DETAIL_ID is 'The deal detail associated with the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.DEAL_TYPE is 'The type of the deal.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.RTV_ORDER_NO is 'The RTV order number of the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.RTV_IND is 'Indicates if the document is for a RTV order number or not.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.HOLD_STATUS is 'Indicates whether the document is held from getting posted'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.MATCH_KEY_ID is 'The match key used to perform the match on this row.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.EXT_DOC_ID is 'The ext_doc_id for the doc_id.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TAX_CODE is 'The tax code for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TAX_RATE is 'The tax rate for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN IM_MATCH_CN_WS.TAX_AMOUNT is 'The tax amount for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_CN_WS';
ALTER TABLE IM_MATCH_CN_WS
    ADD CONSTRAINT PK_IM_MATCH_CN_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


	
PROMPT CREATING TABLE 'IM_MATCH_CN_DETL_WS';
CREATE TABLE IM_MATCH_CN_DETL_WS
    ( 
     WORKSPACE_ID 	NUMBER (10,0)  NOT NULL ,
     DOC_ID 		NUMBER (10,0)  NOT NULL ,
     ITEM 			VARCHAR2 (25)  NOT NULL ,
     REASON_CODE_ID VARCHAR2 (25) ,
     STATUS 		VARCHAR2 (6) ,
     UNIT_COST 		NUMBER (20,4) ,
     DOC_QTY 		NUMBER (12,4) ,
     COST_MATCHED 	VARCHAR2 (1) ,
     QTY_MATCHED 	VARCHAR2 (1) ,
     MATCH_HIST_ID 	NUMBER (10,0) ,
     MATCH_KEY_ID 	NUMBER (10,0) ,
     CHOICE_FLAG 	VARCHAR2 (1) DEFAULT 'N' ,
	 EXT_DOC_ID VARCHAR2(150) NULL ,
	 TAX_CODE VARCHAR2(6) NULL ,
	 TAX_RATE NUMBER(20,10) NULL ,
	 TAX_AMOUNT NUMBER(20,4) NULL
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA ;

		
		
COMMENT ON TABLE IM_MATCH_CN_DETL_WS is 'This table stores the item details of credit notes.'
;


COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.DOC_ID is 'Identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.ITEM is 'Line Item of the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.REASON_CODE_ID is 'Reason code of the line item of the document.'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.STATUS is 'Match status of the document item.'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.UNIT_COST is 'Unit Cost of the Item.'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.DOC_QTY is 'Quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.COST_MATCHED is 'Indicates whether the item is cost matched.'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.QTY_MATCHED is 'Indicates whether the item is qty matched.'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.MATCH_HIST_ID is 'Match History ID if the item was detail matched'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.MATCH_KEY_ID is 'The match key used to perform the match on this row.'
;

COMMENT ON COLUMN IM_MATCH_CN_DETL_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN im_match_cn_detl_ws.EXT_DOC_ID is 'The ext_doc_id for the doc_id.'
;

COMMENT ON COLUMN im_match_cn_detl_ws.TAX_CODE is 'The tax code for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN im_match_cn_detl_ws.TAX_RATE is 'The tax rate for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN im_match_cn_detl_ws.TAX_AMOUNT is 'The tax amount for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_CN_DETL_WS';
ALTER TABLE IM_MATCH_CN_DETL_WS
	ADD CONSTRAINT PK_IM_MATCH_CN_DETL_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID, ITEM )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	



PROMPT CREATING TABLE 'IM_MATCH_CNR_WS'
CREATE TABLE IM_MATCH_CNR_WS
    (
     WORKSPACE_ID				  NUMBER (10,0)  NOT NULL ,
     DOC_ID						  NUMBER (10,0)	 NOT NULL ,
     TYPE						  VARCHAR2 (6) ,
     DOC_HEAD_VERSION_ID		  NUMBER (15,0) ,
     STATUS						  VARCHAR2 (6) ,
     DOC_DATE					  DATE ,
     DUE_DATE					  DATE ,
     SUPPLIER_GROUP_ID			  NUMBER (10,0) ,
     SUPPLIER					  NUMBER (10,0) ,
     SUPPLIER_NAME				  VARCHAR2 (240) ,
     SUPPLIER_PHONE				  VARCHAR2 (20) ,
     SUPPLIER_SITE_ID			  NUMBER (10,0) ,
     SUPPLIER_SITE_NAME			  VARCHAR2 (240) ,
     SUPPLIER_SITE_VAT_REGION 	  NUMBER (4,0) ,
     CURRENCY_CODE				  VARCHAR2 (3) ,
     ORDER_NO   				  NUMBER (12,0) ,
     LOCATION					  NUMBER (10,0) , 
     LOC_TYPE					  VARCHAR2 (1) ,
     LOCATION_NAME				  VARCHAR2 (150) ,
     LOC_VAT_REGION				  NUMBER (4,0) ,
     LOC_SET_OF_BOOKS_ID		  NUMBER (15,0) ,
     TOTAL_AVAIL_COST			  NUMBER (20,4) ,
     TOTAL_AVAIL_QTY			  NUMBER (12,4) ,
     MERCH_AMOUNT				  NUMBER (20,4) ,
     TOTAL_QTY 					  NUMBER (12,4) ,
     HEADER_ONLY				  VARCHAR2 (1) ,
     SUMMARY_MTCH_ELIG			  VARCHAR2 (1) ,
     DETAIL_MTCH_ELIG			  VARCHAR2 (1) ,
     QTY_REQUIRED				  VARCHAR2 (1) ,
     QTY_MATCH_REQUIRED			  VARCHAR2 (1) ,
     MANUAL_GROUP_ID		      NUMBER (10,0) ,
     CN_MATCH_REF_CNR_EXT_DOC_ID  VARCHAR2 (150) ,
     CN_MATCH_REF_INVC_EXT_DOC_ID VARCHAR2 (150) ,
     DEAL_ID 					  NUMBER (10,0) ,
     DEAL_DETAIL_ID				  NUMBER (10,0) ,
     DEAL_TYPE 				      VARCHAR2 (1 ) ,
     RTV_ORDER_NO				  NUMBER (10,0) ,
     RTV_IND					  VARCHAR2 (1) ,
     HOLD_STATUS				  VARCHAR2 (1) ,
     MATCH_KEY_ID				  NUMBER (10,0) ,
     CHOICE_FLAG				  VARCHAR2 (1) DEFAULT 'N' ,
	 EXT_DOC_ID VARCHAR2(150) NULL ,
	 TAX_CODE VARCHAR2(6) NULL ,
	 TAX_RATE NUMBER(20,10) NULL ,
	 TAX_AMOUNT NUMBER(20,4) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;

		
		
COMMENT ON TABLE IM_MATCH_CNR_WS is 'This table stores the list of credit note requests which are being processed undar a specific workspace_id.'
;


COMMENT ON COLUMN IM_MATCH_CNR_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DOC_ID is 'Identifier of the document from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.TYPE is 'Document Type'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DOC_HEAD_VERSION_ID is 'The version identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.STATUS is 'Status of the document on IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DOC_DATE is 'Date on the document'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DUE_DATE is 'Due date of the document'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUPPLIER_GROUP_ID is 'Supplier Group Identifier'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUPPLIER_NAME is 'Holds Supplier  name'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUPPLIER_PHONE is 'Holds Supplier phone number'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUPPLIER_SITE_NAME is 'Holds Supplier site name'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.CURRENCY_CODE is 'document''s Currency Code'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.ORDER_NO is 'Order Number of the document'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.LOCATION is 'Location Identifier'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.LOC_TYPE is 'Location Type Identifier'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.LOCATION_NAME is 'Holds location name'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.LOC_VAT_REGION is 'The vat region for the location.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.LOC_SET_OF_BOOKS_ID is 'The set of books ID for the location.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.TOTAL_AVAIL_COST is 'Total Available Cost of the document (Without Tax)'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.TOTAL_AVAIL_QTY is 'Total Available Quantity of the document'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.MERCH_AMOUNT is 'Holds the merchandise amount of the document'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.TOTAL_QTY is 'Total Quantity of the document'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.HEADER_ONLY is 'Indicator that specifies if the document is header only or contains details'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.SUMMARY_MTCH_ELIG is 'Indicator that specifies if the document can be considered for summary matching.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DETAIL_MTCH_ELIG is 'Indicator that specifies if the document can be considered for detail matching.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.QTY_REQUIRED is 'Indicator that specifies whether qty is required on the header of the document.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.QTY_MATCH_REQUIRED is 'Indicator that specifies whether qty must be considered during summary matching.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.MANUAL_GROUP_ID is 'Identifier of the Manual Group, the document belongs to.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.CN_MATCH_REF_CNR_EXT_DOC_ID is 'Document ID of the referenced Credit note Request'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.CN_MATCH_REF_INVC_EXT_DOC_ID is 'Document ID of the referenced Invoice'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DEAL_ID is 'The deal associated with the document.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DEAL_DETAIL_ID is 'The detail detail associated with the document.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.DEAL_TYPE is 'The type of the deal.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.RTV_ORDER_NO is 'The RTV order number of the document.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.RTV_IND is 'Indicates if the document is for a RTV order number or not.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.HOLD_STATUS is 'Indicates whether the document is held from getting posted'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.MATCH_KEY_ID is 'The match key used to perform the match on this row.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.EXT_DOC_ID is 'The ext_doc_id for the doc_id.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.TAX_CODE is 'The tax code for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.TAX_RATE is 'The tax rate for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

COMMENT ON COLUMN IM_MATCH_CNR_WS.TAX_AMOUNT is 'The tax amount for the doc_id.  Only populated if there is only one tax code on im_doc_tax for the doc_id.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_CNR_WS';
ALTER TABLE IM_MATCH_CNR_WS
	ADD CONSTRAINT PK_IM_MATCH_CNR_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_DETAIL_MATCH_CN_WS';
CREATE TABLE IM_DETAIL_MATCH_CN_WS
    (
     DETAIL_MATCH_CN_WS_ID	 NUMBER (10,0)  NOT NULL ,
     WORKSPACE_ID			 NUMBER (10,0)  NOT NULL ,
     ANCESTOR_ID			 NUMBER (10,0) ,
     MATCH_STATUS			 VARCHAR2 (1) ,
     ITEM_PARENT			 VARCHAR2 (25) ,
     ITEM 					 VARCHAR2 (25) ,
     ITEM_DESCRIPTION		 VARCHAR2 (250) ,
     ENTITY_TYPE			 VARCHAR2 (5)  NOT NULL ,
     CNR_ID					 NUMBER (10,0) ,
     CNR_UNIT_COST			 NUMBER (20,4) ,
     CNR_QTY				 NUMBER (12,4) ,
     CNR_EXT_COST			 NUMBER (20,4) ,
     CN_ID					 NUMBER (12,0) ,
     CN_UNIT_COST			 NUMBER (20,4) ,
     CN_QTY					 NUMBER (12,4) ,
     CN_EXT_COST			 NUMBER (20,4) ,
     DEPT					 NUMBER (12,0) ,
     CLASS					 NUMBER (12,0) ,
     SUBCLASS				 NUMBER (12,0) ,
     TOLERANCE_ID			 NUMBER (10,0) ,
     TOLERANCE_EXCHANGE_RATE NUMBER (20,10),
     IN_TOLERANCE			 VARCHAR2 (1) ,
     UNIT_COST_VARIANCE		 NUMBER (20,4) ,
     UNIT_COST_VARIANCE_PCT	 NUMBER (20,10) ,
     COST_TOLERANCE_DTL_ID	 NUMBER (10,0) ,
     COST_IN_TOLERANCE		 VARCHAR2 (1) ,
     QTY_VARIANCE			 NUMBER (20,4) ,
     QTY_VARIANCE_PCT		 NUMBER (20,10) ,
     QTY_TOLERANCE_DTL_ID	 NUMBER (10,0) ,
     QTY_IN_TOLERANCE		 VARCHAR2 (1) ,
     SELECTED_CNR_COUNT		 NUMBER (10,0) ,
     SELECTED_CN_COUNT		 NUMBER (10,0) ,
     MATCH_GROUP_ID			 NUMBER (10,0) ,
     COST_MATCHED			 VARCHAR2 (1) ,
     QTY_MATCHED			 VARCHAR2 (1) ,
     MATCH_HIST_ID			 NUMBER (10,0) ,
     MANUAL_GROUP_ID		 NUMBER (10,0) ,
     MATCHED_FILTER			 VARCHAR2 (1) ,
     CHOICE_FLAG			 VARCHAR2 (1) DEFAULT 'N' ,
     UI_FILTER_IND			 VARCHAR2 (1) DEFAULT 'N' ,
	 CNR_SUPPLIER_GROUP_ID NUMBER (10,0) NULL ,
	 CNR_SUPPLIER NUMBER (10,0) NULL ,
	 CNR_SUPPLIER_NAME VARCHAR2 (240 ) NULL ,
	 CNR_SUPPLIER_PHONE VARCHAR2 (20 ) NULL ,
	 CNR_SUPPLIER_SITE_ID NUMBER (10,0) NULL ,
	 CNR_SUPPLIER_SITE_NAME VARCHAR2 (240 ) NULL ,
	 CN_SUPPLIER_GROUP_ID NUMBER (10,0) NULL ,
	 CN_SUPPLIER NUMBER (10,0) NULL ,
	 CN_SUPPLIER_NAME VARCHAR2 (240 ) NULL ,
	 CN_SUPPLIER_PHONE VARCHAR2 (20 ) NULL ,
	 CN_SUPPLIER_SITE_ID NUMBER (10,0) NULL ,
	 CN_SUPPLIER_SITE_NAME VARCHAR2 (240 ) NULL ,
	 CNR_EXT_DOC_ID VARCHAR2 (150 ) NULL ,
	 CNR_TAX_CODE VARCHAR2 (6 ) NULL ,
	 CNR_TAX_RATE NUMBER (20,10) NULL ,
	 CNR_TAX_AMOUNT NUMBER (20,4) NULL ,
	 CN_EXT_DOC_ID VARCHAR2 (150 ) NULL ,
	 CN_TAX_CODE VARCHAR2 (6 ) NULL ,
	 CN_TAX_RATE NUMBER (20,10) NULL ,
	 CN_TAX_AMOUNT NUMBER (20,4) NULL ,
	 TAX_DISCREPANT VARCHAR2 (1 ) DEFAULT 'N' NULL ,
	 TAX_DISC_RSLVD VARCHAR2 (1 ) DEFAULT 'N' NULL ,
	 CN_ORDER_NO NUMBER (12) NULL ,
	 CNR_ORDER_NO NUMBER (12) NULL ,
	 CN_RTV_ORDER_NO NUMBER (12) NULL ,
	 CNR_RTV_ORDER_NO NUMBER (12) NULL 
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA;
		
		

COMMENT ON TABLE im_detail_match_cn_ws is ''
;


COMMENT ON COLUMN im_detail_match_cn_ws.DETAIL_MATCH_CN_WS_ID is 'Primary key column.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.WORKSPACE_ID is 'Workspace of the data.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.ANCESTOR_ID is 'The parent row''s DETAIL_MATCH_CN_WS_ID.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.MATCH_STATUS is 'The match status. Valid values are ''M''atch and ''U''nmatch.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.ITEM_PARENT is 'The parent of the item.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.ITEM is 'The item.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.ITEM_DESCRIPTION is 'The description of the item.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.ENTITY_TYPE is 'The type of the row.  Valid values are: STYLE, SKU, CN, and CNR.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CNR_ID is 'The credit note request being considered for matching. Empty for STYLE and CN levels, a single credit note request at the CNR level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CNR_UNIT_COST is 'The unit cost of the credit note requests.  Empty for STYLE and CN levels, a single credit note request''s unit cost at the CNR level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CNR_QTY is 'The qty of the credit note requests.  Empty for STYLE and CN levels, a single credit note request''s unit cost at the CNR level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CNR_EXT_COST is 'The extended cost of the credit note requests.  Empty for STYLE and CN levels, a single credit note request''s unit cost at the CNR level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CN_ID is 'The credit note being considered for matching. Empty for STYLE and CNR levels, a single credit request at the CN level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CN_UNIT_COST is 'The unit cost of the credit notes.  Empty for STYLE and CNR levels, a single credit note''s unit cost at the CN level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CN_QTY is 'The qty of the credit note.  Empty for STYLE and CNR levels, a single credit note''s unit cost at the CN level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CN_EXT_COST is 'The extended cost of the credit note.  Empty for STYLE and CNR levels, a single credit note unit cost at the CN level and rolled up value to the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.DEPT is 'The department of the item.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.CLASS is 'The class of the item.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.SUBCLASS is 'The subclass of the item.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.TOLERANCE_ID is 'The tolerance being used for the match.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.TOLERANCE_EXCHANGE_RATE is 'The exchange rate of the tolerance''s currency code.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.IN_TOLERANCE is 'Indicates if SKU level rows match.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.UNIT_COST_VARIANCE is 'The amount of variance in unit cost at the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.UNIT_COST_VARIANCE_PCT is 'The percent variance in unit cost at the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.COST_TOLERANCE_DTL_ID is 'The cost tolerance detail being used for the match.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.COST_IN_TOLERANCE is 'Indicates if SKU level rows cost match.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.QTY_VARIANCE is 'The amount of variance in quantity at the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.QTY_VARIANCE_PCT is 'The percent variance in quantity at the SKU level.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.QTY_TOLERANCE_DTL_ID is 'The quantity tolerance detail being used for the match.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.QTY_IN_TOLERANCE is 'Indicates if SKU level rows quantity matches.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.SELECTED_CNR_COUNT is 'The number of CNR rows that have marching cost values across an item summed up to the STYLE and SKU levels.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.SELECTED_CN_COUNT is 'The number of CN rows that have marching cost values across an item summed up to the STYLE and SKU levels.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.MATCH_GROUP_ID is 'The match group id for matched rows.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.COST_MATCHED is 'The cost_matched indicator populated for CN rows.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.QTY_MATCHED is 'The qty_matched indicator populated for CN rows.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.MATCH_HIST_ID is 'The match id from match history tables. Only valid for rows where MATCH_STATUS is ''M''atched.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.MANUAL_GROUP_ID is 'The manual group id from IM_CN_MANUAL_GROUPS for CN and CNR levels.'
;

COMMENT ON COLUMN im_detail_match_cn_ws.MATCHED_FILTER is 'Indicates whether a SKU or STYLE is parent to a matched CN or CNR record'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CHOICE_FLAG is 'Indicates whether an CN or CNR level row will be included in a match. For SKU level rows, this columns indicates if the user wants to consume the match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.UI_FILTER_IND is 'Indicates if the row has been filtered by the UI.  N = not filtered and should be displayed.  Y = filtered and should be displayed.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_SUPPLIER_GROUP_ID is 'Supplier Group Identifier of the CNR document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_SUPPLIER is 'Supplier Identifier of the CNR document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_SUPPLIER_NAME is 'Holds Supplier  name of the CNR document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_SUPPLIER_PHONE is 'Holds Supplier phone number of the CNR document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_SUPPLIER_SITE_ID is 'Holds Supplier phone number of the CNR document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_SUPPLIER_SITE_NAME is 'Holds Supplier site name of the CNR document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_SUPPLIER_GROUP_ID is 'Supplier Group Identifier of the CN document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_SUPPLIER is 'Supplier Identifier of the CN document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_SUPPLIER_NAME is 'Holds Supplier  name of the CN document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_SUPPLIER_PHONE is 'Holds Supplier phone number of the CN document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_SUPPLIER_SITE_ID is 'Holds Supplier phone number of the CN document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_SUPPLIER_SITE_NAME is 'Holds Supplier site name of the CN document.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_EXT_DOC_ID is 'The ext_doc_id for the cnr_id.  Populated on CNR rows and on SKU rows if there is a single CNR_EXT_DOC_ID on all the CNR rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_TAX_CODE is 'The tax code for the cnr_id.  Populated on CNR rows and on SKU rows if there is a single TAX_CODE on all the CNR rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_TAX_RATE is 'The tax rate for the cnr_id.  Populated on CNR rows and on SKU rows if there is a single TAX_CODE on all the CNR rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_TAX_AMOUNT is 'The tax amount for the cnr_id.  Populated on CNR rows and summed to SKU rows if there is a single TAX_CODE on all the CNR rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_EXT_DOC_ID is 'The ext_doc_id for the cn_id.  Populated on CN rows and on SKU rows if there is a single CN_EXT_DOC_ID on all the CN rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_TAX_CODE is 'The tax code for the cn_id.  Populated on CN rows and on SKU rows if there is a single TAX_CODE on all the CN rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_TAX_RATE is 'The tax rate for the cn_id.  Populated on CN rows and on SKU rows if there is a single TAX_CODE on all the CN rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_TAX_AMOUNT is 'The tax amount for the cn_id.  Populated on CN rows and summed to SKU rows if there is a single TAX_CODE on all the CN rows under the SKU.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.TAX_DISCREPANT is 'Indicates whether a SKU record''s selected CN and CNR children are tax discrepant'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.TAX_DISC_RSLVD is 'Indicates whether a SKU record was tax discrepant and has been resolved'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_ORDER_NO is 'Order Number of the Credit Note'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_ORDER_NO is 'Order Number of the Credit Note Request'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CN_RTV_ORDER_NO is 'RTV Order Number of the Credit Note'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_WS.CNR_RTV_ORDER_NO is 'RTV Order Number of the Credit Note Request'
;

PROMPT CREATING PRIMARY KEY ON 'IM_DETAIL_MATCH_CN_WS';
ALTER TABLE IM_DETAIL_MATCH_CN_WS
    ADD CONSTRAINT PK_IM_DETAIL_MATCH_CN_WS PRIMARY KEY ( DETAIL_MATCH_CN_WS_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	
	

	
PROMPT CREATING TABLE 'IM_DETAIL_MATCH_CN_DTL_HIST';
CREATE TABLE IM_DETAIL_MATCH_CN_DTL_HIST
	(
     MATCH_ID		   NUMBER (10,0)  NOT NULL ,
     DOC_ID  		   NUMBER (10,0)  NOT NULL ,
     ITEM 			   VARCHAR2 (25)  NOT NULL , 
     DOC_TYPE		   VARCHAR2 (6)  NOT NULL ,
     CREATED_BY 	   VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE     DATE  NOT NULL ,
     LAST_UPDATED_BY   VARCHAR2 (60)  NOT NULL ,
     LAST_UPDATE_DATE  DATE  NOT NULL ,
     OBJECT_VERSION_ID NUMBER (15,0)  NOT NULL
    )
 INITRANS 6
 TABLESPACE RETAIL_DATA
;

COMMENT ON TABLE IM_DETAIL_MATCH_CN_DTL_HIST is ''
;


COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.MATCH_ID is 'This column will uniquely identify a match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.DOC_ID is 'The document involved in the match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.ITEM is 'The item involved in teh match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.DOC_TYPE is 'The type of document involved in the match'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_DTL_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_DETAIL_MATCH_CN_DTL_HIST';
ALTER TABLE IM_DETAIL_MATCH_CN_DTL_HIST
    ADD CONSTRAINT PK_IM_DETAIL_MATCH_CN_DTL_HIST PRIMARY KEY ( MATCH_ID, DOC_ID, ITEM )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	



PROMPT CREATING TABLE 'IM_SUM_MATCH_CN_DTL_HIST';
CREATE TABLE IM_SUM_MATCH_CN_DTL_HIST
    (
     MATCH_ID		   NUMBER (10,0)  NOT NULL ,
     DOC_ID			   NUMBER (10,0)  NOT NULL ,
     DOC_TYPE		   VARCHAR2 (6)  NOT NULL ,
     CREATED_BY		   VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE 	   DATE  NOT NULL ,
     LAST_UPDATED_BY   VARCHAR2 (60)  NOT NULL ,
     LAST_UPDATE_DATE  DATE  NOT NULL ,
     OBJECT_VERSION_ID NUMBER (15,0)  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_SUM_MATCH_CN_DTL_HIST is ''
;


COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.MATCH_ID is 'This column will uniquely identify a match.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.DOC_ID is 'The document involved in the match.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.DOC_TYPE is 'The type of document involved in the match'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_DTL_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_SUM_MATCH_CN_DTL_HIST';
ALTER TABLE IM_SUM_MATCH_CN_DTL_HIST
    ADD CONSTRAINT PK_IM_SUM_MATCH_CN_DTL_HIST PRIMARY KEY ( MATCH_ID, DOC_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_SUM_MATCH_CN_HIST';
CREATE TABLE IM_SUM_MATCH_CN_HIST
    (
     MATCH_ID 	       NUMBER (10,0)  NOT NULL ,
     AUTO_MATCHED 	   VARCHAR2 (1)  NOT NULL ,
     EXACT_MATCH	   VARCHAR2 (1)  NOT NULL ,
     CREATED_BY		   VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE 	   DATE  NOT NULL ,
     LAST_UPDATED_BY   VARCHAR2 (60)  NOT NULL ,
     LAST_UPDATE_DATE  DATE  NOT NULL ,
     OBJECT_VERSION_ID NUMBER (15,0)  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_SUM_MATCH_CN_HIST is ''
;


COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.MATCH_ID is 'this column will uniquely identify a match.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.AUTO_MATCHED is 'this column indicates whether the match was obtained automatically by the system or was created manually.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.EXACT_MATCH is 'this column indicates whether the match was exact or not exact but within tolerance.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_SUM_MATCH_CN_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_SUM_MATCH_CN_HIST';
ALTER TABLE IM_SUM_MATCH_CN_HIST
    ADD CONSTRAINT PK_IM_SUM_MATCH_CN_HIST PRIMARY KEY ( MATCH_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
	
	
PROMPT CREATING TABLE 'IM_DETAIL_MATCH_CN_HIST';
CREATE TABLE IM_DETAIL_MATCH_CN_HIST
    (
     MATCH_ID		   NUMBER (10,0)  NOT NULL ,
     AUTO_MATCHED	   VARCHAR2 (1)  NOT NULL ,
     EXACT_MATCH	   VARCHAR2 (1)  NOT NULL ,
     CREATED_BY 	   VARCHAR2 (60)  NOT NULL ,
     CREATION_DATE     DATE NOT NULL ,
     LAST_UPDATED_BY   VARCHAR2(60)  NOT NULL ,
     LAST_UPDATE_DATE  DATE  NOT NULL ,
     OBJECT_VERSION_ID NUMBER (15,0)  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;

		
		
COMMENT ON TABLE IM_DETAIL_MATCH_CN_HIST is ''
;


COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.MATCH_ID is 'this column will uniquely identify a match.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.AUTO_MATCHED is 'this column indicates whether the match was obtained automatically by the system or was created manually.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.EXACT_MATCH is 'this column indicates whether the match was exact or not exact but within tolerance.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_DETAIL_MATCH_CN_HIST.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_DETAIL_MATCH_CN_HIST';
ALTER TABLE IM_DETAIL_MATCH_CN_HIST
    ADD CONSTRAINT PK_IM_DETAIL_MATCH_CN_HIST PRIMARY KEY ( MATCH_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_REVERSE_DEBIT_MEMO_WS';
CREATE TABLE IM_REVERSE_DEBIT_MEMO_WS
    (
     INJECT_ID					 NUMBER (10)  NOT NULL ,
     INJECT_DOC_ID				 NUMBER (10)  NOT NULL ,
     DOC_TYPE					 VARCHAR2 (6) ,
     SRC_DOC_ID					 NUMBER (10) ,
     ITEM						 VARCHAR2 (25) ,
     ITEM_DESC					 VARCHAR2 (250) ,
     VPN						 VARCHAR2 (30) ,
     DEBIT_MEMO_QTY				 NUMBER (12,4) ,
     REVERSED_QTY				 NUMBER (12,4) ,
     AVAIL_QTY					 NUMBER (12,4) ,
     DEBIT_MEMO_UNIT_COST		 NUMBER (20,4) ,
     REVERSED_UNIT_COST			 NUMBER (20,4) ,
     AVAIL_UNIT_COST			 NUMBER (20,4) ,
     DEBIT_MEMO_EXT_COST	     NUMBER (20,4) ,
     TOTAL_REVERSED_COST         NUMBER (20,4) ,
     DEBIT_MEMO_REASON_CODE_ID   VARCHAR2 (20) ,
     DEBIT_MEMO_REASON_CODE_DESC VARCHAR2 (1000) ,
     REVERSED_REASON_CODE_ID     VARCHAR2 (20) ,
     REVERSED_REASON_CODE_DESC   VARCHAR2 (1000) ,
     REVERSAL_COMMENT		     VARCHAR2 (2000) ,
     TAX_CODE 				     VARCHAR2 (6) ,
     TAX_RATE				     NUMBER (20,10) ,
     CHOICE_FLAG			     VARCHAR2 (1) DEFAULT 'N'  NOT NULL ,
     QBE_FILTER_IND			     VARCHAR2 (1) DEFAULT 'N'  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA;
		
		

COMMENT ON TABLE IM_REVERSE_DEBIT_MEMO_WS is 'Workspace table for reversing debit memos'
;


COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.INJECT_ID is 'Inject ID, unique for each injecting process'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.INJECT_DOC_ID is 'Injector document ID, unique for each documents that is unique globally'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.DOC_TYPE is 'Holds the document type'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.SRC_DOC_ID is 'This column will hold the doc_id from im_doc_head while opening an existing document'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.ITEM is 'Holds transaction level items'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.ITEM_DESC is 'Description of the item'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.VPN is 'This field contains the Vendor Product Number associated with this item.'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.DEBIT_MEMO_QTY is 'Quantity of the item'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.REVERSED_QTY is 'Reversed quantity of the item. This can not exceed the debit_memo_qty'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.AVAIL_QTY is 'Quantity remaining after reversal'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.DEBIT_MEMO_UNIT_COST is 'Unit cost of the item'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.REVERSED_UNIT_COST is 'Reversed unit cost of the item. This can not exceed the debit_memo_unit_cost'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.AVAIL_UNIT_COST is 'Unit cost remaining after reversal'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.DEBIT_MEMO_EXT_COST is 'Extended cost of the debit memo'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.TOTAL_REVERSED_COST is 'Total reversed cost'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.DEBIT_MEMO_REASON_CODE_ID is 'Reason code id from the original debit memo'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.DEBIT_MEMO_REASON_CODE_DESC is 'Description of the reason code id from the original debit memo'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.REVERSED_REASON_CODE_ID is 'Reason code id for the credit memo'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.REVERSED_REASON_CODE_DESC is 'Description of the reason code for the credit memo'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.REVERSAL_COMMENT is 'Informative comment to provide extra detail with the reason code'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.TAX_CODE is 'Tax code applicable for the item'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.TAX_RATE is 'Tax rate applicable for the item'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.CHOICE_FLAG is 'Indicates if this item in the original memo should be reversed'
;

COMMENT ON COLUMN IM_REVERSE_DEBIT_MEMO_WS.QBE_FILTER_IND is 'Indicates if the record is filtered out using query by example on the UI'
;	
	


	
PROMPT CREATING TABLE 'IM_MATCH_INQ_DETAIL_WS';
CREATE TABLE IM_MATCH_INQ_DETAIL_WS
    (
     MATCH_INQ_DETAIL_WS_ID   NUMBER (10)  NOT NULL ,
     WORKSPACE_ID             NUMBER (10)  NOT NULL ,
     ANCESTOR_ID              NUMBER (10) ,
     MATCH_STATUS             VARCHAR2 (1) ,
     ITEM_PARENT              VARCHAR2 (25) ,
     ITEM                     VARCHAR2 (25) ,
     ITEM_DESCRIPTION         VARCHAR2 (250) ,
     ENTITY_TYPE              VARCHAR2 (5)  NOT NULL ,
     INVOICE_ID               NUMBER (10) ,
     INVOICE_UNIT_COST        NUMBER (20,4) ,
     INVOICE_QTY              NUMBER (12,4) ,
     INVOICE_EXT_COST         NUMBER (20,4) ,
     RECEIPT_ID               NUMBER (12) ,
     RECEIPT_UNIT_COST        NUMBER (20,4) ,
     RECEIPT_AVAIL_QTY        NUMBER (12,4) ,
     RECEIPT_EXT_COST         NUMBER (20,4) ,
     RECEIPT_RECEIVED_QTY     NUMBER (12,4) ,
     RECEIPT_MATCHED_QTY      NUMBER (12,4) ,
     UNIT_COST_VARIANCE       NUMBER (20,4) ,
     QTY_VARIANCE             NUMBER (20,4) ,
     REASON_CODE_ID           VARCHAR2 (20) ,
     MULTI_REASON_CODE_ID_IND VARCHAR2 (1) DEFAULT 'N' ,
     ORIG_RECEIPT_ITEM        VARCHAR2 (25) ,
     REASON_CODE_DESC         VARCHAR2 (1000) ,
     ACTION                   VARCHAR2 (6) ,
	 INVOICE_EXT_DOC_ID		  VARCHAR2 (150 ) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA;
		
		
		
COMMENT ON TABLE IM_MATCH_INQ_DETAIL_WS IS 'Workspace table to support online match inquiry.' 
;


COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.MATCH_INQ_DETAIL_WS_ID IS 'Primary key column.'
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.WORKSPACE_ID IS 'Workspace of the data.' 
;  

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.ANCESTOR_ID IS 'The parent row''s DETAIL_MATCH_WS_ID.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.MATCH_STATUS IS 'The match status. Valid values are ''M''atch and ''U''nmatch.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.ITEM_PARENT IS 'The parent of the item.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.ITEM IS 'The item.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.ITEM_DESCRIPTION IS 'The description of the item.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.ENTITY_TYPE IS 'The type of the row.  Valid values are: STYLE, SKU, INVC, and RCPT.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.INVOICE_ID IS 'The invoice being considered for matching. Empty for STYLE and RCPT levels, a single invoice at the INVC level and rolled up value to the SKU level.' 
;
  
COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.INVOICE_UNIT_COST IS 'The unit cost of the invoice(s).  Empty for STYLE and RCPT levels, a single invoice''s unit cost at the INVC level and rolled up value to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.INVOICE_QTY IS 'The quantity of the invoice(s). Empty for STYLE and RCPT levels, a single invoice''s quantity at the INVC level, and summed up to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.INVOICE_EXT_COST IS 'The extended cost of the invoice(s). Empty for STYLE and RCPT levels, a single invoice''s extended cost at the INVC level, and summed up to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.RECEIPT_ID IS 'The receipt being considered for matching. Empty for STYLE and INVC levels, a single receipt at the RCPT level and rolled up value to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.RECEIPT_UNIT_COST IS 'The unit cost of the receipt. Empty for STYLE and INVC levels, a single receipt''s unit cost at the RCPT level and rolled up value to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.RECEIPT_AVAIL_QTY IS 'The quantity of the receipt available match. Empty for STYLE and INVC levels, a single receipt''s available quantity at the RCPT level, and summed up to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.RECEIPT_EXT_COST IS 'The extended quantity of the receipt. Empty for STYLE and INVC levels, a single invoice''s extended cost at the RCPT level, and summed up to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.RECEIPT_RECEIVED_QTY IS 'The received quantity of the receipt. Empty for STYLE and INVC levels, a single receipt''s received quantity at the RCPT level, and summed up to the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.RECEIPT_MATCHED_QTY IS 'The matched quantity of the receipt.  Only populated at the RCPT level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.UNIT_COST_VARIANCE IS 'The amount of variance in unit cost at the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.QTY_VARIANCE IS 'The amount of variance in quantity at the SKU level.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.REASON_CODE_ID IS 'The reason code associated with the match.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.MULTI_REASON_CODE_ID_IND IS 'Indicates whether or not more than one reason code id exists for the doc_id item combination.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.ORIG_RECEIPT_ITEM IS 'This field is populated when a substitute items was used during the matching process.  It will only be populated on RCPT rows.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.REASON_CODE_DESC IS 'This column holds the user-defined description of the reason code.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.ACTION IS 'The action associated with the reason code.' 
;

COMMENT ON COLUMN IM_MATCH_INQ_DETAIL_WS.INVOICE_EXT_DOC_ID is 'The ext_doc_id for the INVOICE_ID.'
;
PROMPT CREATING INDEX 'IM_MATCH_INQ_DETAIL_WS_I1';
CREATE INDEX IM_MATCH_INQ_DETAIL_WS_I1 ON IM_MATCH_INQ_DETAIL_WS
    (
     WORKSPACE_ID ASC ,
     ITEM ASC
    )
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_INQ_DETAIL_WS';
    ALTER TABLE IM_MATCH_INQ_DETAIL_WS 
	ADD CONSTRAINT MATCH_INQ_DETAIL_WS_ID_PK PRIMARY KEY ( MATCH_INQ_DETAIL_WS_ID ) 
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_EDI_DOC_SEARCH_WS';
CREATE TABLE IM_EDI_DOC_SEARCH_WS
    (
     WORKSPACE_ID 		        NUMBER (10,0)  NOT NULL ,
     INJECT_DOC_ID 		        NUMBER (10,0) ,
     INJECT_SOURCE 		        VARCHAR2 (300) ,
     EXT_DOC_ID 		        VARCHAR2 (150) ,
     DOC_TYPE 			        VARCHAR2 (6) ,
     STATUS 			        VARCHAR2 (10) ,
     DOC_DATE 			        DATE ,
     DUE_DATE 			        DATE ,
     RULE 				        VARCHAR2 (40) ,
     ERROR_CONTEXT 		        VARCHAR2 (200) ,
     LOCATION 			        NUMBER (10,0) ,
     LOC_TYPE 			        VARCHAR2 (1) ,
     LOC_NAME 			        VARCHAR2 (150) ,
     ORDER_NO 			        NUMBER (12,0) ,
     VENDOR_TYPE 		        VARCHAR2 (6) ,
     VENDOR 			        VARCHAR2 (10) ,
     VENDOR_NAME                VARCHAR2 (240) ,
     SUPPLIER_SITE_ID           VARCHAR2 (10) ,
     SUPPLIER_SITE_NAME         VARCHAR2 (240) ,
     CURRENCY_CODE	            VARCHAR2 (3 ) ,
     TOTAL_COST 		        NUMBER (20,4) ,
     TOTAL_QTY 			        NUMBER (12,4) ,
     INJECT_DOC_HEAD_VERSION_ID NUMBER (15,0) ,
     QBE_FILTER_IND 			VARCHAR2 (1) ,
     CHOICE_FLAG 				VARCHAR2 (1)  NOT NULL ,
	 INJECT_ID NUMBER(10) NULL 
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_EDI_DOC_SEARCH_WS is 'Workspace table to support the EDI Maintenance screen.'
;


COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.WORKSPACE_ID is 'Unique ID for the specific instance of the EDI Maintenance UI.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.INJECT_DOC_ID is 'Inject ID, unique for each injecting process.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.INJECT_SOURCE is 'Inject source, will be the path to the source data file in case of file based data source, such as EDI.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.EXT_DOC_ID is 'Document identifier as provided by vendor.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.DOC_TYPE is 'The type of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.STATUS is 'The status of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.DOC_DATE is 'The doc date of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.DUE_DATE is 'The due date of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.RULE is 'The rule violated by the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.ERROR_CONTEXT is 'The error context of the rule violation.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.LOCATION is 'The location of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.LOC_TYPE is 'The location type of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.LOC_NAME is 'The location name of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.ORDER_NO is 'The order_no of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.VENDOR_TYPE is 'The vendor_type of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.VENDOR is 'The vendor of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.VENDOR_NAME is 'The vendor_name of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.SUPPLIER_SITE_ID is 'The supplier_site_id of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.SUPPLIER_SITE_NAME is 'The supplier_site name of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.CURRENCY_CODE is 'The currency_code of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.TOTAL_COST is 'The total cost of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.TOTAL_QTY is 'The total quantity of the document.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.INJECT_DOC_HEAD_VERSION_ID is 'The OBJECT_VERSION_ID of the im_inject_doc_head row that is the source of the data.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.QBE_FILTER_IND is 'Indicates if the rows has been filtered.  Y means filtered, N means not filtered.'
;

COMMENT ON COLUMN IM_EDI_DOC_SEARCH_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI.'
;

COMMENT ON COLUMN im_edi_doc_search_ws.INJECT_ID is 'Inject ID, unique for each injecting process from IM_INJECT_DOC_HEAD.'
;
PROMPT CREATING INDEX ON 'IM_EDI_DOC_SEARCH_WS';
CREATE INDEX IM_EDI_DOC_SEARCH_WS_I1 ON IM_EDI_DOC_SEARCH_WS
    (
	 WORKSPACE_ID ,
     INJECT_DOC_ID
    )
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;




PROMPT CREATING TABLE 'IM_BATCH_CONFIG';
CREATE TABLE IM_BATCH_CONFIG
    (
     BATCH_NAME 	VARCHAR2(90)  NOT NULL ,
     SUPPLIER 		NUMBER(10)  NOT NULL ,
     SCOPE 			VARCHAR2(1) NOT NULL ,
     PROCESSED 		VARCHAR2(1) DEFAULT 'N'  NOT NULL ,
     PROCESSED_DATE DATE  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_BATCH_CONFIG is 'Batch configuration options. Allow defining supplier level exclusion or inclusion scope per batch run.  Single  batch run can have multiple suppliers included or excluded in the scope. If no scope has been defined then all eligible data will be processed. Single run can have all exclusions or all inclusions'
;


COMMENT ON COLUMN IM_BATCH_CONFIG.BATCH_NAME is 'Batch name the configuration is applicable to. Supported batches are REIMPOSTING,REIMAUTOMATCH,REIMCREDITNOTEAUTOMATCH,REIMROLLUP,REIMFIXEDDEALUPLOAD,REIMCOMPLEXDEALUPLOAD.'
;

COMMENT ON COLUMN IM_BATCH_CONFIG.SUPPLIER is 'Supplier ID the filter by.'
;

COMMENT ON COLUMN IM_BATCH_CONFIG.SCOPE is '(E)xclude/(I)nclude indicator. (E)xclude asks to exclude the data from defined supplier from the scope of the batch processing, where (I)nclude asks to include the data from defined supplier from in scope of batch processing. Such data will be included only if it is eligible to be processed by the batch otherwise.'
;

COMMENT ON COLUMN IM_BATCH_CONFIG.PROCESSED is 'The versiProcessing indicator. It will be set to N before the configuration was processed and will be set to Y after the processing. Configuration has a lifecycle of a single use. After the configuration was used once, if will not be used for sub-sequence batch runs.on identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_BATCH_CONFIG.PROCESSED_DATE is 'The date processing has been done. Will be null when processing hasn''t been done.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_BATCH_CONFIG';
ALTER TABLE IM_BATCH_CONFIG
    ADD CONSTRAINT PK_IM_BATCH_CONFIG PRIMARY KEY (BATCH_NAME, SUPPLIER, SCOPE, PROCESSED, PROCESSED_DATE )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_DISCREPANCY_LIST_RCPT_WS';
CREATE TABLE IM_DISCREPANCY_LIST_RCPT_WS
    (
     DISCREPANCY_LIST_RCPT_WS_ID NUMBER(10,0)  NOT NULL ,
     DISCREPANCY_LIST_WS_ID 	 NUMBER(10,0)  NOT NULL ,
     WORKSPACE_ID				 NUMBER(10,0)  NOT NULL ,
     RCPT_DETAIL_MATCH_WS_ID	 NUMBER(10,0) ,
     CHOICE_FLAG				 VARCHAR2(1)
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		
        
COMMENT ON TABLE IM_DISCREPANCY_LIST_RCPT_WS is 'This workspace table holds the information for receipt details on the discrepancy review list screen.'
;


COMMENT ON COLUMN IM_DISCREPANCY_LIST_RCPT_WS.DISCREPANCY_LIST_RCPT_WS_ID is 'Unique identifier for the row.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_RCPT_WS.DISCREPANCY_LIST_WS_ID is 'The im_discrepancy_list_ws row the receipts belong to.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_RCPT_WS.WORKSPACE_ID is 'Identifies the workspace id for the UI session.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_RCPT_WS.RCPT_DETAIL_MATCH_WS_ID is 'The invoice detail match workspace the list was generated from.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_RCPT_WS.CHOICE_FLAG is 'Indicates selection in the UI.'
;

	
	
	
PROMPT CREATING TABLE 'IM_DISCREPANCY_LIST_WS'
CREATE TABLE IM_DISCREPANCY_LIST_WS
    (
     DISCREPANCY_LIST_WS_ID	 NUMBER (10,0)  NOT NULL ,
     WORKSPACE_ID			 NUMBER (10,0)  NOT NULL ,
     ITEM_PARENT			 VARCHAR2 (25) ,
     ITEM					 VARCHAR2 (25) ,
     ITEM_DESCRIPTION		 VARCHAR2 (250) ,
     DEPT					 NUMBER (12,0) ,
     CLASS					 NUMBER (12,0) ,
     SUBCLASS				 NUMBER (12,0) ,
     LOCATION				 NUMBER (10,0) ,
     LOC_TYPE				 VARCHAR2 (1) ,
     LOCATION_NAME			 VARCHAR2 (150) ,
     SUPPLIER_GROUP_ID		 NUMBER (10,0) ,
     SUPPLIER				 NUMBER (10,0) ,
     SUPPLIER_NAME			 VARCHAR2 (240) ,
     SUPPLIER_PHONE			 VARCHAR2 (20) ,
     PO_SUPPLIER			 NUMBER (10,0) ,
     PO_SUPPLIER_SITE_ID	 NUMBER (10,0) ,
     SUPPLIER_SITE_ID		 NUMBER (10,0) ,
     SUPPLIER_SITE_NAME		 VARCHAR2 (240) ,
     CURRENCY_CODE			 VARCHAR2 (3) ,
     INVOICE_ID				 NUMBER (10,0) ,
     INVOICE_UNIT_COST		 NUMBER (20,4) ,
     INVOICE_QTY			 NUMBER (12,4) , 
     INVOICE_EXT_COST		 NUMBER (20,4) ,
     EXT_DOC_ID				 VARCHAR2 (150) ,
     ORDER_NO				 NUMBER (12,0) ,
     RESOLVE_BY_DATE		 DATE ,
     ROUTING_DATE			 DATE ,
     ORDER_UNIT_COST		 NUMBER (20,4) ,
     ORDER_EXT_COST			 NUMBER (20,4) ,
     ORIG_ORDER_UNIT_COST	 NUMBER (20,4) ,
     INVOICE_TOTAL_COST		 NUMBER (20,4) ,
     ORDER_QTY				 NUMBER (12,4) ,
     CASH_DISCOUNT			 NUMBER (12,4) ,
     RECEIPT_ID				 NUMBER (12,0) ,
     RECEIPT_UNIT_COST		 NUMBER (20,4) ,
     RECEIPT_AVAIL_QTY		 NUMBER (12,4) ,
     RECEIPT_EXT_COST		 NUMBER (20,4) ,
     RECEIPT_RECEIVED_QTY	 NUMBER (12,4) ,
     COST_MATCHED			 VARCHAR2 (1) ,
     QTY_MATCHED			 VARCHAR2 (1) ,
     MATCH_KEY_ID			 NUMBER (10,0) ,
     SKU_DETAIL_MATCH_WS_ID	 NUMBER (10,0) ,
     INVC_DETAIL_MATCH_WS_ID NUMBER (10,0) ,
     CHOICE_FLAG 			 VARCHAR2 (1) ,
	 RECEIPT_COUNT NUMBER (10) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_DISCREPANCY_LIST_WS is 'This workspace table holds the information for the discrepancy review list screen.'
;


COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.DISCREPANCY_LIST_WS_ID is 'Unique identifier for the row.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.WORKSPACE_ID is 'Identifies the workspace id for the UI session.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ITEM_PARENT is 'The parent of the item.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ITEM is 'The item.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ITEM_DESCRIPTION is 'The description of the item.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.DEPT is 'The department of the item.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.CLASS is 'The class of the item.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SUBCLASS is 'The subclass of the item.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.LOCATION is 'The location of the discrepancy.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.LOC_TYPE is 'The type of location.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.LOCATION_NAME is 'The name of the location.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SUPPLIER_GROUP_ID is 'The Supplier Group Identifier.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SUPPLIER is 'The Supplier Identifier.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SUPPLIER_NAME is 'The supplier name.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SUPPLIER_PHONE is 'The supplier phone.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.PO_SUPPLIER is 'The PO supplier.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.PO_SUPPLIER_SITE_ID is 'The PO supplier site.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SUPPLIER_SITE_ID is 'The supplier site.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SUPPLIER_SITE_NAME is 'The supplier site name.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.CURRENCY_CODE is 'The currency code of the discrepancy.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.INVOICE_ID is 'The invoice ID.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.INVOICE_UNIT_COST is 'The unit cost on the invoice.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.INVOICE_QTY is 'The qty on the invoice.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.INVOICE_EXT_COST is 'The extended cost of the invoice.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.EXT_DOC_ID is 'The external ID for the document.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ORDER_NO is 'The order number on the invoice.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.RESOLVE_BY_DATE is 'The resolve by date of the document.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ROUTING_DATE is 'The routing date of the document.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ORDER_UNIT_COST is 'The unit cost on the order.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ORDER_EXT_COST is 'The extended unit cost of the order'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ORIG_ORDER_UNIT_COST is 'The original order cost'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.INVOICE_TOTAL_COST is 'The total cost of the invoice.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.ORDER_QTY is 'The order quantity.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.CASH_DISCOUNT is 'The cash discount amount.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.RECEIPT_ID is 'The receipt identifier.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.RECEIPT_UNIT_COST is 'The unit cost on the receipt.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.RECEIPT_AVAIL_QTY is 'The available quantity on the receipt.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.RECEIPT_EXT_COST is 'The extended cost on the receipt.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.RECEIPT_RECEIVED_QTY is 'The qty that has been received.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.COST_MATCHED is 'Cost match indicator.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.QTY_MATCHED is 'Quantity match indicator'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.MATCH_KEY_ID is 'The identifier of the match key.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.SKU_DETAIL_MATCH_WS_ID is 'The item detial match workspace the list was generated from.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.INVC_DETAIL_MATCH_WS_ID is 'The invoice detail match workspace the list was generated from.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.CHOICE_FLAG is 'Indicates selection in the UI.'
;

COMMENT ON COLUMN IM_DISCREPANCY_LIST_WS.RECEIPT_COUNT is 'The number if receipts associated with this invoice / sku combination.'
;




PROMPT CREATING TABLE 'IM_SEC_GRP_REASON_CODE';
CREATE TABLE IM_SEC_GRP_REASON_CODE
    (
	 GROUP_ID       NUMBER(4)  NOT NULL ,
     REASON_CODE_ID VARCHAR2(20)  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_SEC_GRP_REASON_CODE is 'Reason codes available for a RMS security group'
;


COMMENT ON COLUMN IM_SEC_GRP_REASON_CODE.GROUP_ID is 'Group id from SEC_GROUP'
;

COMMENT ON COLUMN IM_SEC_GRP_REASON_CODE.REASON_CODE_ID is 'Reason code id from IM_REASON_CODES'
;

PROMPT CREATING PRIMARY KEY ON 'IM_SEC_GRP_REASON_CODE';
ALTER TABLE IM_SEC_GRP_REASON_CODE
    ADD CONSTRAINT PK_IM_SEC_GRP_REASON_CODE PRIMARY KEY ( GROUP_ID, REASON_CODE_ID )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	



PROMPT CREATING TABLE 'IM_TAX_REVIEW_LIST_SEARCH_WS';
CREATE TABLE IM_TAX_REVIEW_LIST_SEARCH_WS
    (   
     WORKSPACE_ID 				NUMBER (10,0)  NOT NULL ,
     DOC_ID 					NUMBER (10,0) ,
     EXT_DOC_ID 				VARCHAR2 (150) ,
     SUPPLIER_ID 				VARCHAR2 (10) ,
     SUPPLIER_NAME 				VARCHAR2 (240) ,
     SUPPLIER_SITE_ID 			VARCHAR2 (10) ,
     SUPPLIER_SITE_NAME 		VARCHAR2 (240) ,
     ORDER_NO 					NUMBER (12,0) ,
     ITEM 						VARCHAR2 (25) ,
     ITEM_DESC 					VARCHAR2 (250) ,
     LOCATION 					NUMBER (10,0) ,
     LOCATION_NAME 				VARCHAR2 (150) ,
     LOC_TYPE 					VARCHAR2 (1) ,
     TAX_CODE_DISCREPANCY_IND 	VARCHAR2 (1) ,
     TAX_RATE_DISCREPANCY_IND 	VARCHAR2 (1) ,
	 DOC_TAX_CODE VARCHAR2 (6 ) NULL ,
	 DOC_TAX_RATE NUMBER (20,10) NULL ,
	 DOC_TAX_AMOUNT NUMBER (20,4) NULL ,
	 VERIFY_TAX_CODE VARCHAR2 (6 ) NULL ,
	 VERIFY_TAX_RATE NUMBER (20,10) NULL ,
	 VERIFY_TAX_AMOUNT NUMBER (20,4) NULL ,
	 DOC_DATE DATE  NULL ,
	 CHOICE_FLAG VARCHAR2 (1 ) NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_TAX_REVIEW_LIST_SEARCH_WS is 'This workspace table holds the information for the tax discrepancy review list screen.'
;


COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.WORKSPACE_ID is 'Identifies the workspace id for the UI session.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.DOC_ID is 'The document with the tax discrepancy.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.EXT_DOC_ID is 'The exernal document identifier with the tax discrepancy.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.SUPPLIER_ID is 'The supplier of the document.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.SUPPLIER_NAME is 'The name of the supplier.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.SUPPLIER_SITE_ID is 'The supplier site of the document.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.SUPPLIER_SITE_NAME is 'The name of the supplier site.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.ORDER_NO is 'The order number on the document.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.ITEM is 'The item with with the tax discrepancy.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.ITEM_DESC is 'The item description.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.LOCATION is 'The location on the document.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.LOCATION_NAME is 'The name of the location.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.LOC_TYPE is 'The type of the locationn.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.TAX_CODE_DISCREPANCY_IND is 'Indicates if the doc/item combination is tax code discrepant.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.TAX_RATE_DISCREPANCY_IND is 'Indicates if the doc/item combination is tax rate discrepant.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.DOC_TAX_CODE is 'The discrepant tax code.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.DOC_TAX_RATE is 'The tax rate on the document.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.DOC_TAX_AMOUNT is 'The tax amount on the document.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.VERIFY_TAX_CODE is 'The tax code according to the tax verification source.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.VERIFY_TAX_RATE is 'The tax rate according to the tax verification source.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.VERIFY_TAX_AMOUNT is 'The tax amount according to the tax verification source.'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.DOC_DATE is 'This column holds the document date.  The document date is the date the document was created.  When documents are created by an outside party, the doc_date can be different from the create_date (i.e. the doc_date on a merchandise invoice from a supplier will be the date the supplier generates the invoice - the create_date for this record will be the date the invoice was entered into reim).'
;

COMMENT ON COLUMN IM_TAX_REVIEW_LIST_SEARCH_WS.CHOICE_FLAG is 'Indicates if the row selected to be resolved.'
;
PROMPT CREATING INDEX ON 'IM_TAX_REVIEW_LIST_SEARCH_WS';
CREATE INDEX IM_TAX_REVIEW_LIST_SEARCHWS_I1 ON IM_TAX_REVIEW_LIST_SEARCH_WS
    (
	 WORKSPACE_ID ,
     DOC_ID
    )
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;




PROMPT CREATING TABLE 'IM_MATCH_CN_TAX_WS';
CREATE TABLE IM_MATCH_CN_TAX_WS
    (
     WORKSPACE_ID NUMBER (10)  NOT NULL ,
     DOC_ID 	  NUMBER (10)  NOT NULL ,
     TAX_CODE	  VARCHAR2 (6)  NOT NULL ,
     TAX_RATE     NUMBER (20,10)  NOT NULL ,
     TAX_BASIS 	  NUMBER (20,4)  NOT NULL ,
     TAX_AMOUNT   NUMBER (20,4)  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_MATCH_CN_TAX_WS is 'The table that holds header level tax information of the Credit notes that are in the Match Workspace.'
;


COMMENT ON COLUMN IM_MATCH_CN_TAX_WS.WORKSPACE_ID is 'The Match Workspace ID.'
;

COMMENT ON COLUMN IM_MATCH_CN_TAX_WS.DOC_ID is 'The Credit Note this tax is tied to'
;

COMMENT ON COLUMN IM_MATCH_CN_TAX_WS.TAX_CODE is 'The tax code for this record.'
;

COMMENT ON COLUMN IM_MATCH_CN_TAX_WS.TAX_RATE is 'The tax rate tied to this tax.'
;

COMMENT ON COLUMN IM_MATCH_CN_TAX_WS.TAX_BASIS is 'The tax basis for this tax record.'
;

COMMENT ON COLUMN IM_MATCH_CN_TAX_WS.TAX_AMOUNT is 'The total tax amount based on the tax basis and the tax rate'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_CN_TAX_WS';
ALTER TABLE IM_MATCH_CN_TAX_WS
    ADD CONSTRAINT PK_IM_MATCH_CN_TAX_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID, TAX_CODE )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_MATCH_CNR_TAX_WS';
CREATE TABLE IM_MATCH_CNR_TAX_WS
    (
     WORKSPACE_ID NUMBER (10)  NOT NULL ,
     DOC_ID		  NUMBER (10)  NOT NULL ,
     TAX_CODE 	  VARCHAR2 (6)  NOT NULL ,
     TAX_RATE	  NUMBER (20,10)  NOT NULL , 
     TAX_BASIS	  NUMBER (20,4)  NOT NULL ,
     TAX_AMOUNT	  NUMBER (20,4)  NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_MATCH_CNR_TAX_WS is 'The table that holds header level tax information of the Credit note Requests that are in the Match Workspace.'
;


COMMENT ON COLUMN IM_MATCH_CNR_TAX_WS.WORKSPACE_ID is 'The Match Workspace ID.'
;

COMMENT ON COLUMN IM_MATCH_CNR_TAX_WS.DOC_ID is 'The Credit Note Request this tax is tied to'
;

COMMENT ON COLUMN IM_MATCH_CNR_TAX_WS.TAX_CODE is 'The tax code for this record.'
;

COMMENT ON COLUMN IM_MATCH_CNR_TAX_WS.TAX_RATE is 'The tax rate tied to this tax.'
;

COMMENT ON COLUMN IM_MATCH_CNR_TAX_WS.TAX_BASIS is 'The tax basis for this tax record.'
;

COMMENT ON COLUMN IM_MATCH_CNR_TAX_WS.TAX_AMOUNT is 'The total tax amount based on the tax basis and the tax rate'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_CNR_TAX_WS';
ALTER TABLE IM_MATCH_CNR_TAX_WS
    ADD CONSTRAINT PK_IM_MATCH_CNR_TAX_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID, TAX_CODE )
    USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;	



PROMPT CREATING TABLE 'IM_MATCH_INVC_TAX_WS';
CREATE TABLE IM_MATCH_INVC_TAX_WS
    (
     WORKSPACE_ID	   NUMBER (10,0) ,
     MATCH_LUW_ID	   NUMBER (10,0) ,
     MATCH_KEY_ID	   NUMBER (10,0) ,
     MATCH_STGY_DTL_ID NUMBER (10,0) ,
     TAX_CODE 		   VARCHAR2 (6) ,
     TAX_RATE		   NUMBER (20,10) ,
     TAX_BASIS		   NUMBER (20,4) ,
     TAX_AMOUNT 	   NUMBER (20,4)
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_MATCH_INVC_TAX_WS is 'This workspace table holds the invoice information for tax compliance logic.'
;


COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.WORKSPACE_ID is 'The Match Workspace ID.'
;

COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.MATCH_LUW_ID is 'The Match luw ID.'
;

COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.MATCH_KEY_ID is 'The match_key this tax is tied to'
;

COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.MATCH_STGY_DTL_ID is 'The match_stgy_dtl_id this tax is tied to'
;

COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.TAX_CODE is 'The tax code for this record.'
;

COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.TAX_RATE is 'The tax rate tied to this tax.'
;

COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.TAX_BASIS is 'The tax basis for this tax record.'
;

COMMENT ON COLUMN IM_MATCH_INVC_TAX_WS.TAX_AMOUNT is 'The total tax amount based on the tax basis and the tax rate'
;	




PROMPT CREATING TABLE 'IM_MATCH_RCPT_TAX_WS';
CREATE TABLE IM_MATCH_RCPT_TAX_WS
    (
     WORKSPACE_ID      NUMBER (10,0) ,
     MATCH_LUW_ID      NUMBER (10,0) ,
     MATCH_KEY_ID      NUMBER (10,0) ,
     MATCH_STGY_DTL_ID NUMBER (10,0) ,
     TAX_CODE 		   VARCHAR2 (6) ,
     TAX_RATE		   NUMBER (20,10) ,
     TAX_BASIS		   NUMBER (20,4) ,
     TAX_AMOUNT		   NUMBER (20,4)
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

COMMENT ON TABLE IM_MATCH_RCPT_TAX_WS is 'This workspace table holds the receipt information for tax compliance logic.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.WORKSPACE_ID is 'The Match Workspace ID.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.MATCH_LUW_ID is 'The Match luw ID.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.MATCH_KEY_ID is 'The match_key this tax is tied to'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.MATCH_STGY_DTL_ID is 'The match_stgy_dtl_id this tax is tied to'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.TAX_CODE is 'The tax code for this record.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.TAX_RATE is 'The tax rate tied to this tax.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.TAX_BASIS is 'The tax basis for this tax record.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_TAX_WS.TAX_AMOUNT is 'The total tax amount based on the tax basis and the tax rate'
;


PROMPT CREATING TABLE 'IM_MATCH_KEY_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_KEY_GTT
	(
	 WORKSPACE_ID NUMBER(10) NOT NULL,
     MATCH_KEY_VALUE VARCHAR2(100 ) NOT NULL,
     MATCH_KEY_ID NUMBER(10) NOT NULL
	)
	ON COMMIT DELETE ROWS
;



COMMENT ON TABLE IM_MATCH_KEY_GTT is 'Global temporary table used for Auto Match.'
;


COMMENT ON COLUMN IM_MATCH_KEY_GTT.WORKSPACE_ID is 'The Workspace ID of the Match.'
;

COMMENT ON COLUMN IM_MATCH_KEY_GTT.MATCH_KEY_VALUE is 'The Match Key Value of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_KEY_GTT.MATCH_KEY_ID is 'The Match Key ID of the Invoice'
;



PROMPT CREATING TABLE 'IM_TRANSFORM_ORDLOC_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_TRANSFORM_ORDLOC_GTT
	(
     ORDER_NO NUMBER(12,0),
     ITEM VARCHAR2(25 ),
     ITEM_DESC VARCHAR2(250 ),
     LOC NUMBER(10,0),
     LOC_TYPE VARCHAR2(1 ),
     QTY_ORDERED NUMBER(12,4),
     UNIT_COST NUMBER(20,4),
     UNIT_COST_INIT NUMBER(20,4),
     COST_SOURCE VARCHAR2(4 ),
     SUP_QTY_LEVEL VARCHAR2(6 ),
     CATCH_WEIGHT_TYPE VARCHAR2(2 ),
     IMPORT_LOC NUMBER(10,0),
     IMPORT_LOC_TYPE VARCHAR2(1 ),
     TRANSFORM_QTY_ORDERED NUMBER(12,4),
     TRANSFORM_UNIT_COST NUMBER(20,4),
     TRANSFORM_UNIT_COST_INIT NUMBER(20,4)
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_TRANSFORM_ORDLOC_GTT is 'Global temporary table used when applying catchweight and UOM logic to ordloc records.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.ORDER_NO is 'The order being transformed.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.ITEM is 'The item on the order being transformed.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.ITEM_DESC is 'The description of the item.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.LOC is 'The location on the order being transformed.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.LOC_TYPE is 'The type of the location.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.QTY_ORDERED is 'The qty_orderd from ORDLOC.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.UNIT_COST is 'The unit_cost from ORDLOC.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.UNIT_COST_INIT is 'The unit_cost_init from ORDLOC.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.COST_SOURCE is 'The cost_source from ORDLOC.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.SUP_QTY_LEVEL is 'The cost_source from the supplier of the order.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.CATCH_WEIGHT_TYPE is 'The catch_weight_type of the item.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.IMPORT_LOC is 'The import location of the order being transformed.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.IMPORT_LOC_TYPE is 'The import location type of the order being transformed.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.TRANSFORM_QTY_ORDERED is 'The transformed qty_ordered.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.TRANSFORM_UNIT_COST is 'The transformed unit_cost.'
;

COMMENT ON COLUMN IM_TRANSFORM_ORDLOC_GTT.TRANSFORM_UNIT_COST_INIT is 'The transformed unit_cost_init.'
;



PROMPT CREATING TABLE 'IM_MATCH_GROUP_CN_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_GROUP_CN_GTT
	(
     WORKSPACE_ID NUMBER(10,0),
     CN_GROUP_COST NUMBER(20,4),
     CN_GROUP_QTY NUMBER(12,4),
     CNR_GROUP_COST NUMBER(20,4),
     CNR_GROUP_QTY NUMBER(12,4),
     COST_VARIANCE NUMBER(20,4),
     QTY_VARIANCE NUMBER(12,4),
     COST_DISCREPANT VARCHAR2(1 ),
     QTY_DISCREPANT VARCHAR2(1 ),
     MATCH_AVAILABLE VARCHAR2(1 ),
     MATCH_STATUS VARCHAR2(6 ),
     ERROR_CODE VARCHAR2(40 ),
     ERROR_CONTEXT VARCHAR2(200 ),
     TOLERANCE_ID NUMBER(10,0),
     TOLERANCE_CURRENCY_CODE VARCHAR2(3 ),
     TOLERANCE_EXCHANGE_RATE NUMBER(20,10),
     QTY_MATCH_REQUIRED VARCHAR2(1 ),
     MATCH_GROUP_ID NUMBER(10,0),
     MATCH_CN_GROUP_ID NUMBER(10,0),
     MATCH_CNR_GROUP_ID NUMBER(10,0)
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_MATCH_GROUP_CN_GTT is ''
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.WORKSPACE_ID is 'Unique ID for the specific match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.CN_GROUP_COST is 'Total Cost(Summary)/Unit cost (Detail) for the credit note group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.CN_GROUP_QTY is 'Total Qty for the credit note group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.CNR_GROUP_COST is 'Total Cost(Summary)/Unit cost (Detail) for the credit note request group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.CNR_GROUP_QTY is 'Total Qty for the credit not request group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.COST_VARIANCE is 'Cost Variance between credit note and credit note request group'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.QTY_VARIANCE is 'Qty Variance between credit note and credit note request group'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.COST_DISCREPANT is 'Field to state whether the credit note and credit note request groups are cost discrepant.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.QTY_DISCREPANT is 'Field to state whether the credit note and credit note request groups are qty discrepant.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.MATCH_AVAILABLE is 'Field to determine whether match group can be a candidate for best match strategy.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.MATCH_STATUS is 'The final status of the credit note/credit note-item.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.ERROR_CODE is 'User defined error messages for the matching group. Used for reporting'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.ERROR_CONTEXT is 'Additional information required to support the error.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.TOLERANCE_ID is 'This column stores the ID of the tolerance used for Matching.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.TOLERANCE_CURRENCY_CODE is 'Holds the Currency Code of the tolerance being used for matching.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.TOLERANCE_EXCHANGE_RATE is 'Holds the Exchange rate between Invoice and Tolerance Currencies'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.QTY_MATCH_REQUIRED is 'This column denotes whether qty matching will be performed on the match group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.MATCH_GROUP_ID is 'Identifier of the matching group'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.MATCH_CN_GROUP_ID is 'Identifier of the credit note group which participates in the match'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_GTT.MATCH_CNR_GROUP_ID is 'Identifier of the credit note request group which participates in the match'
;



PROMPT CREATING TABLE 'IM_MATCH_GROUP_CN_CN_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_GROUP_CN_CN_GTT
	(
     WORKSPACE_ID NUMBER(10,0),
     CN_GROUP_ID NUMBER(10,0),
     DOC_ID NUMBER(10,0),
     DUE_DATE DATE
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_MATCH_GROUP_CN_CN_GTT is ''
;


COMMENT ON COLUMN IM_MATCH_GROUP_CN_CN_GTT.WORKSPACE_ID is 'Unique ID for the specific match attempt from the UI.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_CN_GTT.CN_GROUP_ID is 'Identifier of the credit note group which participates in the match.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_CN_GTT.DOC_ID is 'The document belonging to the group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_CN_GTT.DUE_DATE is 'Due date of the document.'
;



PROMPT CREATING TABLE 'IM_MATCH_GROUP_CN_CNR_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_GROUP_CN_CNR_GTT
	(
	 WORKSPACE_ID NUMBER(10,0),
	 CNR_GROUP_ID NUMBER(10,0),
	 DOC_ID NUMBER(10,0),
	 DUE_DATE DATE
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_MATCH_GROUP_CN_CNR_GTT is ''
;


COMMENT ON COLUMN IM_MATCH_GROUP_CN_CNR_GTT.WORKSPACE_ID is 'Unique ID for the specific match attempt from the UI.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_CNR_GTT.CNR_GROUP_ID is 'Identifier of the credit note request group which participates in the match.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_CNR_GTT.DOC_ID is 'The document belonging to the group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_CN_CNR_GTT.DUE_DATE is 'Due date of the document.'
;




PROMPT CREATING TABLE 'IM_MATCH_DETAIL_RCPT_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_DETAIL_RCPT_GTT
	(
     MATCH_KEY_ID NUMBER(10),
     RCPT_GROUP_ID NUMBER(10),
     ITEM VARCHAR2(25 ),
     UNIT_COST_NC NUMBER(20,4)
	)
ON COMMIT DELETE ROWS
;



COMMENT ON TABLE IM_MATCH_DETAIL_RCPT_GTT is 'Helper for detail matching receipts.'
;


COMMENT ON COLUMN IM_MATCH_DETAIL_RCPT_GTT.MATCH_KEY_ID is 'Match key of the date.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_RCPT_GTT.RCPT_GROUP_ID is 'Receipt group of the data.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_RCPT_GTT.ITEM is 'The item in the receipt group.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_RCPT_GTT.UNIT_COST_NC is 'The unit cost of the item on the receipt.'
;



PROMPT CREATING TABLE 'IM_MATCH_DETAIL_IDS_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_DETAIL_IDS_GTT
	(
     MATCH_KEY_ID NUMBER(10),
     DOC_ID NUMBER(10),
     ITEM VARCHAR2(25 ),
     ITEM_CTR NUMBER(10),
     MATCH_GROUP_ID NUMBER(10),
     INVC_GROUP_ID NUMBER(10),
     RCPT_GROUP_ID NUMBER(10),
     UNIT_COST_NC NUMBER(20,4)
	)
ON COMMIT DELETE ROWS
;



COMMENT ON TABLE IM_MATCH_DETAIL_IDS_GTT is 'Helper table for detail matching.'
;


COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.MATCH_KEY_ID is 'Match key of the data.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.DOC_ID is 'The document being matched.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.ITEM is 'The item being matched.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.ITEM_CTR is 'The number of invoices for the item.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.MATCH_GROUP_ID is 'The match group for the data.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.INVC_GROUP_ID is 'The invoice group for the data.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.RCPT_GROUP_ID is 'The receipt group for the data.'
;

COMMENT ON COLUMN IM_MATCH_DETAIL_IDS_GTT.UNIT_COST_NC is 'The cost on the receipt.'
;



PROMPT CREATING TABLE 'IM_MATCH_CHUNK_1_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_CHUNK_1_GTT
	(
     WORKSPACE_ID NUMBER(10),
     MATCH_STGY_ID NUMBER(10),
     MATCH_KEY_ID NUMBER(10),
     MATCH_KEY_COUNT NUMBER(10),
     MATCH_LUW_ID NUMBER(10)
	)
	ON COMMIT DELETE ROWS
;



COMMENT ON TABLE IM_MATCH_CHUNK_1_GTT is 'Helper for chnking logic in auto match.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_1_GTT.WORKSPACE_ID is 'Workspace of the data.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_1_GTT.MATCH_STGY_ID is 'Strategy of the data.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_1_GTT.MATCH_KEY_ID is 'Match Key of the data.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_1_GTT.MATCH_KEY_COUNT is 'Number of items for the data.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_1_GTT.MATCH_LUW_ID is 'Match LUW for the data.'
;



PROMPT CREATING TABLE 'IM_MATCH_CHUNK_2_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_CHUNK_2_GTT
	(
     MATCH_LUW_ID NUMBER(10),
     ITEM VARCHAR2(25 ),
     CHUNK_NUM NUMBER(10)
	)
	ON COMMIT DELETE ROWS
;



COMMENT ON TABLE IM_MATCH_CHUNK_2_GTT is 'Helper for chunking logic in auto match.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_2_GTT.MATCH_LUW_ID is 'Match LUW for the data.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_2_GTT.ITEM is 'Item for the data.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_2_GTT.CHUNK_NUM is 'Chunk number assigned to the data.'
;



PROMPT CREATING TABLE 'IM_MATCH_INVC_DETL_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_INVC_DETL_GTT
	(
     WORKSPACE_ID NUMBER(10,0) NOT NULL,
     DOC_ID NUMBER(10,0) NOT NULL,
     ITEM VARCHAR2(25 ) NOT NULL,
     INVC_DETL_VERSION_ID NUMBER(15,0),
     MATCH_KEY_ID NUMBER(10,0),
     CHUNK_NUM NUMBER(10,0),
     MATCH_LUW_ID NUMBER(10,0),
     STATUS VARCHAR2(6 ),
     UNIT_COST NUMBER(20,4),
     INVOICE_QTY NUMBER(12,4),
     COST_MATCHED VARCHAR2(1 ),
     QTY_MATCHED VARCHAR2(1 ),
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N',
     MATCH_GROUP_ID NUMBER(10,0) , 
	 ORDLOC_UNIT_COST NUMBER (20,4) 
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_MATCH_INVC_DETL_GTT is 'Copy of IM_MATCH_INVC_DETL_WS used during the initialization of auto-match.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.DOC_ID is 'Identifier of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.ITEM is 'Line Item of the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.INVC_DETL_VERSION_ID is 'The version identifier from IM_INVOICE_DETAIL during workspace creation.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.STATUS is 'Match status of the Invoice item.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.UNIT_COST is 'Invoice Unit Cost of the Item.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.INVOICE_QTY is 'Invoice Quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.COST_MATCHED is 'Indicates whether the item is cost matched.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.QTY_MATCHED is 'Indicates whether the item is qty matched.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.MATCH_GROUP_ID is 'Identifier of the matching group the item was part of'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_GTT.ORDLOC_UNIT_COST is 'The cost on the order of the item/location.'
;



PROMPT CREATING TABLE 'IM_MATCH_INVC_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_INVC_GTT
	(
     WORKSPACE_ID NUMBER(10,0) NOT NULL,
     DOC_ID NUMBER(10,0) NOT NULL,
     DOC_HEAD_VERSION_ID NUMBER(15,0),
     MATCH_STGY_ID NUMBER(10,0),
     MATCH_KEY VARCHAR2(3 ),
     MATCH_KEY_ID NUMBER(10,0),
     RANK_IN_MATCH_KEY NUMBER(10,0),
     STATUS VARCHAR2(6 ),
     DOC_DATE DATE,
     DUE_DATE DATE,
     SUPPLIER_GROUP_ID NUMBER(10,0),
     SUPPLIER NUMBER(10,0),
     SUPPLIER_NAME VARCHAR2(240 ),
     SUPPLIER_PHONE VARCHAR2(20 ),
     PO_SUPPLIER NUMBER(10,0),
     PO_SUPPLIER_SITE_ID NUMBER(10,0),
     SUPPLIER_SITE_ID NUMBER(10,0),
     SUPPLIER_SITE_NAME VARCHAR2(240 ),
     CURRENCY_CODE VARCHAR2(3 ),
     ORDER_NO NUMBER(12,0),
     LOCATION NUMBER(10,0),
     LOC_TYPE VARCHAR2(1 ),
     LOCATION_NAME VARCHAR2(150 ),
     TOTAL_AVAIL_COST NUMBER(20,4),
     TOTAL_AVAIL_QTY NUMBER(12,4),
     MERCH_AMOUNT NUMBER(20,4),
     TOTAL_QTY NUMBER(12,4),
     COST_PRE_MATCH VARCHAR2(1 ),
     HEADER_ONLY VARCHAR2(1 ),
     SUMMARY_MTCH_ELIG VARCHAR2(1 ),
     DETAIL_MTCH_ELIG VARCHAR2(1 ),
     QTY_REQUIRED VARCHAR2(1 ),
     QTY_MATCH_REQUIRED VARCHAR2(1 ),
     CHUNK_NUM NUMBER(10,0),
     MATCH_LUW_ID NUMBER(10,0),
     TOLERANCE_ID NUMBER(12,0),
     TOLERANCE_CURRENCY_CODE VARCHAR2(3 ),
     TOLERANCE_EXCHANGE_RATE NUMBER(20,10),
     SKU_COMP_PERCENT NUMBER(4,2),
     MANUAL_GROUP_ID NUMBER(10,0),
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N',
     MATCH_GROUP_ID NUMBER(10,0) , 
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL , 
	 LOC_VAT_REGION NUMBER (4) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_MATCH_INVC_GTT is 'Copy of IM_MATCH_INVC_WS used during the initialization of auto-match.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.DOC_ID is 'Identifier of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.DOC_HEAD_VERSION_ID is 'The version identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.MATCH_STGY_ID is 'The ID of the matching strategy used for matching the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.MATCH_KEY is 'The matching key which determines the receipts to which the invoice can be matched with.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.RANK_IN_MATCH_KEY is 'Ranking of the Invoice within the Match Key. Used for sorting invoices for Summary One to Many and Detail matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.STATUS is 'Status of the document on IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.DOC_DATE is 'Date on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.DUE_DATE is 'Due date of the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUPPLIER_GROUP_ID is 'Supplier Group Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUPPLIER_NAME is 'Holds Supplier  name'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUPPLIER_PHONE is 'Holds Supplier phone number'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.PO_SUPPLIER is 'Purchase Order Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.PO_SUPPLIER_SITE_ID is 'Purchase Order Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUPPLIER_SITE_NAME is 'Holds Supplier site name'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.CURRENCY_CODE is 'Invoice''s Currency Code'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.ORDER_NO is 'Order Number of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.LOCATION is 'Location Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.LOC_TYPE is 'Location Type Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.LOCATION_NAME is 'Holds location name'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.TOTAL_AVAIL_COST is 'Total Available Cost of the Invoice (Without Tax)'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.TOTAL_AVAIL_QTY is 'Total Available Quantity of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.MERCH_AMOUNT is 'Holds the merchandise amount of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.TOTAL_QTY is 'Total Quantity of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.COST_PRE_MATCH is 'Indicates whether Invoice was considered for cost-prematch'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.HEADER_ONLY is 'Indicator that specifies if the invoice is header only or contains details'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUMMARY_MTCH_ELIG is 'Indicator that specifies if the Invoice can be considered for summary matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.DETAIL_MTCH_ELIG is 'Indicator that specifies if the Invoice can be considered for detail matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.QTY_REQUIRED is 'Indicator that specifies whether qty is required on the header of the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.QTY_MATCH_REQUIRED is 'Indicator that specifies whether qty must be considered during summary matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.TOLERANCE_ID is 'Holds the tolerance id for that match key'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.TOLERANCE_CURRENCY_CODE is 'Holds the Currency Code of the tolerance being used for matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.TOLERANCE_EXCHANGE_RATE is 'Holds the Exchange rate between Invoice and Tolerance Currencies'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SKU_COMP_PERCENT is 'The Minimum Sku Compliance Percentage required for a summary match.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.MANUAL_GROUP_ID is 'Identifier of the Manual Group, the invoice belongs to.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.MATCH_GROUP_ID is 'Identifier of the matching group the invoice was part of.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.LOC_SET_OF_BOOKS_ID is 'Set of Books Id of the location on the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.LOC_VAT_REGION is 'Vat region of the location on the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_GTT.SUPPLIER_SITE_VAT_REGION is 'Vat region of the Supplier Site on the Invoice.'
;



PROMPT CREATING TABLE 'IM_MATCH_RCPT_DETL_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_RCPT_DETL_GTT
	(
     WORKSPACE_ID NUMBER(10,0) NOT NULL,
     SHIPMENT NUMBER(12) NOT NULL,
     ITEM VARCHAR2(25 ) NOT NULL,
     SUBSTITUTE_ITEM VARCHAR2(25 ),
     MATCH_KEY_ID NUMBER(10,0),
     CHUNK_NUM NUMBER(10,0),
     MATCH_LUW_ID NUMBER(10,0),
     INVC_MATCH_STATUS VARCHAR2(1 ),
     UNIT_COST NUMBER(20,4),
     QTY_RECEIVED NUMBER(12,4),
     QTY_AVAILABLE NUMBER(12,4),
     UNIT_COST_NC NUMBER(20,4),
     QTY_AVAILABLE_NC NUMBER(12,4),
     CATCH_WEIGHT_TYPE VARCHAR2(2 ),
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N',
     MATCH_GROUP_ID NUMBER(10,0)
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_MATCH_RCPT_DETL_GTT is 'Copy of IM_MATCH_RCPT_DETL_WS used during the initialization of auto-match.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.SHIPMENT is 'Identifier of the shipment from SHIPMENT'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.ITEM is 'Line Item of the shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.SUBSTITUTE_ITEM is 'Item  used by the user on online detail matching screen to substitute the item on the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Receipt.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.INVC_MATCH_STATUS is 'Indicates the status of the SKU on the Shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.UNIT_COST is 'Unit Cost of the Item on SHIPSKU.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.QTY_RECEIVED is 'Received quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.QTY_AVAILABLE is 'Available Quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.UNIT_COST_NC is 'Unconverted Unit Cost of the Item from SHIPSKU.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.QTY_AVAILABLE_NC is 'Unconverted available Quantity of the Item from SHIPSKU'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.CATCH_WEIGHT_TYPE is 'This column will hold catch weight type for a simple pack catch weight item.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_GTT.MATCH_GROUP_ID is 'Identifier of the matching group the item was part of'
;



PROMPT CREATING TABLE 'IM_MATCH_RCPT_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_RCPT_GTT
	(
     WORKSPACE_ID NUMBER(10,0) NOT NULL,
     SHIPMENT NUMBER(12) NOT NULL,
     MATCH_KEY_ID NUMBER(10,0),
     SUPPLIER NUMBER(10,0),
     SUPPLIER_NAME VARCHAR2(240 ),
     SUPPLIER_SITE_ID NUMBER(10,0),
     SUPPLIER_SITE_NAME VARCHAR2(240 ),
     ORDER_NO NUMBER(12,0),
     ASN VARCHAR2(30 ),
     BILL_TO_LOC NUMBER(10,0),
     BILL_TO_LOC_TYPE VARCHAR2(1 ),
     BILL_TO_LOC_NAME VARCHAR2(150 ),
     SHIP_TO_LOC NUMBER(10,0),
     SHIP_TO_LOC_TYPE VARCHAR2(1 ),
     SHIP_TO_LOC_NAME VARCHAR2(150 ),
     STATUS_CODE VARCHAR2(1 ),
     INVC_MATCH_STATUS VARCHAR2(1 ),
     RECEIVE_DATE DATE,
     CURRENCY_CODE VARCHAR2(3 ),
     TOTAL_AVAIL_COST NUMBER(20,4),
     TOTAL_AVAIL_QTY NUMBER(12,4),
     MERCH_AMOUNT NUMBER(20,4),
     TOTAL_QTY NUMBER(12,4),
     MANUAL_GROUP_ID NUMBER(10,0),
     CHUNK_NUM NUMBER(10,0),
     MATCH_LUW_ID NUMBER(10,0),
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N',
     MATCH_GROUP_ID NUMBER(10,0) , 
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL ,
	 LOC_VAT_REGION NUMBER (4) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL
	)
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_MATCH_RCPT_GTT is 'Copy of IM_MATCH_RCPT_WS used during the initialization of auto-match.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SHIPMENT is 'Receipt Identifier from SHIPMENT'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SUPPLIER_NAME is 'Suppliers Trading Name'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SUPPLIER_SITE_NAME is 'Supplier Site Trading Name'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.ORDER_NO is 'Order Number of the Shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.ASN is 'Advance Shipment Notice Number associated with the Shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.BILL_TO_LOC is 'Billing location for the Shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.BILL_TO_LOC_TYPE is 'Billing location type ''S'' or ''W'''
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.BILL_TO_LOC_NAME is 'Billing locations name.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SHIP_TO_LOC is 'Location that the Shipment will be delivered to.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SHIP_TO_LOC_TYPE is 'Type of the delivery location of the shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SHIP_TO_LOC_NAME is 'Name of the delivery location of the shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.STATUS_CODE is 'Indicates the Current Status of the Shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.INVC_MATCH_STATUS is 'Invoice Matching Status of the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.RECEIVE_DATE is 'Receive date of shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.CURRENCY_CODE is 'Currency code of the Purchase Order.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.TOTAL_AVAIL_COST is 'Total Cost of the shipment available for matching.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.TOTAL_AVAIL_QTY is 'Total Quantity of the Shipment available for matching.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.MERCH_AMOUNT is 'Total Cost of the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.TOTAL_QTY is 'Total Quantity of the Shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.MANUAL_GROUP_ID is 'Identifier of the Manual Group, the receipt belongs to.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Receipt.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.MATCH_GROUP_ID is 'Identifier of the matching group the shipment was part of'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.LOC_SET_OF_BOOKS_ID is 'Set of Books Id of the location on the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.LOC_VAT_REGION is 'Vat region of the location on the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_GTT.SUPPLIER_SITE_VAT_REGION is 'Vat region of the Supplier Site on the Order.'
;



PROMPT CREATING TABLE 'IM_MATCH_STGY_HEAD';
CREATE TABLE IM_MATCH_STGY_HEAD
	(
     MATCH_STGY_ID NUMBER(10) NOT NULL,
     DESCRIPTION VARCHAR2(250 ) NOT NULL,
     SYSTEM_DEFAULT VARCHAR2(1 ) DEFAULT 'N' NOT NULL,
     CREATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     CREATION_DATE DATE DEFAULT SYSDATE NOT NULL,
     LAST_UPDATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     LAST_UPDATE_DATE DATE DEFAULT SYSDATE NOT NULL,
     OBJECT_VERSION_ID NUMBER(15) DEFAULT 1 NOT NULL
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA ;

		
		
PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_STGY_HEAD';
ALTER TABLE IM_MATCH_STGY_HEAD 
	ADD CONSTRAINT CHK_IMSH_SYSTEM_DEFAULT_YN 
	CHECK (SYSTEM_DEFAULT IN ('Y', 'N'))
;

COMMENT ON TABLE IM_MATCH_STGY_HEAD is 'Stores the Header information about matching startegies.'
;


COMMENT ON COLUMN IM_MATCH_STGY_HEAD.MATCH_STGY_ID is 'Unique ID for Match Strategy'
;

COMMENT ON COLUMN IM_MATCH_STGY_HEAD.DESCRIPTION is 'Description of the matching strategy.'
;

COMMENT ON COLUMN IM_MATCH_STGY_HEAD.SYSTEM_DEFAULT is 'Indicates default system match strategy.'
;

COMMENT ON COLUMN IM_MATCH_STGY_HEAD.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_STGY_HEAD.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_STGY_HEAD.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_STGY_HEAD.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_STGY_HEAD.OBJECT_VERSION_ID is 'Version ID of the Match strategy Detail. Defaults to 1 for a new record.'
;
	
PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_STGY_HEAD';
ALTER TABLE IM_MATCH_STGY_HEAD
	ADD CONSTRAINT PK_IM_MATCH_STGY_HEAD PRIMARY KEY ( MATCH_STGY_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


PROMPT CREATING TABLE 'IM_MATCH_STGY_DETAIL';
CREATE TABLE IM_MATCH_STGY_DETAIL
	(
     MATCH_STGY_DTL_ID NUMBER(10) NOT NULL,
     MATCH_STGY_ID NUMBER(10) NOT NULL,
     MATCH_STGY_RANK NUMBER(2) NOT NULL,
     MATCH_LEVEL VARCHAR2(2 ) NOT NULL,
     MATCH_TYPE VARCHAR2(1 ) DEFAULT 'R' NOT NULL,
     CREATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     CREATION_DATE DATE DEFAULT SYSDATE NOT NULL,
     LAST_UPDATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     LAST_UPDATE_DATE DATE DEFAULT SYSDATE NOT NULL,
     OBJECT_VERSION_ID NUMBER(15) DEFAULT 1 NOT NULL
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA ;

		
		
PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_STGY_DETAIL';
ALTER TABLE IM_MATCH_STGY_DETAIL 
	ADD CONSTRAINT CHK_MATCH_LEVEL 
	CHECK (MATCH_LEVEL IN ('SA','SO','D'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_MATCH_STGY_DETAIL';
ALTER TABLE IM_MATCH_STGY_DETAIL 
	ADD CONSTRAINT CHK_MATCH_TYPE 
	CHECK (MATCH_TYPE IN ('R','B'))
;

COMMENT ON TABLE IM_MATCH_STGY_DETAIL is 'Stores the details of matching startegies.'
;


COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.MATCH_STGY_DTL_ID is 'Unique ID for Match strategy detail.'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.MATCH_STGY_ID is 'Unique ID for Match Strategy'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.MATCH_STGY_RANK is 'Determines the sequence in which the match steps needs to be executed.'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.MATCH_LEVEL is 'The level at which matching would be performed.(Summary All to All/Summary One to Many/ Detail/Cost Prematch)'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.MATCH_TYPE is 'Regular or Best (''R'',''B'')'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_MATCH_STGY_DETAIL.OBJECT_VERSION_ID is 'Version ID of the Match strategy Detail. Defaults to 1 for a new record.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_STGY_DETAIL';
ALTER TABLE IM_MATCH_STGY_DETAIL
	ADD CONSTRAINT PK_IM_MATCH_STGY_DTL PRIMARY KEY ( MATCH_STGY_DTL_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ; 

PROMPT CREATING TABLE 'IM_INJECT_DOC_COMMENTS';
CREATE TABLE IM_INJECT_DOC_COMMENTS
	(
     INJECT_ID NUMBER(10) NOT NULL,
     COMMENT_ID NUMBER(10,0) NOT NULL,
     COMMENT_TYPE VARCHAR2(6 ) NOT NULL,
     TEXT VARCHAR2(2000 ) NOT NULL,
     CREATE_ID VARCHAR2(30 ) NOT NULL,
     CREATE_DATETIME DATE NOT NULL,
     INJECT_DOC_ID NUMBER(10,0) NOT NULL,
     ITEM VARCHAR2(25 ),
     DISCREPANCY_TYPE VARCHAR2(6 ),
     REASON_CODE_ID VARCHAR2(20 ),
     DEBIT_REASON_CODE VARCHAR2(20 ),
     OBJECT_VERSION_ID NUMBER(15) DEFAULT 1 NOT NULL,
     REF_OBJECT_VERSION_ID NUMBER(15)
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_INJECT_DOC_COMMENTS';		
ALTER TABLE IM_INJECT_DOC_COMMENTS 
	ADD CONSTRAINT CHK_IM_DOC_COM_COMMENT_TYPE 
	CHECK (COMMENT_TYPE IN ('E','I'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_INJECT_DOC_COMMENTS';	
ALTER TABLE IM_INJECT_DOC_COMMENTS 
	ADD CONSTRAINT CHK_IM_DOC_COM_DISCREPANCY 
	CHECK (DISCREPANCY_TYPE IN ('COST', 'QTY', 'TAX'))
;

COMMENT ON TABLE IM_INJECT_DOC_COMMENTS is ''
;


COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.INJECT_ID is 'The user session id'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.COMMENT_ID is 'The unique id of each comment in the system.   comment ids will be generated using the im_comments_seq sequence.'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.COMMENT_TYPE is 'The type that determines whether the comment is external or internal.  valid values are e or i.'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.TEXT is 'The user entered comment text.'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.CREATE_ID is 'The id of the user that created this comment.'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.CREATE_DATETIME is 'The date and time  the comment was created'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.INJECT_DOC_ID is 'The unique id of the document.  '
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.ITEM is 'The unique id of the item.  '
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.DISCREPANCY_TYPE is 'The discrepancy resolution for the item on the document. '
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.REASON_CODE_ID is 'The reason code id of the document.'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.DEBIT_REASON_CODE is 'The discrepancy comments for debit memo documents.'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;

COMMENT ON COLUMN IM_INJECT_DOC_COMMENTS.REF_OBJECT_VERSION_ID is 'This column will hold the version id for the operation table entity and will be used by PL/SQL to guarantee integrity'
;


		
PROMPT CREATING TABLE 'IM_TOLERANCE_HEAD';
CREATE TABLE IM_TOLERANCE_HEAD
   (
     TOLERANCE_ID NUMBER(10) NOT NULL,
     DESCRIPTION VARCHAR2(30 ) NOT NULL,
     CURRENCY_CODE VARCHAR2(3 ) NOT NULL,
     SYSTEM_DEFAULT VARCHAR2(1 ) DEFAULT 'N' NOT NULL,
     CREATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     CREATION_DATE DATE DEFAULT SYSDATE NOT NULL,
     LAST_UPDATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     LAST_UPDATE_DATE DATE DEFAULT SYSDATE NOT NULL,
     OBJECT_VERSION_ID NUMBER(15) DEFAULT 1 NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;
		
		

PROMPT CREATING CHECK CONSTRAINT ON 'IM_TOLERANCE_HEAD';
ALTER TABLE IM_TOLERANCE_HEAD 
	ADD CONSTRAINT CHK_ITH_SYSTEM_DEFAULT_YN 
	CHECK (SYSTEM_DEFAULT IN ('Y', 'N'))
;

		
COMMENT ON TABLE IM_TOLERANCE_HEAD is 'This table stores the header level information for matching tolerances.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.TOLERANCE_ID is 'The generated numeric identifier for a matching tolerance.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.DESCRIPTION is 'The description of a tolerance.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.CURRENCY_CODE is 'The currency code for the tolerance.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.SYSTEM_DEFAULT is 'The indicator for the system default tolerance. The tolerance with this set to Y (Yes) will be used if no tolerance level mapping at any other level is found. There should only be a single system default tolerance at any time.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_TOLERANCE_HEAD.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_TOLERANCE_HEAD_I1';
CREATE INDEX IM_TOLERANCE_HEAD_I1 on IM_TOLERANCE_HEAD
	( 
	 SYSTEM_DEFAULT  ASC
	)
	TABLESPACE RETAIL_INDEX
    INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_TOLERANCE_HEAD';
ALTER TABLE IM_TOLERANCE_HEAD
	ADD CONSTRAINT PK_IM_TOLERANCE_HEAD PRIMARY KEY ( TOLERANCE_ID )
	USING INDEX 
	TABLESPACE RETAIL_INDEX 
    INITRANS 12 ; 


PROMPT CREATING TABLE 'IM_TOLERANCE_DETAIL';
CREATE TABLE IM_TOLERANCE_DETAIL
	(
	 TOLERANCE_DETAIL_ID NUMBER(10) NOT NULL,
     TOLERANCE_ID NUMBER(10) NOT NULL,
     MATCH_LEVEL VARCHAR2(1 ) NOT NULL,
     MATCH_TYPE VARCHAR2(1 ) NOT NULL,
     FAVOR_OF VARCHAR2(1 ) NOT NULL,
     LOWER_LIMIT NUMBER(20,4) NOT NULL,
     UPPER_LIMIT NUMBER(20,4) NOT NULL,
     TOLERANCE_VALUE_TYPE VARCHAR2(1 ) NOT NULL,
     TOLERANCE_VALUE NUMBER(20,4) NOT NULL,
     AUTO_RES_VALUE NUMBER(20,4),
     REASON_CODE_ID VARCHAR2(20 ),
     CREATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     CREATION_DATE DATE DEFAULT SYSDATE NOT NULL,
     LAST_UPDATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     LAST_UPDATE_DATE DATE DEFAULT SYSDATE NOT NULL,
     OBJECT_VERSION_ID NUMBER(15) DEFAULT 1 NOT NULL
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_TOLERANCE_DETAIL';
ALTER TABLE IM_TOLERANCE_DETAIL 
	ADD CONSTRAINT CHK_ITD_MATCH_LEVEL_SL 
	CHECK (MATCH_LEVEL IN ('S', 'L'))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_TOLERANCE_DETAIL';
ALTER TABLE IM_TOLERANCE_DETAIL 
	ADD CONSTRAINT CHK_ITD_MATCH_TYPE_CQ 
	CHECK (MATCH_TYPE IN ('C', 'Q'))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_TOLERANCE_DETAIL';
ALTER TABLE IM_TOLERANCE_DETAIL 
	ADD CONSTRAINT CHK_ITD_FAVOR_OF_SR 
	CHECK (FAVOR_OF IN ('S', 'R'))
;


PROMPT CREATING CHECK CONSTRAINT ON 'IM_TOLERANCE_DETAIL';
ALTER TABLE IM_TOLERANCE_DETAIL 
	ADD CONSTRAINT CHK_ITD_TOL_VALUE_TYPE_PA 
	CHECK (TOLERANCE_VALUE_TYPE IN ('P', 'A'))
;


COMMENT ON TABLE IM_TOLERANCE_DETAIL is 'This table stores the detail level information for matching tolerances.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.TOLERANCE_DETAIL_ID is 'The generated numeric identifier for a matching tolerance detail.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.TOLERANCE_ID is 'The numeric identifier for a matching tolerance which the detail is associated with.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.MATCH_LEVEL is 'The matching level which a tolerance detail applies to. Valid values are S (Summary) and L (Line Item).'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.MATCH_TYPE is 'The matching type which a tolerance detail applies to. Valid values are C (Cost) and Q (Quantity).'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.FAVOR_OF is 'The matching difference in favor of. Valid values are S (Supplier) and R (Retailer).'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.LOWER_LIMIT is 'The inclusive lower limit amount for document amounts which a tolerance detail applies to.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.UPPER_LIMIT is 'The exclusive upper limit amount for document amounts which a tolerance detail applies to.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.TOLERANCE_VALUE_TYPE is 'The type of a tolerance detail value. Valid values are P (Percent) and A (Amount).'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.TOLERANCE_VALUE is 'The matching difference to be considered in tolerance.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.AUTO_RES_VALUE is 'The exclusive limit amount by which the invoice can vary from the receipt during matching to perform an automatic discrepancy resolution. Should always be greater than the tolerance value.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.REASON_CODE_ID is 'The reason code to apply to automatic discrepancy resolutions. Code must exist in reason codes table.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_TOLERANCE_DETAIL.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
PROMPT CREATING INDEX 'IM_TOLERANCE_DETAIL_I1';
CREATE INDEX IM_TOLERANCE_DETAIL_I1 on IM_TOLERANCE_DETAIL
	(
	 MATCH_LEVEL ASC ,
     MATCH_TYPE
    )
	TABLESPACE RETAIL_INDEX
    INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_TOLERANCE_DETAIL'
ALTER TABLE IM_TOLERANCE_DETAIL
	ADD CONSTRAINT PK_IM_TOLERANCE_DETAIL PRIMARY KEY( TOLERANCE_DETAIL_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ; 	




PROMPT CREATING TABLE 'IM_TOLERANCE_LEVEL_MAP'
CREATE TABLE IM_TOLERANCE_LEVEL_MAP
   (
	 TOLERANCE_LEVEL_MAP_ID NUMBER(10) NOT NULL,
     TOLERANCE_LEVEL_TYPE VARCHAR2(2 ) NOT NULL,
     TOLERANCE_LEVEL_ID NUMBER(10) NOT NULL,
     TOLERANCE_ID NUMBER(10) NOT NULL,
     CREATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     CREATION_DATE DATE DEFAULT SYSDATE NOT NULL,
     LAST_UPDATED_BY VARCHAR2(60 ) DEFAULT USER NOT NULL,
     LAST_UPDATE_DATE DATE DEFAULT SYSDATE NOT NULL,
     OBJECT_VERSION_ID NUMBER(15) DEFAULT 1 NOT NULL
    )
        INITRANS 6
        TABLESPACE RETAIL_DATA ;

		

PROMPT CREATING CHECK CONSTRAINT ON 'IM_TOLERANCE_LEVEL_MAP';
ALTER TABLE IM_TOLERANCE_LEVEL_MAP 
	ADD CONSTRAINT CHK_ITLM_TOLERANCE_LEVEL_TYPE 
	CHECK (TOLERANCE_LEVEL_TYPE IN ('D', 'SG', 'S', 'SS'))
;
	
COMMENT ON TABLE IM_TOLERANCE_LEVEL_MAP is 'This table stores the mappings of tolerances to their level of application.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.TOLERANCE_LEVEL_MAP_ID is 'The generated numeric identifier for a matching tolerance level mapping.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.TOLERANCE_LEVEL_TYPE is 'The level type which a mapped matching tolerance applies to. Valid values are D (Department), SG (Supplier Group), S (Supplier), and SS (Supplier Site).'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.TOLERANCE_LEVEL_ID is 'The numeric identifier for a tolerance level. References an existing identifier for a department, supplier group, supplier, or supplier site.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.TOLERANCE_ID is 'The numeric identifier for a matching tolerance. References an existing matching tolerance.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.CREATED_BY is 'The username identifier of the user who created a record.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.CREATION_DATE is 'The date a record was created.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.LAST_UPDATED_BY is 'The username identifier of the user who last updated a record.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.LAST_UPDATE_DATE is 'The date a record was last updated.'
;

COMMENT ON COLUMN IM_TOLERANCE_LEVEL_MAP.OBJECT_VERSION_ID is 'The version identifier for a record. Unique for each state of a single record.'
;
-- PROMPT CREATING INDEX 'UK_ITLM_LEVEL_TYPE_LEVEL_ID';
-- CREATE UNIQUE INDEX UK_ITLM_LEVEL_TYPE_LEVEL_ID ON IM_TOLERANCE_LEVEL_MAP 
    -- ( 
	 -- TOLERANCE_LEVEL_TYPE ASC
     -- TOLERANCE_LEVEL_ID ASC 
    -- ) 
    -- TABLESPACE RETAIL_INDEX 
    -- INITRANS 12 ;
	
PROMPT CREATING UNIQUE KEY ON 'IM_TOLERANCE_LEVEL_MAP';
ALTER TABLE IM_TOLERANCE_LEVEL_MAP 
	ADD CONSTRAINT UK_ITLM_LEVEL_TYPE_LEVEL_ID  UNIQUE ( TOLERANCE_LEVEL_TYPE, TOLERANCE_LEVEL_ID)
	USING INDEX 
	TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_TOLERANCE_LEVEL_MAP';
ALTER TABLE IM_TOLERANCE_LEVEL_MAP
	ADD CONSTRAINT PK_IM_TOLERANCE_LEVEL_MAP PRIMARY KEY ( TOLERANCE_LEVEL_MAP_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


PROMPT CREATING TABLE 'IM_DOC_SEARCH_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_DOC_SEARCH_GTT
	(
     DOC_ID NUMBER(10),
     EXT_DOC_ID VARCHAR2(150 ),
     TYPE VARCHAR2(6 ),
     STATUS VARCHAR2(10 ),
     ORDER_NO NUMBER(12),
     LOCATION NUMBER(10),
     LOC_TYPE VARCHAR2(1 ),
     LOC_NAME VARCHAR2(150 ),
     VENDOR_TYPE VARCHAR2(6 ),
     VENDOR VARCHAR2(10 ),
     VENDOR_NAME VARCHAR2(240 ),
     VENDOR_PHONE VARCHAR2(20 ),
     SUPPLIER_SITE_ID VARCHAR2(10 ),
     SUPPLIER_SITE_NAME VARCHAR2(240 ),
     PO_SUPPLIER NUMBER(10),
     PO_SUPPLIER_SITE NUMBER(10),
     DOC_DATE DATE,
     DUE_DATE DATE,
     FREIGHT_TYPE VARCHAR2(6 ),
     CONSIGNMENT_IND VARCHAR2(1 ),
     CURRENCY_CODE VARCHAR2(3 ),
     COST_PRE_MATCH VARCHAR2(1 ),
     AP_REVIEWER VARCHAR2(30 ),
     MATCH_KEY VARCHAR2(3 ),
     SUPPLIER_GROUP_ID NUMBER(10),
     TOTAL_COST NUMBER(20,4),
     TOTAL_QTY NUMBER(12,4),
     DOC_SOURCE VARCHAR2 (6) NULL , 
	 DOC_HEAD_VERSION_ID NUMBER (15) NULL , 
	 LOC_VAT_REGION NUMBER (4) NULL , 
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL , 
	 MATCH_ID VARCHAR2 (30 ) NULL , 
	 MATCH_DATE DATE  NULL ,
	 MATCH_KEY_ID NUMBER (10) NULL ,
	 MATCH_KEY_VALUE VARCHAR2 (50) NULL ,
	 HOLD_STATUS VARCHAR2 (1) NULL ,
	 PRE_PAID_IND VARCHAR2 (1) NULL ,
	 RTV_ORDER_NO NUMBER (10) NULL ,
	 RTV_IND VARCHAR2 (1) NULL ,
	 MANUALLY_PAID_IND VARCHAR2 (1 ) DEFAULT 'N' NULL
    )
    ON COMMIT DELETE ROWS 
;

COMMENT ON TABLE im_doc_search_gtt is 'Global temporary table used in search logic.'
;

COMMENT ON COLUMN im_doc_search_gtt.DOC_ID is 'The reim internal id of the document.'
;

COMMENT ON COLUMN im_doc_search_gtt.EXT_DOC_ID is 'The ext_doc_id of the document.'
;

COMMENT ON COLUMN im_doc_search_gtt.TYPE is 'This column holds the document type. The document type determines how the document will be processed by the system.'
;

COMMENT ON COLUMN im_doc_search_gtt.STATUS is 'Status describes the position of the document within the matching process and payment processes.'
;

COMMENT ON COLUMN im_doc_search_gtt.ORDER_NO is 'The order of the invoice'
;

COMMENT ON COLUMN im_doc_search_gtt.LOCATION is 'The location of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.LOC_TYPE is 'The type of location on the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.LOC_NAME is 'The name of the location on the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.VENDOR_TYPE is 'The type of vendor on the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.VENDOR is 'The vendor of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.VENDOR_NAME is 'The name of the vendor on the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.VENDOR_PHONE is 'The phone of the vendor on the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.SUPPLIER_SITE_ID is 'The supplier site of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.SUPPLIER_SITE_NAME is 'The name of the supplier site on the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.PO_SUPPLIER is 'The supplier of the order_no.'
;

COMMENT ON COLUMN im_doc_search_gtt.PO_SUPPLIER_SITE is 'The supplier site of the order_no.'
;

COMMENT ON COLUMN im_doc_search_gtt.DOC_DATE is 'The doc_date of the invoice'
;

COMMENT ON COLUMN im_doc_search_gtt.DUE_DATE is 'The due_date of the invoice'
;

COMMENT ON COLUMN im_doc_search_gtt.FREIGHT_TYPE is 'The freight type associated with the order.'
;

COMMENT ON COLUMN im_doc_search_gtt.CONSIGNMENT_IND is 'Indicates if the invoice is associated with a consignment transaction.'
;

COMMENT ON COLUMN im_doc_search_gtt.CURRENCY_CODE is 'The currency code of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.COST_PRE_MATCH is 'The cost_pre_match indicator of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.AP_REVIEWER is 'The AP reviewer of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.MATCH_KEY is 'The match key of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.SUPPLIER_GROUP_ID is 'The supplier group of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.TOTAL_COST is 'The total cost of the invoice.'
;

COMMENT ON COLUMN im_doc_search_gtt.TOTAL_QTY is 'The total quantity of the invoice.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.DOC_SOURCE is 'The source of the invoice.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.DOC_HEAD_VERSION_ID is 'The version of the im_doc_head rows for this data.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.LOC_VAT_REGION is 'The vat region of the location.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.LOC_SET_OF_BOOKS_ID is 'The set of books id of the location.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.MATCH_ID is 'This column holds the id of the user that matched the document. For documents matched by the automatch process, this column will be defaulted to automatch.  For documents that are manually matched, this column will hold the users id.  This column is optional.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.MATCH_DATE is 'This column holds the date that the document was matched.  This column will be defaulted by both the manual and automatch processes. This column is optional.'
;

COMMENT ON COLUMN im_doc_search_gtt.MATCH_KEY_ID is 'An identifier for a match key.'
;

COMMENT ON COLUMN im_doc_search_gtt.MATCH_KEY_VALUE is 'The actual match key values.'
;

COMMENT ON COLUMN im_doc_search_gtt.HOLD_STATUS is 'this column contains the hold status of the document.  based on the supplier option im_supplier_options.hold_invoices, documents can be withheld from the posting process if they are considered to be in held status. valid values are: n - never held, h - currently held, r - previously held, now released.'
;

COMMENT ON COLUMN im_doc_search_gtt.PRE_PAID_IND is 'The column will indicate whether the invoice was paid prior to matching.  valid values are Y and N.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.RTV_ORDER_NO is 'RTV Order Number for the document.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.RTV_IND is 'RTV indicator for the document.'
;

COMMENT ON COLUMN IM_DOC_SEARCH_GTT.MANUALLY_PAID_IND is 'this column indicates whether the invoice is manually paid or not.valid values are Y and N.'
;



PROMPT CREATING TABLE 'IM_MATCH_INVC_SEARCH_WS';
CREATE TABLE IM_MATCH_INVC_SEARCH_WS
	(
     WORKSPACE_ID VARCHAR2(30 ) NOT NULL,
     DOC_ID NUMBER(10) NOT NULL,
     EXT_DOC_ID VARCHAR2(150 ) NOT NULL,
     STATUS VARCHAR2(10 ) NOT NULL,
     DOC_DATE DATE NOT NULL,
     DUE_DATE DATE NOT NULL,
     ORDER_NO NUMBER(12) NOT NULL,
     LOCATION NUMBER(10) NOT NULL,
     LOCATION_NAME VARCHAR2(150 ) NOT NULL,
     LOC_TYPE VARCHAR2(1 ) NOT NULL,
     SUPPLIER NUMBER(10) NOT NULL,
     SUPPLIER_NAME VARCHAR2(240 ) NOT NULL,
     SUPPLIER_PHONE VARCHAR2(20 ) NOT NULL,
     SUPPLIER_SITE_ID NUMBER(10) NOT NULL,
     SUPPLIER_SITE_NAME VARCHAR2(240 ) NOT NULL,
     CURRENCY_CODE VARCHAR2(3 ) NOT NULL,
     COST_PRE_MATCH VARCHAR2(1 ) NOT NULL,
     SUPPLIER_GROUP_ID NUMBER(10),
     TOTAL_COST NUMBER(20,4) NOT NULL,
     TOTAL_QTY NUMBER(12,4) NOT NULL,
     CHOICE_FLAG VARCHAR2(1 ) NOT NULL,
     DOC_HEAD_VERSION_ID NUMBER(15) NOT NULL , 
	 LOC_VAT_REGION NUMBER (4) NULL , 
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL , 
	 MATCH_KEY_ID NUMBER (10) NULL , 
	 MATCH_KEY_VALUE VARCHAR2 (50 ) NULL
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_MATCH_INVC_SEARCH_WS is 'This table stores the invoices that meet the given criteria when searching invoices for summary matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.WORKSPACE_ID is 'Unique identifier tying the search results to a specific user''s workspace.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.DOC_ID is 'Internal identifier of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.EXT_DOC_ID is 'External identifier of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.STATUS is 'Status of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.DOC_DATE is 'Date on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.DUE_DATE is 'Due date on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.ORDER_NO is 'Order Number on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.LOCATION is 'Location identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.LOCATION_NAME is 'Location name'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.LOC_TYPE is 'Location type.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.SUPPLIER is 'Supplier identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.SUPPLIER_NAME is 'Supplier name'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.SUPPLIER_PHONE is 'Supplier phone.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.SUPPLIER_SITE_ID is 'Supplier Site identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.SUPPLIER_SITE_NAME is 'Supplier Site name'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.CURRENCY_CODE is 'Currency code for all monetary values on invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.COST_PRE_MATCH is 'Cost pre match indicator of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.SUPPLIER_GROUP_ID is 'Supplier group that the supplier belongs to.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.TOTAL_COST is 'Total cost of the invoice with tax included'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.TOTAL_QTY is 'Total quantity of the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.CHOICE_FLAG is 'Indicator used to select those invoices which should be merged into the matching workspace'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.DOC_HEAD_VERSION_ID is 'The version identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.LOC_VAT_REGION is 'The vat region of the location.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.LOC_SET_OF_BOOKS_ID is 'The set of books id of the location.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.MATCH_KEY_ID is 'An identifier for a match key.'
;

COMMENT ON COLUMN IM_MATCH_INVC_SEARCH_WS.MATCH_KEY_VALUE is 'The value of the match keys.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_INVC_SEARCH_WS'
ALTER TABLE IM_MATCH_INVC_SEARCH_WS
	ADD CONSTRAINT PK_IM_MATCH_INVC_SEARCH_WS PRIMARY KEY ( WORKSPACE_ID, DOC_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


PROMPT CREATING TABLE 'IM_MATCH_RCPT_SEARCH_WS';
CREATE TABLE IM_MATCH_RCPT_SEARCH_WS
	(
     WORKSPACE_ID VARCHAR2(30 ) NOT NULL,
     SHIPMENT NUMBER(12) NOT NULL,
     ORDER_NO NUMBER(12) NOT NULL,
     ASN VARCHAR2(30 ),
     STATUS_CODE VARCHAR2(1 ) NOT NULL,
     INVC_MATCH_STATUS VARCHAR2(1 ),
     LOCATION NUMBER(10) NOT NULL,
     LOCATION_NAME VARCHAR2(150 ) NOT NULL,
     LOC_TYPE VARCHAR2(1 ) NOT NULL,
     BILL_TO_LOC NUMBER(10) NOT NULL,
     BILL_TO_LOC_NAME VARCHAR2(150 ) NOT NULL,
     BILL_TO_LOC_TYPE VARCHAR2(1 ) NOT NULL,
     RECEIVE_DATE DATE,
     SUPPLIER NUMBER(10) NOT NULL,
     SUPPLIER_NAME VARCHAR2(240 ) NOT NULL,
     SUPPLIER_SITE_ID NUMBER(10) NOT NULL,
     SUPPLIER_SITE_NAME VARCHAR2(240 ) NOT NULL,
     CURRENCY_CODE VARCHAR2(3 ) NOT NULL,
     TOTAL_AVAIL_COST NUMBER(20,4),
     TOTAL_AVAIL_QTY NUMBER(12,4),
     MERCH_AMOUNT NUMBER(20,4),
     TOTAL_QTY NUMBER(12,4),
     CHOICE_FLAG VARCHAR2(1 ) NOT NULL , 
	 LOC_VAT_REGION NUMBER (4) NULL ,
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL , 
	 MATCH_KEY_ID NUMBER (10) NULL , 
	 MATCH_KEY_VALUE VARCHAR2 (50 ) NULL
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_MATCH_RCPT_SEARCH_WS is 'This table stores the receipts that meet the given criteria when searching receipts for summary matching.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.WORKSPACE_ID is 'Unique identifier tying the search results to a specific user''s workspace.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.SHIPMENT is 'Receipt Identifier from SHIPMENT'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.ORDER_NO is 'Order Number on the receipt'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.ASN is 'ASN on the receipt.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.STATUS_CODE is 'Status_code from SHIPMENT.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.INVC_MATCH_STATUS is 'INVC_MATCH_STATUS from SHIPMENT.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.LOCATION is 'Shipment''s to location.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.LOCATION_NAME is 'Shipment''s to location name.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.LOC_TYPE is 'Shipment''s to location type.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.BILL_TO_LOC is 'Shipment''s bill to location.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.BILL_TO_LOC_NAME is 'Shipment''s bill to location name.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.BILL_TO_LOC_TYPE is 'Shipment''s bill to location type.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.RECEIVE_DATE is 'Shipments''s receive_date.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.SUPPLIER is 'Supplier identifier'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.SUPPLIER_NAME is 'Supplier name'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.SUPPLIER_SITE_ID is 'Supplier Site identifier'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.SUPPLIER_SITE_NAME is 'Supplier Site name'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.CURRENCY_CODE is 'Currency code for all monetary values on receipt'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.TOTAL_AVAIL_COST is 'Total cost of the receipt with tax included that has not been matched.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.TOTAL_AVAIL_QTY is 'Total quantity of the receipt that has not been matched.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.MERCH_AMOUNT is 'merchandise amout for the receipt'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.TOTAL_QTY is 'Total quantity of the receipt'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.CHOICE_FLAG is 'Indicator used to select those receipts which should be merged into the matching workspace'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.LOC_VAT_REGION is 'The vat region of the location.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.LOC_SET_OF_BOOKS_ID is 'The set of books id of the location.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.MATCH_KEY_ID is 'An identifier for a match key.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_SEARCH_WS.MATCH_KEY_VALUE is 'The value of the match keys.'
;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_RCPT_SEARCH_WS';
ALTER TABLE IM_MATCH_RCPT_SEARCH_WS
	ADD CONSTRAINT PK_IM_MATCH_RCPT_SEARCH_WS PRIMARY KEY ( WORKSPACE_ID, SHIPMENT )
	USING INDEX
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	


PROMPT CREATING TABLE 'IM_RCPT_SEARCH_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_RCPT_SEARCH_GTT
	(
     SHIPMENT NUMBER(12),
     ORDER_NO NUMBER(12),
     ASN VARCHAR2(30 ),
     STATUS_CODE VARCHAR2(1 ),
     INVC_MATCH_STATUS VARCHAR2(1 ),
     LOCATION NUMBER(10),
     LOCATION_TYPE VARCHAR2(1 ),
     LOCATION_NAME VARCHAR2(150 ),
     BILL_TO_LOC NUMBER(10),
     BILL_TO_LOC_NAME VARCHAR2(150 ),
     BILL_TO_LOC_TYPE VARCHAR2(1 ),
     RECEIVE_DATE DATE,
     SUPPLIER NUMBER(10),
     SUPPLIER_NAME VARCHAR2(240 ),
     SUPPLIER_SITE_ID NUMBER(10),
     SUPPLIER_SITE_NAME VARCHAR2(240 ),
     CURRENCY_CODE VARCHAR2(3 ),
     TOTAL_COST NUMBER(20,4),
     TOTAL_QTY NUMBER(12,4),
     CHOICE_FLAG VARCHAR2(1) , 
	 LOC_VAT_REGION NUMBER (4) NULL , 
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL ,
	 MATCH_KEY_ID NUMBER (10) 
    )
	ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_RCPT_SEARCH_GTT is 'Global temporary table used in search logic.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.SHIPMENT is 'The shipment of the receipt.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.ORDER_NO is 'The order_no tied to the receipt.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.ASN is 'The ASN of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.STATUS_CODE is 'The status_code of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.INVC_MATCH_STATUS is 'The invc_match_status of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.LOCATION is 'The location of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.LOCATION_TYPE is 'The location_type of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.LOCATION_NAME is 'The location_name of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.BILL_TO_LOC is 'The BILL_TO_LOC of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.BILL_TO_LOC_NAME is 'The BILL_TO_LOC_NAME of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.BILL_TO_LOC_TYPE is 'The boll_to_loc_type of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.RECEIVE_DATE is 'The receive_date of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.SUPPLIER is 'The supplier of the order_no tied to the shipment shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.SUPPLIER_NAME is 'The supplier of the order_no tied to the shipment shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.SUPPLIER_SITE_ID is 'The supplier of the order_no tied to the shipment shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.SUPPLIER_SITE_NAME is 'The supplier of the order_no tied to the shipment shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.CURRENCY_CODE is 'The currency_code of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.TOTAL_COST is 'The total_cos\t of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.TOTAL_QTY is 'The total_qty of the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.CHOICE_FLAG is 'The UI choice indicator for the shipment.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.LOC_VAT_REGION is 'The vat region of the location.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.LOC_SET_OF_BOOKS_ID is 'The set of books id of the location.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.SUPPLIER_SITE_VAT_REGION is 'The vat region of the supplier site.'
;

COMMENT ON COLUMN IM_RCPT_SEARCH_GTT.MATCH_KEY_ID is 'An identifier for a match key.'
;



PROMPT CREATING TABLE 'IM_TRANSFORM_SHIPSKU_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_TRANSFORM_SHIPSKU_GTT
	(
     SHIPMENT NUMBER(12),
     ITEM VARCHAR2(25 ),
     SEQ_NO NUMBER(10),
     SS_QTY_RECEIVED NUMBER(12,4),
     SS_QTY_MATCHED NUMBER(12,4),
     SS_UNIT_COST NUMBER(20,4),
     WEIGHT_RECEIVED NUMBER(12,4),
     WEIGHT_RECEIVED_UOM VARCHAR2(4 ),
     CARTON VARCHAR2(20 ),
     CATCH_WEIGHT_TYPE VARCHAR2(2 ),
     ORDER_NO NUMBER(12),
     SUPPLIER NUMBER(10),
     SUP_QTY_LEVEL VARCHAR2(6 ),
     TRANSFORM_QTY_RECEIVED NUMBER(12,4),
     TRANSFORM_QTY_MATCHED NUMBER(12,4),
     TRANSFORM_UNIT_COST NUMBER(20,4) , 
	 INVC_MATCH_STATUS VARCHAR2 (1 ) NULL ,
	 INVC_ITEM VARCHAR2 (25 ) NULL
    )
    ON COMMIT DELETE ROWS
;

COMMENT ON TABLE IM_TRANSFORM_SHIPSKU_GTT is 'Global temporary table used when applying catchweight and UOM logic to shipsku records.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.SHIPMENT is 'The shipment being transformed.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.ITEM is 'The item on the shipment.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.SEQ_NO is 'The sequence number of the shipsku record.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.SS_QTY_RECEIVED is 'They qty_received value from shipsku.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.SS_QTY_MATCHED is 'The qty_matched value from shipsku.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.SS_UNIT_COST is 'The unit_cost value from shipsku.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.WEIGHT_RECEIVED is 'The weight_received value from shipsku.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.WEIGHT_RECEIVED_UOM is 'The weight_received_uom value from shipsku.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.CARTON is 'The carton value from shipsku.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.CATCH_WEIGHT_TYPE is 'The catch_weight_type of the item.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.ORDER_NO is 'The order_no value from shipsku..'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.SUPPLIER is 'The supplier of the order_no tied to the shipment.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.SUP_QTY_LEVEL is 'The sup_qty_level associated with the supplier.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.TRANSFORM_QTY_RECEIVED is 'The transformed qty_recieved.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.TRANSFORM_QTY_MATCHED is 'The transformed qty_matched'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.TRANSFORM_UNIT_COST is 'The transformed_unit_cost.'
;

COMMENT ON COLUMN IM_TRANSFORM_SHIPSKU_GTT.INVC_MATCH_STATUS is 'The INVC_MATCH_STATUS value from shipsku.'
;

COMMENT ON COLUMN im_transform_shipsku_gtt.INVC_ITEM is 'Helper for match inquiry logic.  The item on the invoice this row was detail matched with.'
;




PROMPT CREATING TABLE 'IM_MATCH_GROUP_HEAD_WS';
CREATE TABLE IM_MATCH_GROUP_HEAD_WS
	(
     WORKSPACE_ID NUMBER(10) NOT NULL,
     MATCH_GROUP_ID NUMBER(10) NOT NULL,
     MATCH_STGY_ID NUMBER(10) NULL,
     MATCH_STGY_DTL_ID NUMBER(10) NULL,
     CHUNK_NUM NUMBER(10) NULL,
     MATCH_LUW_ID NUMBER(10) NULL,
     INVC_GROUP_ID NUMBER(10),
     RCPT_GROUP_ID NUMBER(10),
     MATCH_TYPE VARCHAR2(3 ) NULL,
     MATCH_KEY_ID NUMBER(10) NULL,
     ITEM VARCHAR2(25 ),
     COST_TOLERANCE_DTL_ID NUMBER(10),
     QTY_TOLERANCE_DTL_ID NUMBER(10),
     TOLERANCE_CURRENCY_CODE VARCHAR2(3 ),
     TOLERANCE_EXCHANGE_RATE NUMBER(20,10),
     INVC_GROUP_COST NUMBER(20,4) NULL,
     INVC_GROUP_QTY NUMBER(12,4) NULL,
     RCPT_GROUP_COST NUMBER(20,4) NULL,
     RCPT_GROUP_QTY NUMBER(12,4) NULL,
     COST_VARIANCE NUMBER(20,4),
     QTY_VARIANCE NUMBER(12,4),
     COST_DISCREPANT VARCHAR2(1 ),
     QTY_DISCREPANT VARCHAR2(1 ),
     COST_DISC_RESOLVED VARCHAR2(1 ),
     QTY_DISC_RESOLVED VARCHAR2(1 ),
     COST_ADJUST_RC VARCHAR2(20 ),
     QTY_ADJUST_RC VARCHAR2(20 ),
     SKU_COMPLIANT VARCHAR2(1 ),
     MATCH_AVAILABLE VARCHAR2(1 ) NULL,
     MATCH_STATUS VARCHAR2(6 ) NULL,
     PERSIST_STATUS VARCHAR2(1 ) NULL,
     ERROR_CODE VARCHAR2(40 ),
     ERROR_CONTEXT VARCHAR2(200 ) , 
	 TOLERANCE_ID NUMBER (10) NULL , 
	 QTY_MATCH_REQUIRED VARCHAR2 (1 ) NULL , 
	 TAX_COMPLIANT VARCHAR2 (1 ) NULL , 
	 SKU_COMP_PERCENT NUMBER (5,2) NULL 
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_MATCH_GROUP_HEAD_WS is 'This table stores the header level information about the match group which the auto match batch or the user attempts.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_GROUP_ID is 'Identifier of the matching group'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_STGY_ID is 'Identifier which maps to the matching startegy which is being executed on the chunk.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_STGY_DTL_ID is 'Identifier which maps to the matching startegy detail which is being executed on the chunk.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.CHUNK_NUM is 'Unique ID for the chunk'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.INVC_GROUP_ID is 'Identifier of the invoice group which participates in the match'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.RCPT_GROUP_ID is 'Identifier of the receipt group which participates in the match'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_TYPE is 'Indicates the Match type the group is created for.(Summary All to All, Summary One to Many, Detail Match etc).'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.ITEM is 'Item involved - For Detail Match'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.COST_TOLERANCE_DTL_ID is 'Tolerance Detail Id which has been used for cost matching on this group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.QTY_TOLERANCE_DTL_ID is 'Tolerance Detail Id which has been used for qty matching on this group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.TOLERANCE_CURRENCY_CODE is 'Holds the Currency Code of the tolerance being used for matching.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.TOLERANCE_EXCHANGE_RATE is 'Holds the Exchange rate between Invoice and Tolerance Currencies'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.INVC_GROUP_COST is 'Total Cost(Summary)/Unit cost (Detail) for the Invoice group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.INVC_GROUP_QTY is 'Total Qty for the Invoice group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.RCPT_GROUP_COST is 'Total Cost(Summary)/Unit cost (Detail) for the Receipt group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.RCPT_GROUP_QTY is 'Total Qty for the Receipt group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.COST_VARIANCE is 'Cost Variance between Invoice and Receipt group'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.QTY_VARIANCE is 'Qty Variance between Invoice and Receipt group'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.COST_DISCREPANT is 'Field to state whether the invoice and receipt groups are cost discrepant.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.QTY_DISCREPANT is 'Field to state whether the invoice and receipt groups are qty discrepant.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.COST_DISC_RESOLVED is 'Field to state whether the cost discrepancy has been resolved or not.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.QTY_DISC_RESOLVED is 'Field to state whether the qty discrepancy has been resolved or not.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.COST_ADJUST_RC is 'Reason code used for resolving cost discrepancy.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.QTY_ADJUST_RC is 'Reason code used for resolving qty discrepancy.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.SKU_COMPLIANT is 'Sku Compliance Percent for summary matches.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_AVAILABLE is 'Field to determine whether match group can be a candidate for best match strategy.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.MATCH_STATUS is 'The final status of the invoice/ invoice-item. Initially loaded as ''URMTCH'', could move to ''MURMTH''/''MTCH'' or remain in ''URMTCH''.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.PERSIST_STATUS is 'Persist status of successful match.
(Not Yet ''N'', Persist ''P'',FAIL ''F'')'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.ERROR_CODE is 'User defined error messages for the matching group. Used for reporting'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.ERROR_CONTEXT is 'Additional information required to support the error.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.TOLERANCE_ID is 'This column stores the ID of the tolerance used for Matching.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.QTY_MATCH_REQUIRED is 'This column denotes whether qty matching will be performed on the match group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.TAX_COMPLIANT is 'Tax compliance indicator for Summary matches'
;

COMMENT ON COLUMN IM_MATCH_GROUP_HEAD_WS.SKU_COMP_PERCENT is 'Minimum SKU compliance percentage required to be a successful match.'
;
PROMPT CREATING INDEX 'IM_MATCH_GROUP_HEAD_WS_I1';
CREATE INDEX IM_MATCH_GROUP_HEAD_WS_I1 on IM_MATCH_GROUP_HEAD_WS
	(
	 MATCH_STGY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_HEAD_WS_I2';
CREATE INDEX IM_MATCH_GROUP_HEAD_WS_I2 on IM_MATCH_GROUP_HEAD_WS
	(
	 MATCH_STGY_DTL_ID ASC
    )
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
 
PROMPT CREATING INDEX 'IM_MATCH_GROUP_HEAD_WS_I3';
CREATE INDEX IM_MATCH_GROUP_HEAD_WS_I3 on IM_MATCH_GROUP_HEAD_WS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_HEAD_WS_I4';
CREATE INDEX IM_MATCH_GROUP_HEAD_WS_I4 on IM_MATCH_GROUP_HEAD_WS
	(
	 MATCH_LUW_ID  ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_HEAD_WS_I5';
CREATE INDEX IM_MATCH_GROUP_HEAD_WS_I5 on IM_MATCH_GROUP_HEAD_WS
	(
	 MATCH_KEY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_HEAD_WS_I6';
CREATE INDEX IM_MATCH_GROUP_HEAD_WS_I6 on IM_MATCH_GROUP_HEAD_WS
	(
	 RCPT_GROUP_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_GROUP_HEAD_WS';
ALTER TABLE IM_MATCH_GROUP_HEAD_WS
	ADD CONSTRAINT PK_IM_MATCH_GROUP_HEAD_WS PRIMARY KEY ( MATCH_GROUP_ID ,WORKSPACE_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


PROMPT CREATING TABLE 'IM_MATCH_GROUP_INVC_WS';
CREATE TABLE IM_MATCH_GROUP_INVC_WS
	(
     INVC_GROUP_ID NUMBER(10) NOT NULL,
     DOC_ID NUMBER(10) NOT NULL,
     WORKSPACE_ID NUMBER(10) NULL,
     MATCH_STGY_ID NUMBER(10) NULL,
     MATCH_STGY_DTL_ID NUMBER(10) NULL,
     CHUNK_NUM NUMBER(10) NULL,
     MATCH_LUW_ID NUMBER(10) NULL,
     MATCH_KEY_ID NUMBER(10) NULL,
     DUE_DATE DATE NULL
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_MATCH_GROUP_INVC_WS is 'This table stores the Invoices which constitute the Invoice group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.INVC_GROUP_ID is 'Identifier of the invoice group participating in the match'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.DOC_ID is 'Id of the invoice involved in the matching group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.MATCH_STGY_ID is 'Identifier which maps to the matching startegy which is being executed on the chunk.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.MATCH_STGY_DTL_ID is 'Identifier which maps to the matching startegy detail which is being executed on the chunk.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.CHUNK_NUM is 'Unique ID for the chunk'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_INVC_WS.DUE_DATE is 'Due date of the invoice'
;
PROMPT CREATING INDEX 'IM_MATCH_GROUP_INVC_WS_I1'
CREATE INDEX IM_MATCH_GROUP_INVC_WS_I1 on IM_MATCH_GROUP_INVC_WS
	(
	 WORKSPACE_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_INVC_WS_I2'
CREATE INDEX IM_MATCH_GROUP_INVC_WS_I2 on IM_MATCH_GROUP_INVC_WS
	(
	 MATCH_STGY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_INVC_WS_I3'
CREATE INDEX IM_MATCH_GROUP_INVC_WS_I3 on IM_MATCH_GROUP_INVC_WS
	(
	 MATCH_STGY_DTL_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_INVC_WS_I4'
 CREATE INDEX IM_MATCH_GROUP_INVC_WS_I4 on IM_MATCH_GROUP_INVC_WS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_INVC_WS_I5'
CREATE INDEX IM_MATCH_GROUP_INVC_WS_I5 on IM_MATCH_GROUP_INVC_WS
	(
	 MATCH_LUW_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_GROUP_INVC_WS_I6'
CREATE INDEX IM_MATCH_GROUP_INVC_WS_I6 on IM_MATCH_GROUP_INVC_WS
	(
	 MATCH_KEY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_GROUP_INVC_WS';
ALTER TABLE IM_MATCH_GROUP_INVC_WS
	ADD CONSTRAINT PK_IM_MATCH_GROUP_INVC_WS PRIMARY KEY ( DOC_ID, INVC_GROUP_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;


PROMPT CREATING TABLE 'IM_MATCH_GROUP_RCPT_WS';
CREATE TABLE IM_MATCH_GROUP_RCPT_WS
	(
     RCPT_GROUP_ID NUMBER(10) NOT NULL,
     SHIPMENT NUMBER(12) NOT NULL,
     WORKSPACE_ID NUMBER(10) NULL,
     MATCH_STGY_ID NUMBER(10) NULL,
     MATCH_STGY_DTL_ID NUMBER(10) NULL,
     CHUNK_NUM NUMBER(10) NULL,
     MATCH_LUW_ID NUMBER(10) NULL,
     MATCH_KEY_ID NUMBER(10) NULL
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA
;



COMMENT ON TABLE IM_MATCH_GROUP_RCPT_WS is 'This table stores the Receipts which constitute the receipt group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.RCPT_GROUP_ID is 'Identifier of the receipt group participating in the match'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.SHIPMENT is 'Id of the shipment involved in the matching group.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.MATCH_STGY_ID is 'The ID of the matching strategy used for matching the invoice.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.MATCH_STGY_DTL_ID is 'The ID of the matching strategy detail.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Receipt.Default ''0'' inidicates, it is not Chunked.'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_GROUP_RCPT_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;
PROMPT CREATING INDEX 'IM_MATCH_GROUP_RCPT_WS_I1'
CREATE INDEX IM_MATCH_GROUP_RCPT_WS_I1 on IM_MATCH_GROUP_RCPT_WS
	(
	 WORKSPACE_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_GROUP_RCPT_WS'
CREATE INDEX IM_MATCH_GROUP_RCPT_WS_I2 on IM_MATCH_GROUP_RCPT_WS
	(
	 MATCH_STGY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_GROUP_RCPT_WS_I3'
CREATE INDEX IM_MATCH_GROUP_RCPT_WS_I3 on IM_MATCH_GROUP_RCPT_WS
	(
	 MATCH_STGY_DTL_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_GROUP_RCPT_WS_I4'
CREATE INDEX IM_MATCH_GROUP_RCPT_WS_I4 on IM_MATCH_GROUP_RCPT_WS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_GROUP_RCPT_WS_I5'
CREATE INDEX IM_MATCH_GROUP_RCPT_WS_I5 on IM_MATCH_GROUP_RCPT_WS
	(
	 MATCH_LUW_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_GROUP_RCPT_WS_I6'
CREATE INDEX IM_MATCH_GROUP_RCPT_WS_I6 on IM_MATCH_GROUP_RCPT_WS
	(
	 MATCH_KEY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_GROUP_RCPT_WS';
ALTER TABLE IM_MATCH_GROUP_RCPT_WS
	ADD CONSTRAINT PK_IM_MATCH_GROUP_RCPT_WS PRIMARY KEY ( SHIPMENT , RCPT_GROUP_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ; 


PROMPT CREATING TABLE 'IM_AUTO_MATCH_STATUS';
CREATE TABLE IM_AUTO_MATCH_STATUS
	(
     WORKSPACE_ID NUMBER(10) NOT NULL,
     START_DATETIME DATE DEFAULT SYSDATE NOT NULL,
     END_DATETIME DATE,
     STATUS VARCHAR2(8 ) NOT NULL,
     ERROR_MSG VARCHAR2(2000 )
    )
		INITRANS 6
		TABLESPACE RETAIL_DATA
;



PROMPT CREATING CHECK CONSTRAINT ON 'IM_AUTO_MATCH_STATUS';
ALTER TABLE IM_AUTO_MATCH_STATUS 
	ADD CONSTRAINT CHK_IAMS_STATUS 
	CHECK (STATUS IN ('INIT','PROCESS','SUCCESS','FAILED'))
;


COMMENT ON TABLE IM_AUTO_MATCH_STATUS is 'This table stores the status of Auto Match Batch.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_STATUS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_STATUS.START_DATETIME is 'Holds the Start date and time of the batch'
;

COMMENT ON COLUMN IM_AUTO_MATCH_STATUS.END_DATETIME is 'Holds the End date and time of the batch'
;

COMMENT ON COLUMN IM_AUTO_MATCH_STATUS.STATUS is 'Status of the RUN (INIT,PROCESS,SUCCESS,FAILED)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_STATUS.ERROR_MSG is 'Error Message '
;
PROMPT CREATING INDEX 'PK_IM_AUTO_MATCH_STATUS';
CREATE UNIQUE INDEX PK_IM_AUTO_MATCH_STATUS ON IM_AUTO_MATCH_STATUS 
    (  
     WORKSPACE_ID ASC 
    ) 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_AUTO_MATCH_STATUS'
ALTER TABLE IM_AUTO_MATCH_STATUS
	ADD CONSTRAINT PK_IM_AUTO_MATCH_STATUS PRIMARY KEY ( WORKSPACE_ID )
	USING INDEX PK_IM_AUTO_MATCH_STATUS ;



PROMPT CREATING TABLE 'IM_MATCH_CHUNK_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_CHUNK_GTT
	(
     WORKSPACE_ID NUMBER(10) NOT NULL,
     MATCH_STGY_ID NUMBER(10) NOT NULL,
     MATCH_KEY_ID NUMBER(10) NOT NULL,
     ITEM VARCHAR2(25 ) NOT NULL,
     MATCH_LUW_ID NUMBER(10) NOT NULL,
     CHUNK_NUM NUMBER(10) NOT NULL
	)
	ON COMMIT DELETE ROWS
;



COMMENT ON TABLE IM_MATCH_CHUNK_GTT is 'Global temporary table used for Auto Match.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_GTT.WORKSPACE_ID is 'The Workspace ID of the Match.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_GTT.MATCH_STGY_ID is 'The Strategy of the Match.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_GTT.MATCH_KEY_ID is 'The Match Key ID of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_GTT.ITEM is 'The Item involved in the Match.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_GTT.MATCH_LUW_ID is 'The LUW ID the match Key will be part of.'
;

COMMENT ON COLUMN IM_MATCH_CHUNK_GTT.CHUNK_NUM is 'The LUW ID the item will be part of.'
;



PROMPT CREATING TABLE 'IM_MATCH_INVC_DETL_WS';
CREATE TABLE IM_MATCH_INVC_DETL_WS
	(
     WORKSPACE_ID NUMBER(10) NOT NULL,
     DOC_ID NUMBER(10) NOT NULL,
     ITEM VARCHAR2(25 ) NOT NULL,
     INVC_DETL_VERSION_ID NUMBER(15) NULL,
     MATCH_KEY_ID NUMBER(10),
     CHUNK_NUM NUMBER(10),
     MATCH_LUW_ID NUMBER(10),
     STATUS VARCHAR2(6 ) NULL,
     UNIT_COST NUMBER(20,4) NULL,
     INVOICE_QTY NUMBER(12,4) NULL,
     COST_MATCHED VARCHAR2(1 ) NULL,
     QTY_MATCHED VARCHAR2(1 ) NULL,
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N' NULL , 
	 MATCH_GROUP_ID NUMBER (10) NULL , 
	 ORDLOC_UNIT_COST NUMBER (20,4) , 
	 MATCH_HIST_ID NUMBER (10) NULL 
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_MATCH_INVC_DETL_WS is 'This table stores the item details of Invoices which have been picked up by Auto Match Batch or by the user for detail matching.'
;


COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.DOC_ID is 'Identifier of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.ITEM is 'Line Item of the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.INVC_DETL_VERSION_ID is 'The version identifier from IM_INVOICE_DETAIL during workspace creation.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.STATUS is 'Match status of the Invoice item.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.UNIT_COST is 'Invoice Unit Cost of the Item.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.INVOICE_QTY is 'Invoice Quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.COST_MATCHED is 'Indicates whether the item is cost matched.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.QTY_MATCHED is 'Indicates whether the item is qty matched.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.MATCH_GROUP_ID is 'Identifier of the matching group the item was part of'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.ORDLOC_UNIT_COST is 'The cost on the order of the item/location.'
;

COMMENT ON COLUMN IM_MATCH_INVC_DETL_WS.MATCH_HIST_ID is 'Match ID from detail matching invoice history table.'
;
PROMPT CREATING INDEX 'IM_MATCH_INVC_DETL_WS_I1';
CREATE INDEX IM_MATCH_INVC_DETL_WS_I1 on IM_MATCH_INVC_DETL_WS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;



PROMPT CREATING INDEX 'IM_MATCH_INVC_DETL_WS_I2';
CREATE INDEX IM_MATCH_INVC_DETL_WS_I2 on IM_MATCH_INVC_DETL_WS
	(
	 MATCH_LUW_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;



PROMPT CREATING INDEX 'IM_MATCH_INVC_DETL_WS_I3';
CREATE INDEX IM_MATCH_INVC_DETL_WS_I3 on IM_MATCH_INVC_DETL_WS
	(
	 MATCH_KEY_ID ASC 
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_INVC_DETL_WS_I4'
CREATE INDEX IM_MATCH_INVC_DETL_WS_I4 on IM_MATCH_INVC_DETL_WS
	(
	 MATCH_GROUP_ID ASC 
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_INVC_DETL_WS';
ALTER TABLE IM_MATCH_INVC_DETL_WS
	ADD CONSTRAINT PK_IM_MATCH_INVC_DETL_WS PRIMARY KEY ( DOC_ID, ITEM ,WORKSPACE_ID )
	USING INDEX 
    TABLESPACE RETAIL_INDEX 
    INITRANS 12 ;



PROMPT CREATING TABLE 'IM_MATCH_INVC_KEY_GTT';
CREATE GLOBAL TEMPORARY TABLE IM_MATCH_INVC_KEY_GTT
	(
     WORKSPACE_ID NUMBER(10) NOT NULL,
     MATCH_KEY VARCHAR2(3 ) NOT NULL,
     MATCH_KEY_ID NUMBER(10),
     SUPPLIER_GROUP_ID NUMBER(10),
     PO_SUPPLIER NUMBER(10),
     PO_SUPPLIER_SITE_ID NUMBER(10),
     ORDER_NO NUMBER(12),
     LOCATION NUMBER(10)
    )
	ON COMMIT DELETE ROWS
;



COMMENT ON TABLE IM_MATCH_INVC_KEY_GTT is 'Global temporary table used for Auto Match.'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.WORKSPACE_ID is 'The Workspace ID of the Match.'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.MATCH_KEY is 'The Match Key of the Match'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.MATCH_KEY_ID is 'The Match Key ID of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.SUPPLIER_GROUP_ID is 'The Supplier Group ID of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.PO_SUPPLIER is 'The Supplier of the PO.'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.PO_SUPPLIER_SITE_ID is 'The Supplier Site of the PO.'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.ORDER_NO is 'The Order number of the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_KEY_GTT.LOCATION is 'The location of the invoice.'
;



PROMPT CREATING TABLE 'IM_MATCH_INVC_WS';
CREATE TABLE IM_MATCH_INVC_WS
	(
     WORKSPACE_ID NUMBER(10) NOT NULL,
     DOC_ID NUMBER(10) NOT NULL,
     DOC_HEAD_VERSION_ID NUMBER(15) NULL,
     MATCH_STGY_ID NUMBER(10),
     MATCH_KEY VARCHAR2(3 ),
     MATCH_KEY_ID NUMBER(10),
     RANK_IN_MATCH_KEY NUMBER(10),
     STATUS VARCHAR2(6 ) NULL,
     DOC_DATE DATE NULL,
     DUE_DATE DATE NULL,
     SUPPLIER_GROUP_ID NUMBER(10),
     SUPPLIER NUMBER(10) NULL,
     SUPPLIER_NAME VARCHAR2(240 ),
     SUPPLIER_PHONE VARCHAR2(20 ),
     PO_SUPPLIER NUMBER(10),
     PO_SUPPLIER_SITE_ID NUMBER(10),
     SUPPLIER_SITE_ID NUMBER(10) NULL,
     SUPPLIER_SITE_NAME VARCHAR2(240 ),
     CURRENCY_CODE VARCHAR2(3 ) NULL,
     ORDER_NO NUMBER(12) NULL,
     LOCATION NUMBER(10) NULL,
     LOC_TYPE VARCHAR2(1 ) NULL,
     LOCATION_NAME VARCHAR2(150 ) NULL,
     TOTAL_AVAIL_COST NUMBER(20,4) NULL,
     TOTAL_AVAIL_QTY NUMBER(12,4) NULL,
     MERCH_AMOUNT NUMBER(20,4) NULL,
     TOTAL_QTY NUMBER(12,4) NULL,
     COST_PRE_MATCH VARCHAR2(1 ) NULL,
     HEADER_ONLY VARCHAR2(1 ),
     SUMMARY_MTCH_ELIG VARCHAR2(1 ),
     DETAIL_MTCH_ELIG VARCHAR2(1 ),
     QTY_REQUIRED VARCHAR2(1 ) NULL,
     QTY_MATCH_REQUIRED VARCHAR2(1 ) NULL,
     CHUNK_NUM NUMBER(10),
     MATCH_LUW_ID NUMBER(10),
     TOLERANCE_ID NUMBER(12),
     TOLERANCE_CURRENCY_CODE VARCHAR2(3 ),
     TOLERANCE_EXCHANGE_RATE NUMBER(20,10),
     SKU_COMP_PERCENT NUMBER(4,2),
     MANUAL_GROUP_ID NUMBER(10),
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N' NULL , 
	 MATCH_GROUP_ID NUMBER (10) NULL , 
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL , 
	 LOC_VAT_REGION NUMBER (4) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL ,
	 TOLERANCE_LEVEL_TYPE VARCHAR2 (2 ) NULL ,
	 TOLERANCE_LEVEL_ID NUMBER (10) NULL ,
	 EXT_DOC_ID VARCHAR2 (150 ) NULL
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA ;



COMMENT ON TABLE IM_MATCH_INVC_WS is 'This table stores the list of invoices which have been picked up by Auto Match Batch for the specific run or by the user online.'
;


COMMENT ON COLUMN IM_MATCH_INVC_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.DOC_ID is 'Identifier of the invoice from IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.DOC_HEAD_VERSION_ID is 'The version identifier from IM_DOC_HEAD during workspace creation.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.MATCH_STGY_ID is 'The ID of the matching strategy used for matching the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.MATCH_KEY is 'The matching key which determines the receipts to which the invoice can be matched with.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.RANK_IN_MATCH_KEY is 'Ranking of the Invoice within the Match Key. Used for sorting invoices for Summary One to Many and Detail matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.STATUS is 'Status of the document on IM_DOC_HEAD'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.DOC_DATE is 'Date on the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.DUE_DATE is 'Due date of the invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUPPLIER_GROUP_ID is 'Supplier Group Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUPPLIER_NAME is 'Holds Supplier  name'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUPPLIER_PHONE is 'Holds Supplier phone number'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.PO_SUPPLIER is 'Purchase Order Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.PO_SUPPLIER_SITE_ID is 'Purchase Order Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUPPLIER_SITE_NAME is 'Holds Supplier site name'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.CURRENCY_CODE is 'Invoice''s Currency Code'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.ORDER_NO is 'Order Number of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.LOCATION is 'Location Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.LOC_TYPE is 'Location Type Identifier'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.LOCATION_NAME is 'Holds location name'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOTAL_AVAIL_COST is 'Total Available Cost of the Invoice (Without Tax)'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOTAL_AVAIL_QTY is 'Total Available Quantity of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.MERCH_AMOUNT is 'Holds the merchandise amount of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOTAL_QTY is 'Total Quantity of the Invoice'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.COST_PRE_MATCH is 'Indicates whether Invoice was considered for cost-prematch'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.HEADER_ONLY is 'Indicator that specifies if the invoice is header only or contains details'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUMMARY_MTCH_ELIG is 'Indicator that specifies if the Invoice can be considered for summary matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.DETAIL_MTCH_ELIG is 'Indicator that specifies if the Invoice can be considered for detail matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.QTY_REQUIRED is 'Indicator that specifies whether qty is required on the header of the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.QTY_MATCH_REQUIRED is 'Indicator that specifies whether qty must be considered during summary matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOLERANCE_ID is 'Holds the tolerance id for that match key'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOLERANCE_CURRENCY_CODE is 'Holds the Currency Code of the tolerance being used for matching.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOLERANCE_EXCHANGE_RATE is 'Holds the Exchange rate between Invoice and Tolerance Currencies'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SKU_COMP_PERCENT is 'The Minimum Sku Compliance Percentage required for a summary match.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.MANUAL_GROUP_ID is 'Identifier of the Manual Group, the invoice belongs to.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.MATCH_GROUP_ID is 'Identifier of the matching group the invoice was part of.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.LOC_SET_OF_BOOKS_ID is 'Set of Books Id of the location on the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.LOC_VAT_REGION is 'Vat region of the location on the invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.SUPPLIER_SITE_VAT_REGION is 'Vat region of the Supplier Site on the Invoice.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOLERANCE_LEVEL_TYPE is 'The level type which a mapped matching tolerance applies to. Valid values are D (Department), SG (Supplier Group), S (Supplier), and SS (Supplier Site).'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.TOLERANCE_LEVEL_ID is 'The numeric identifier for a tolerance level. References an existing identifier for a department, supplier group, supplier, or supplier site.'
;

COMMENT ON COLUMN IM_MATCH_INVC_WS.EXT_DOC_ID is 'The ext_doc_id for the doc_id.'
;
PROMPT CREATING INDEX 'IM_MATCH_INVC_WS_I1';
CREATE INDEX IM_MATCH_INVC_WS_I1 on IM_MATCH_INVC_WS
	(
	 MATCH_STGY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_INVC_WS_I2';
CREATE INDEX IM_MATCH_INVC_WS_I2 on IM_MATCH_INVC_WS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_INVC_WS_I3';
CREATE INDEX IM_MATCH_INVC_WS_I3 on IM_MATCH_INVC_WS
	(
	 MATCH_LUW_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING INDEX 'IM_MATCH_INVC_WS_I4'
CREATE INDEX IM_MATCH_INVC_WS_I4 on IM_MATCH_INVC_WS
	(
	 MATCH_KEY_ID ASC ,
	 CURRENCY_CODE ASC,
     WORKSPACE_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	

PROMPT CREATING INDEX 'IM_MATCH_INVC_WS_I5'
CREATE INDEX IM_MATCH_INVC_WS_I5 on IM_MATCH_INVC_WS
	(
	 MATCH_GROUP_ID ASC 
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_INVC_WS';
ALTER TABLE IM_MATCH_INVC_WS
	ADD CONSTRAINT PK_IM_MATCH_INVC_WS PRIMARY KEY ( DOC_ID ,WORKSPACE_ID )
	USING INDEX 
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ; 



PROMPT CREATING TABLE 'IM_MATCH_RCPT_DETL_WS';
CREATE TABLE IM_MATCH_RCPT_DETL_WS
	(
     WORKSPACE_ID NUMBER(10) NULL,
     SHIPMENT NUMBER(12) NULL,
     ITEM VARCHAR2(25 ) NULL,
     SUBSTITUTE_ITEM VARCHAR2(25 ),
     MATCH_KEY_ID NUMBER(10),
     CHUNK_NUM NUMBER(10),
     MATCH_LUW_ID NUMBER(10),
     INVC_MATCH_STATUS VARCHAR2(1 ) NULL,
     UNIT_COST NUMBER(20,4) NULL,
     QTY_RECEIVED NUMBER(12,4) NULL,
     QTY_AVAILABLE NUMBER(12,4) NULL,
     UNIT_COST_NC NUMBER(20,4) NULL,
     QTY_AVAILABLE_NC NUMBER(12,4) NULL,
     CATCH_WEIGHT_TYPE VARCHAR2(2 ),
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N' NULL , 
	 MATCH_GROUP_ID NUMBER (10) NULL , 
	 MATCH_HIST_ID NUMBER (10) NULL 
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA
;



COMMENT ON TABLE IM_MATCH_RCPT_DETL_WS is 'This table stores the item details of Shipments which have been picked up by Auto Match Batch or by the user for detail matching.'
;


COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.SHIPMENT is 'Identifier of the shipment from SHIPMENT'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.ITEM is 'Line Item of the shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.SUBSTITUTE_ITEM is 'Item  used by the user on online detail matching screen to substitute the item on the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Receipt.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.INVC_MATCH_STATUS is 'Indicates the status of the SKU on the Shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.UNIT_COST is 'Unit Cost of the Item on SHIPSKU.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.QTY_RECEIVED is 'Received quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.QTY_AVAILABLE is 'Available Quantity of the Item'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.UNIT_COST_NC is 'Unconverted Unit Cost of the Item from SHIPSKU.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.QTY_AVAILABLE_NC is 'Unconverted available Quantity of the Item from SHIPSKU'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.CATCH_WEIGHT_TYPE is 'This column will hold catch weight type for a simple pack catch weight item.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.MATCH_GROUP_ID is 'Identifier of the matching group the item was part of'
;

COMMENT ON COLUMN IM_MATCH_RCPT_DETL_WS.MATCH_HIST_ID is 'Match ID from Detail Matching Receipt history table.'
;
PROMPT CREATING INDEX 'IM_MATCH_RCPT_DETL_WS_I1';
CREATE INDEX IM_MATCH_RCPT_DETL_WS_I1 on IM_MATCH_RCPT_DETL_WS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_RCPT_DETL_WS_I2';
CREATE INDEX IM_MATCH_RCPT_DETL_WS_I2 on IM_MATCH_RCPT_DETL_WS
	(
	 MATCH_LUW_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_RCPT_DETL_WS_I3';
CREATE INDEX IM_MATCH_RCPT_DETL_WS_I3 on IM_MATCH_RCPT_DETL_WS
	(
	 MATCH_KEY_ID ASC 
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX'IM_MATCH_RCPT_DETL_WS_I4';
CREATE INDEX IM_MATCH_RCPT_DETL_WS_I4 on IM_MATCH_RCPT_DETL_WS
	(
     MATCH_GROUP_ID ASC 
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	
PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_RCPT_DETL_WS';
ALTER TABLE IM_MATCH_RCPT_DETL_WS
	ADD CONSTRAINT PK_IM_MATCH_RCPT_DETL_WS PRIMARY KEY ( SHIPMENT, ITEM, WORKSPACE_ID )
	USING INDEX 
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;


PROMPT CREATING TABLE 'IM_MATCH_RCPT_WS';
CREATE TABLE IM_MATCH_RCPT_WS
	(
     WORKSPACE_ID NUMBER(10) NOT NULL,
     SHIPMENT NUMBER(12) NOT NULL,
     MATCH_KEY_ID NUMBER(10),
     SUPPLIER NUMBER(10),
     SUPPLIER_NAME VARCHAR2(240 ),
     SUPPLIER_SITE_ID NUMBER(10),
     SUPPLIER_SITE_NAME VARCHAR2(240 ),
     ORDER_NO NUMBER(12) NULL,
     ASN VARCHAR2(30 ),
     BILL_TO_LOC NUMBER(10) NULL,
     BILL_TO_LOC_TYPE VARCHAR2(1 ) NULL,
     BILL_TO_LOC_NAME VARCHAR2(150 ),
     SHIP_TO_LOC NUMBER(10),
     SHIP_TO_LOC_TYPE VARCHAR2(1 ),
     SHIP_TO_LOC_NAME VARCHAR2(150 ),
     STATUS_CODE VARCHAR2(1 ),
     INVC_MATCH_STATUS VARCHAR2(1 ) NULL,
     RECEIVE_DATE DATE NULL,
     CURRENCY_CODE VARCHAR2(3 ) NULL,
     TOTAL_AVAIL_COST NUMBER(20,4) NULL,
     TOTAL_AVAIL_QTY NUMBER(12,4) NULL,
     MERCH_AMOUNT NUMBER(20,4) NULL,
     TOTAL_QTY NUMBER(12,4) NULL,
     MANUAL_GROUP_ID NUMBER(10),
     CHUNK_NUM NUMBER(10),
     MATCH_LUW_ID NUMBER(10),
     CHOICE_FLAG VARCHAR2(1 ) DEFAULT 'N' NULL ,
	 MATCH_GROUP_ID NUMBER (10) NULL , 
	 LOC_SET_OF_BOOKS_ID NUMBER (15) NULL ,
	 LOC_VAT_REGION NUMBER (4) NULL , 
	 SUPPLIER_SITE_VAT_REGION NUMBER (4) NULL
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA ;

		
		
COMMENT ON TABLE IM_MATCH_RCPT_WS is 'Table to hold receipts that are being considered for matching by Auto Match Batch or by the user.'
;


COMMENT ON COLUMN IM_MATCH_RCPT_WS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch or match attempt from the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SHIPMENT is 'Receipt Identifier from SHIPMENT'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.MATCH_KEY_ID is 'Identifier of the match key. Used for grouping invoices and receipts belonging to same Match Key.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SUPPLIER is 'Supplier Identifier'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SUPPLIER_NAME is 'Suppliers Trading Name'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SUPPLIER_SITE_ID is 'Supplier Site Identifier'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SUPPLIER_SITE_NAME is 'Supplier Site Trading Name'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.ORDER_NO is 'Order Number of the Shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.ASN is 'Advance Shipment Notice Number associated with the Shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.BILL_TO_LOC is 'Billing location for the Shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.BILL_TO_LOC_TYPE is 'Billing location type ''S'' or ''W'''
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.BILL_TO_LOC_NAME is 'Billing locations name.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SHIP_TO_LOC is 'Location that the Shipment will be delivered to.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SHIP_TO_LOC_TYPE is 'Type of the delivery location of the shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SHIP_TO_LOC_NAME is 'Name of the delivery location of the shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.STATUS_CODE is 'Indicates the Current Status of the Shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.INVC_MATCH_STATUS is 'Invoice Matching Status of the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.RECEIVE_DATE is 'Receive date of shipment'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.CURRENCY_CODE is 'Currency code of the Purchase Order.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.TOTAL_AVAIL_COST is 'Total Cost of the shipment available for matching.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.TOTAL_AVAIL_QTY is 'Total Quantity of the Shipment available for matching.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.MERCH_AMOUNT is 'Total Cost of the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.TOTAL_QTY is 'Total Quantity of the Shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.MANUAL_GROUP_ID is 'Identifier of the Manual Group, the receipt belongs to.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.MATCH_GROUP_ID is 'Identifier of the matching group the shipment was part of'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.CHUNK_NUM is 'Unique ID of the Auto Match Batch chunk which acts upon the Receipt.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.MATCH_LUW_ID is 'Unique ID for a Match LUW. Multiple match keys could form a Match LUW. But the minimum is One match key per LUW'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.CHOICE_FLAG is 'Corresponds to the checkbox in the UI'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.MATCH_GROUP_ID is 'Identifier of the matching group the shipment was part of'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.LOC_SET_OF_BOOKS_ID is 'Set of Books Id of the location on the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.LOC_VAT_REGION is 'Vat region of the location on the shipment.'
;

COMMENT ON COLUMN IM_MATCH_RCPT_WS.SUPPLIER_SITE_VAT_REGION is 'Vat region of the Supplier Site on the Order.'
;

PROMPT CREATING INDEX 'IM_MATCH_RCPT_WS_I1';
CREATE INDEX IM_MATCH_RCPT_WS_I1 on IM_MATCH_RCPT_WS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_RCPT_WS_I2';
CREATE INDEX IM_MATCH_RCPT_WS_I2 on IM_MATCH_RCPT_WS
	(
	 MATCH_LUW_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_RCPT_WS_I3';
CREATE INDEX IM_MATCH_RCPT_WS_I3 on IM_MATCH_RCPT_WS
	(
	 MATCH_KEY_ID ASC ,
	 CURRENCY_CODE ASC,
     WORKSPACE_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_MATCH_RCPT_WS_I3';
CREATE INDEX IM_MATCH_RCPT_WS_I4 on IM_MATCH_RCPT_WS
	(
	 MATCH_GROUP_ID ASC 
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING PRIMARY KEY ON 'IM_MATCH_RCPT_WS';
ALTER TABLE IM_MATCH_RCPT_WS
	ADD CONSTRAINT PK_IM_MATCH_RCPT_WS PRIMARY KEY ( SHIPMENT , WORKSPACE_ID )
	USING INDEX 
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	


PROMPT CREATING TABLE 'IM_AUTO_MATCH_TASK_STATUS';
CREATE TABLE IM_AUTO_MATCH_TASK_STATUS
	(
     TASK_ID NUMBER(10) NOT NULL,
     WORKSPACE_ID NUMBER(10) NOT NULL,
     MATCH_STGY_ID NUMBER(10),
     MATCH_STGY_DTL_ID NUMBER(10),
     CHUNK_NUM NUMBER(10),
     MATCH_LUW_ID NUMBER(10),
     TASK_LEVEL VARCHAR2(1 ) NOT NULL,
     TASK_TYPE VARCHAR2(1 ) NOT NULL,
     DOC_COUNT NUMBER(10),
     SUMMARY_MATCH_COUNT NUMBER(10),
     DETAIL_MATCH_COUNT NUMBER(10),
     DISC_ITEM_COUNT NUMBER(10),
     DISC_RESLVD_COUNT NUMBER(10),
     START_DATETIME DATE DEFAULT SYSDATE NOT NULL,
     END_DATETIME DATE,
     STATUS VARCHAR2(8 ) NOT NULL,
     ERROR_MSG VARCHAR2(2000 )
	)
		INITRANS 6
		TABLESPACE RETAIL_DATA ;

		

PROMPT CREATING CHECK CONSTRAINT ON 'IM_AUTO_MATCH_TASK_STATUS';		
ALTER TABLE IM_AUTO_MATCH_TASK_STATUS 
	ADD CONSTRAINT CHK_IAMTS_STATUS 
	CHECK (STATUS IN ('STARTED','SUCCESS','FAILED'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_AUTO_MATCH_TASK_STATUS';	
ALTER TABLE IM_AUTO_MATCH_TASK_STATUS 
	ADD CONSTRAINT CHK_IAMTS_TASK_LEVEL 
	CHECK (TASK_LEVEL IN ('B','C','L'))
;

PROMPT CREATING CHECK CONSTRAINT ON 'IM_AUTO_MATCH_TASK_STATUS';
ALTER TABLE IM_AUTO_MATCH_TASK_STATUS 
	ADD CONSTRAINT CHK_IAMTS_TASK_TYPE 
	CHECK (TASK_TYPE IN ('I','M','P'))
;


COMMENT ON TABLE IM_AUTO_MATCH_TASK_STATUS is 'This table stores the statuses of tasks that the Auto Match Batch performs.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.TASK_ID is 'Unique ID for the specific task'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.WORKSPACE_ID is 'Unique ID for the specific run of Auto Match Batch.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.MATCH_STGY_ID is 'Identifier which maps to the matching startegy which is being executed by the task.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.MATCH_STGY_DTL_ID is 'Identifier which maps to the matching startegy detail which is being executed by the task.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.CHUNK_NUM is 'Identifier of the chunk.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.MATCH_LUW_ID is 'ID for the Match LUW(A Minimum of a Key)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.TASK_LEVEL is 'The Level at which the task is performed.
Chunk = ''C''
Match LUW = ''L''
Batch = ''B'''
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.TASK_TYPE is 'The type of the task being performed.
INIT = ''I''
MTCH = ''M''
PERSIST = ''P'''
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.DOC_COUNT is 'Number of Documents included as part of this task. (Summary match)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.SUMMARY_MATCH_COUNT is 'Number of Documents that were matched. (Summary match)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.DETAIL_MATCH_COUNT is 'Number of Line Items that were matched. (Detail match)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.DISC_ITEM_COUNT is 'Number of Items that were marked as discrepant.(Detail Match)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.DISC_RESLVD_COUNT is 'Number of discrepancies resolved. (Detail Match)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.START_DATETIME is 'Holds the Start date and time of the task.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.END_DATETIME is 'Holds the End date and time for the task.'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.STATUS is 'Status of the task (STARTED, FAILED, SUCCESS)'
;

COMMENT ON COLUMN IM_AUTO_MATCH_TASK_STATUS.ERROR_MSG is 'Error message for the task if any.'
;
PROMPT CREATING INDEX 'PK_IM_AUTO_MATCH_TASK_STATUS'
CREATE INDEX PK_IM_AUTO_MATCH_TASK_STATUS on IM_AUTO_MATCH_TASK_STATUS
	(
	 TASK_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_AUTO_MATCH_TASK_STATUS_I1'
CREATE INDEX IM_AUTO_MATCH_TASK_STATUS_I1 on IM_AUTO_MATCH_TASK_STATUS
	(
	 WORKSPACE_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_AUTO_MATCH_TASK_STATUS_I2'
CREATE INDEX IM_AUTO_MATCH_TASK_STATUS_I2 on IM_AUTO_MATCH_TASK_STATUS
	(
	 MATCH_STGY_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_AUTO_MATCH_TASK_STATUS_I3'
CREATE INDEX IM_AUTO_MATCH_TASK_STATUS_I3 on IM_AUTO_MATCH_TASK_STATUS
	(
	 MATCH_STGY_DTL_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_AUTO_MATCH_TASK_STATUS_I4'
CREATE INDEX IM_AUTO_MATCH_TASK_STATUS_I4 on IM_AUTO_MATCH_TASK_STATUS
	(
	 CHUNK_NUM ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;

PROMPT CREATING INDEX 'IM_AUTO_MATCH_TASK_STATUS_I5'
CREATE INDEX IM_AUTO_MATCH_TASK_STATUS_I5 on IM_AUTO_MATCH_TASK_STATUS
	(
	 MATCH_LUW_ID ASC
	)
	TABLESPACE RETAIL_INDEX
	INITRANS 12 ;
	


PROMPT CREATING FOREIGN KEY ON 'IM_DOC_DETAIL_RC_TAX';
ALTER TABLE IM_DOC_DETAIL_RC_TAX 
    ADD CONSTRAINT DDR_DRC_FK FOREIGN KEY 
    ( 
     IM_DOC_DETAIL_REASON_CODES_ID
    ) 
    REFERENCES IM_DOC_DETAIL_REASON_CODES 
    ( 
     IM_DOC_DETAIL_REASON_CODES_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_DETAIL_REASON_CODES';
ALTER TABLE IM_DOC_DETAIL_REASON_CODES 
    ADD CONSTRAINT DRC_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_DETAIL_REASON_CODES';
ALTER TABLE IM_DOC_DETAIL_REASON_CODES 
    ADD CONSTRAINT DRC_IRE_FK FOREIGN KEY 
    ( 
     REASON_CODE_ID
    ) 
    REFERENCES IM_REASON_CODES 
    ( 
     REASON_CODE_ID
    ) 
    NOT DEFERRABLE 
;





PROMPT CREATING FOREIGN KEY ON 'IM_CN_SUMMARY_MATCH_HIS';
ALTER TABLE IM_CN_SUMMARY_MATCH_HIS 
    ADD CONSTRAINT ICN_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_INVOICE_DETAIL_ALLOWANCE';
ALTER TABLE IM_INVOICE_DETAIL_ALLOWANCE 
    ADD CONSTRAINT IDA_IOD_FK FOREIGN KEY 
    ( 
     DOC_ID,
     ITEM
    ) 
    REFERENCES IM_INVOICE_DETAIL 
    ( 
     DOC_ID,
     ITEM
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_HEAD';
ALTER TABLE IM_DOC_HEAD 
    ADD CONSTRAINT IDD_IDD_FK FOREIGN KEY 
    ( 
     REF_DOC
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_NON_MERCH';
ALTER TABLE IM_DOC_NON_MERCH 
    ADD CONSTRAINT IDH_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_NON_MERCH_TAX';
ALTER TABLE IM_DOC_NON_MERCH_TAX 
    ADD CONSTRAINT IDN_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_DETAIL_COMMENTS';
ALTER TABLE IM_DOC_DETAIL_COMMENTS 
    ADD CONSTRAINT IDO_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_DETAIL_COMMENTS';
ALTER TABLE IM_DOC_DETAIL_COMMENTS 
    ADD CONSTRAINT IDO_IRE_FK FOREIGN KEY 
    ( 
     REASON_CODE_ID
    ) 
    REFERENCES IM_REASON_CODES 
    ( 
     REASON_CODE_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_DETAIL_COMMENTS';
ALTER TABLE IM_DOC_DETAIL_COMMENTS 
    ADD CONSTRAINT IDO_IRE_FK2 FOREIGN KEY 
    ( 
     DEBIT_REASON_CODE
    ) 
    REFERENCES IM_REASON_CODES 
    ( 
     REASON_CODE_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DETAIL_MATCH_RCPT_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_RCPT_HISTORY 
    ADD CONSTRAINT IDR_IDM_FK FOREIGN KEY 
    ( 
     MATCH_ID
    ) 
    REFERENCES IM_DETAIL_MATCH_HISTORY 
    ( 
     MATCH_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DETAIL_MATCH_INVC_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_INVC_HISTORY 
    ADD CONSTRAINT IEI_IDM_FK FOREIGN KEY 
    ( 
     MATCH_ID
    ) 
    REFERENCES IM_DETAIL_MATCH_HISTORY 
    ( 
     MATCH_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DETAIL_MATCH_INVC_HISTORY';
ALTER TABLE IM_DETAIL_MATCH_INVC_HISTORY 
    ADD CONSTRAINT IEI_IOD_FK FOREIGN KEY 
    ( 
     DOC_ID,
     ITEM
    ) 
    REFERENCES IM_INVOICE_DETAIL 
    ( 
     DOC_ID,
     ITEM
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_FIXED_DEAL_DETAIL_TAX';
ALTER TABLE IM_FIXED_DEAL_DETAIL_TAX 
    ADD CONSTRAINT IFX_IFD_FK FOREIGN KEY 
    ( 
     DOC_ID,
     SEQ_NO
    ) 
    REFERENCES IM_FIXED_DEAL_DETAIL 
    ( 
     DOC_ID,
     SEQ_NO
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_GL_CROSS_REF';
ALTER TABLE IM_GL_CROSS_REF 
    ADD CONSTRAINT IGC_IGO_FK FOREIGN KEY 
    ( 
     SET_OF_BOOKS_ID,
     SEGMENT_NO
    ) 
    REFERENCES IM_GL_OPTIONS 
    ( 
     SET_OF_BOOKS_ID,
     SEGMENT_NO
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_DOC_HEAD_COMMENTS';
ALTER TABLE IM_DOC_HEAD_COMMENTS 
    ADD CONSTRAINT IHC_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_INVOICE_DETAIL_TAX';
ALTER TABLE IM_INVOICE_DETAIL_TAX 
    ADD CONSTRAINT IIDT_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_INVOICE_DETAIL_ALLW_TAX';
ALTER TABLE IM_INVOICE_DETAIL_ALLW_TAX 
    ADD CONSTRAINT IID_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_SUMMARY_MATCH_INVC_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_INVC_HISTORY 
    ADD CONSTRAINT IIR_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_SUMMARY_MATCH_INVC_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_INVC_HISTORY 
    ADD CONSTRAINT IIR_IMS_FK FOREIGN KEY 
    ( 
     MATCH_ID
    ) 
    REFERENCES IM_SUMMARY_MATCH_HISTORY 
    ( 
     MATCH_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_INV_DOCUMENT';
ALTER TABLE IM_INV_DOCUMENT 
    ADD CONSTRAINT IIT_IDD_FK FOREIGN KEY 
    ( 
     INV_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_INV_DOCUMENT';
ALTER TABLE IM_INV_DOCUMENT 
    ADD CONSTRAINT IIT_IDD_FK2 FOREIGN KEY 
    ( 
     REF_DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_MANUAL_GROUP_RECEIPTS';
ALTER TABLE IM_MANUAL_GROUP_RECEIPTS 
    ADD CONSTRAINT IMC_IMG_FK FOREIGN KEY 
    ( 
     GROUP_ID
    ) 
    REFERENCES IM_MANUAL_GROUPS 
    ( 
     GROUP_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_MATCH_DOC';
ALTER TABLE IM_MATCH_DOC 
    ADD CONSTRAINT IMDO_IMP_FK FOREIGN KEY 
    ( 
     CONFIG_ID
    ) 
    REFERENCES IM_MATCH_POOL_CONFIG 
    ( 
     CONFIG_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_MANUAL_GROUP_INVOICES';
ALTER TABLE IM_MANUAL_GROUP_INVOICES 
    ADD CONSTRAINT IMI_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_MANUAL_GROUP_INVOICES';
ALTER TABLE IM_MANUAL_GROUP_INVOICES 
    ADD CONSTRAINT IMI_IMG_FK FOREIGN KEY 
    ( 
     GROUP_ID
    ) 
    REFERENCES IM_MANUAL_GROUPS 
    ( 
     GROUP_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_INVOICE_DETAIL';
ALTER TABLE IM_INVOICE_DETAIL 
    ADD CONSTRAINT IOD_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_CN_DETAIL_MATCH_HIS';
ALTER TABLE IM_CN_DETAIL_MATCH_HIS 
    ADD CONSTRAINT IOH_DRC_FK FOREIGN KEY 
    ( 
     DOC_ID,
     ITEM,
     REASON_CODE_ID
    ) 
    REFERENCES IM_DOC_DETAIL_REASON_CODES 
    ( 
     DOC_ID,
     ITEM,
     REASON_CODE_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_RESOLUTION_ACTION';
ALTER TABLE IM_RESOLUTION_ACTION 
    ADD CONSTRAINT IRA_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_RESOLUTION_ACTION';
ALTER TABLE IM_RESOLUTION_ACTION 
    ADD CONSTRAINT IRA_IRE_FK FOREIGN KEY 
    ( 
     REASON_CODE_ID
    ) 
    REFERENCES IM_REASON_CODES 
    ( 
     REASON_CODE_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_RECEIVER_COST_ADJUST';
ALTER TABLE IM_RECEIVER_COST_ADJUST 
    ADD CONSTRAINT IRC_IRE_FK FOREIGN KEY 
    ( 
     REASON_CODE_ID
    ) 
    REFERENCES IM_REASON_CODES 
    ( 
     REASON_CODE_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_RCPT_ITEM_POSTING_INVOICE';
ALTER TABLE IM_RCPT_ITEM_POSTING_INVOICE 
    ADD CONSTRAINT IRI_IRP_FK FOREIGN KEY 
    ( 
     SEQ_NO
    ) 
    REFERENCES IM_RECEIPT_ITEM_POSTING 
    ( 
     SEQ_NO
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_SUMMARY_MATCH_RCPT_HISTORY';
ALTER TABLE IM_SUMMARY_MATCH_RCPT_HISTORY 
    ADD CONSTRAINT IRR_IMS_FK FOREIGN KEY 
    ( 
     MATCH_ID
    ) 
    REFERENCES IM_SUMMARY_MATCH_HISTORY 
    ( 
     MATCH_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_RECEIVER_UNIT_ADJUST';
ALTER TABLE IM_RECEIVER_UNIT_ADJUST 
    ADD CONSTRAINT IRU_IRE_FK FOREIGN KEY 
    ( 
     REASON_CODE_ID
    ) 
    REFERENCES IM_REASON_CODES 
    ( 
     REASON_CODE_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS
	ADD CONSTRAINT FK_DFLT_COST_UNDERBILL_RC FOREIGN KEY 
	(
	 DFLT_COST_UNDERBILL_RC
	)
	REFERENCES IM_REASON_CODES
	(
	 REASON_CODE_ID
	)
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS
	ADD CONSTRAINT FK_DFLT_QTY_UNDERBILL_RC FOREIGN KEY 
	(
	 DFLT_QTY_UNDERBILL_RC
	)
	REFERENCES IM_REASON_CODES
	(
	 REASON_CODE_ID
	)
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS
	ADD CONSTRAINT FK_DFLT_COST_OVERBILL_RC FOREIGN KEY 
	(
	 DFLT_COST_OVERBILL_RC
	)
	REFERENCES IM_REASON_CODES
	( 
	 REASON_CODE_ID
	)
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS
	ADD CONSTRAINT FK_DFLT_QTY_OVERBILL_RC FOREIGN KEY 
	(
	 DFLT_QTY_OVERBILL_RC
	)
	REFERENCES IM_REASON_CODES
	(
	 REASON_CODE_ID
	)
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_TAX_DISCREPANCY_HISTORY';
ALTER TABLE IM_TAX_DISCREPANCY_HISTORY 
    ADD CONSTRAINT ITDH_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_TAX_DISCREPANCY';
ALTER TABLE IM_TAX_DISCREPANCY 
    ADD CONSTRAINT ITDY_IDD_FK FOREIGN KEY 
    ( 
     DOC_ID
    ) 
    REFERENCES IM_DOC_HEAD 
    ( 
     DOC_ID
    ) 
    NOT DEFERRABLE 
;



PROMPT CREATING FOREIGN KEY ON 'IM_COMPLEX_DEAL_DETAIL_TAX';
ALTER TABLE IM_COMPLEX_DEAL_DETAIL_TAX 
    ADD CONSTRAINT IXT_IMD_FK FOREIGN KEY 
    ( 
     DOC_ID,
     SEQ_NO
    ) 
    REFERENCES IM_COMPLEX_DEAL_DETAIL 
    ( 
     DOC_ID,
     SEQ_NO
    ) 
    NOT DEFERRABLE 
;


PROMPT CREATING FK ON 'IM_MATCH_STGY_DETAIL';
ALTER TABLE IM_MATCH_STGY_DETAIL
    ADD CONSTRAINT FK_IMSD_IMSH FOREIGN KEY 
	(
	 MATCH_STGY_ID
	)
    REFERENCES IM_MATCH_STGY_HEAD 
	(
	 MATCH_STGY_ID
	)
	ON DELETE CASCADE
    NOT DEFERRABLE 
;

	
PROMPT CREATING FK ON 'IM_SEC_GRP_REASON_CODE';
ALTER TABLE IM_SEC_GRP_REASON_CODE
    ADD CONSTRAINT ICMG_IRC_FK FOREIGN KEY 
    (
	 REASON_CODE_ID
	)
    REFERENCES IM_REASON_CODES 
    (
	 REASON_CODE_ID
	)
    NOT DEFERRABLE
;


PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT ISO_DEPS_FK FOREIGN KEY 
	(
	 DFLT_DEPT
	)
	REFERENCES DEPS
	(
     DEPT
	)
	NOT DEFERRABLE
;


PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT ISO_SOB_FK FOREIGN KEY 
	(
	 DFLT_SOB
	 )
	REFERENCES FIF_GL_SETUP
	(
	 SET_OF_BOOKS_ID
	)
	NOT DEFERRABLE
;


PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT ISO_RTV_TERMS_FK FOREIGN KEY 
	(
	 DFLT_PAY_NOW_TERMS_RTV
	)
	REFERENCES TERMS_HEAD
	(
	 TERMS
	)
	NOT DEFERRABLE
;


PROMPT CREATING FOREIGN KEY ON 'IM_SYSTEM_OPTIONS';
ALTER TABLE IM_SYSTEM_OPTIONS 
	ADD CONSTRAINT ISO_DEAL_TERMS_FK FOREIGN KEY 
	(
	 DFLT_PAY_NOW_TERMS_DEALS
	)
	REFERENCES TERMS_HEAD
	(
	 TERMS
	)
	NOT DEFERRABLE
;


PROMPT CREATING FOREIGN KEY ON 'IM_SUPPLIER_OPTIONS';
ALTER TABLE IM_SUPPLIER_OPTIONS
	ADD CONSTRAINT ISO_IMSH_FK FOREIGN KEY 
	(
	 MATCH_STGY_ID
	)
	REFERENCES IM_MATCH_STGY_HEAD
	(
	 MATCH_STGY_ID
	)
	NOT DEFERRABLE
;



PROMPT CREATING FOREIGN KEY ON 'IM_SUPPLIER_GROUPS';
ALTER TABLE IM_SUPPLIER_GROUPS
	ADD CONSTRAINT ISG_IMSH_FK FOREIGN KEY 
	(
	 MATCH_STGY_ID
	)
	REFERENCES IM_MATCH_STGY_HEAD
	(
	 MATCH_STGY_ID
	)
	NOT DEFERRABLE
;



PROMPT CREATING FOREIGN KEY ON 'IM_TOLERANCE_LEVEL_MAP';
ALTER TABLE IM_TOLERANCE_LEVEL_MAP
    ADD CONSTRAINT ITLM_ITH_FK FOREIGN KEY 
	(
	 TOLERANCE_ID
	)
    REFERENCES IM_TOLERANCE_HEAD
	(
	 TOLERANCE_ID
	)
	ON DELETE CASCADE
    NOT DEFERRABLE
;



PROMPT CREATING FOREIGN KEY ON 'IM_TOLERANCE_DETAIL'
ALTER TABLE IM_TOLERANCE_DETAIL
	ADD CONSTRAINT ITD_ITH_FK FOREIGN KEY
	(
	 TOLERANCE_ID
	)
	REFERENCES IM_TOLERANCE_HEAD
	(
	 TOLERANCE_ID
	)
	ON DELETE CASCADE
	NOT DEFERRABLE
;


PROMPT CREATING FOREIGN KEY ON 'IM_AUTO_MATCH_TASK_STATUS';
ALTER TABLE IM_AUTO_MATCH_TASK_STATUS
	ADD CONSTRAINT IAMTS_IAMS_FK FOREIGN KEY 
	(
	 WORKSPACE_ID
	)
	REFERENCES IM_AUTO_MATCH_STATUS 
	(
	 WORKSPACE_ID
	)
	ON DELETE CASCADE
	NOT DEFERRABLE
;




PROMPT CREATING VIEW V_IM_FINANCIALS_STAGE;
CREATE OR REPLACE FORCE VIEW V_IM_FINANCIALS_STAGE AS 
SELECT IM.SEQ_NO,
       IM.TRAN_CODE,
       IM.DEBIT_CREDIT_IND,
       IM.DOC_ID,
       IM.PARENT_ID,
       NVL(IM.DOC_DATE,SYSDATE) DOC_DATE,
       IM.RECEIPT_ID,
       IM.RECEIPT_DATE,
       IM.VENDOR_TYPE,
       IM.VENDOR,
       IM.ORDER_NO,
       IM.CURRENCY_CODE,
       IM.AMOUNT,
       IM.VAT_CODE,
       IM.VAT_RATE,
       IM.BEST_TERMS,
       IM.BEST_TERMS_DATE,
       IM.MANUALLY_PAID_IND,
       IM.PRE_PAID_IND,
       IM.CREATE_ID,
       IM.CREATE_DATETIME ,
       IM.SEGMENT_1,
       IM.SEGMENT_2,
       IM.SEGMENT_3,
       IM.SEGMENT_4,
       IM.SEGMENT_5,
       IM.SEGMENT_6,
       IM.SEGMENT_7,
       IM.SEGMENT_8,
       IM.SEGMENT_9,
       IM.SEGMENT_10,
       IM.DEAL_ID,
       IM.LOCAL_CURRENCY,
       IM.INCOME_LOCAL_CURRENCY,
       IM.EXT_DOC_ID,
       FIF.SET_OF_BOOKS_ID,
       'Retail Invoices' USER_JE_SOURCE_NAME,
       DECODE(NVL(IM.PRE_PAID_IND, 'N'),
              'Y', 'Prepayments',
              DECODE(NVL(IM.MANUALLY_PAID_IND, 'N'),
                     'Y','Manual Payments',
                     'Writeoffs')) USER_JE_CATEGORY_NAME,
       DECODE(DEBIT_CREDIT_IND,
              'DEBIT', AMOUNT,
              NULL) ENTERED_DR ,
       DECODE(DEBIT_CREDIT_IND,
              'CREDIT', AMOUNT,
              NULL) ENTERED_CR,
       'A' ACTUAL_FLAG,
       'NEW' STATUS,
       IM.EXCHANGE_RATE,
       IM.EXCHANGE_RATE_TYPE
  FROM IM_FINANCIALS_STAGE IM,
       FIF_GL_SETUP FIF
 WHERE IM.SET_OF_BOOKS_ID = FIF.SET_OF_BOOKS_ID ;





PROMPT CREATING VIEW 'V_IM_ITEM_SUPP_COUNTRY_LOC';
CREATE OR REPLACE FORCE VIEW V_IM_ITEM_SUPP_COUNTRY_LOC ( UNIT_COST, ITEM, SUPPLIER, ORIGIN_COUNTRY_ID, LOC ) AS
SELECT iscl.unit_cost / NVL (pi.pack_qty, 1) AS unit_cost, iscl.item,
          iscl.supplier, iscl.origin_country_id, iscl.loc
     FROM item_supp_country_loc iscl, item_master im, packitem pi
    WHERE im.item = iscl.item
      AND iscl.item = pi.pack_no
      AND im.catch_weight_type = '2'
   UNION ALL
   SELECT (iscl.unit_cost / NVL (iscd.net_weight, 1) * isc.supp_pack_size
          ) unit_cost,
          iscl.item, iscl.supplier, iscl.origin_country_id, iscl.loc
     FROM item_supp_country_loc iscl,
          item_supp_country_dim iscd,
          item_supp_country isc,
          item_master im
    WHERE im.item = iscl.item
      AND iscl.item = iscd.item
      AND iscl.supplier = iscd.supplier
      AND iscl.origin_country_id = iscd.origin_country
      AND iscd.dim_object = 'CA'
      AND iscl.item = isc.item
      AND iscl.supplier = isc.supplier
      AND iscl.origin_country_id = isc.origin_country_id
      AND im.catch_weight_type = '4'
   UNION ALL
   SELECT iscl.unit_cost, iscl.item, iscl.supplier, iscl.origin_country_id,
          iscl.loc
     FROM item_supp_country_loc iscl,
          item_master im,
          item_supp_country isc,
          sups s
    WHERE im.item = iscl.item
      AND (   im.catch_weight_type = '3'
           OR im.catch_weight_type = '1'
           OR im.catch_weight_type IS NULL
          )
      AND iscl.item = isc.item
      AND iscl.supplier = isc.supplier
      AND iscl.origin_country_id = isc.origin_country_id
      AND isc.supplier = s.supplier
      AND s.sup_qty_level <> 'CA'
   UNION ALL
   SELECT ((iscl.unit_cost) * isc.supp_pack_size) unit_cost, iscl.item,
          iscl.supplier, iscl.origin_country_id, iscl.loc
     FROM item_supp_country_loc iscl,
          item_master im,
          item_supp_country isc,
          sups s
    WHERE im.item = iscl.item
      AND (   im.catch_weight_type = '3'
           OR im.catch_weight_type = '1'
           OR im.catch_weight_type IS NULL
          )
      AND iscl.item = isc.item
      AND iscl.supplier = isc.supplier
      AND iscl.origin_country_id = isc.origin_country_id
      AND isc.supplier = s.supplier
      AND s.sup_qty_level = 'CA' ;





PROMPT CREATING VIEW 'V_IM_ORDLOC';
CREATE OR REPLACE FORCE VIEW V_IM_ORDLOC ( ORDER_NO, ITEM, LOCATION, LOC_TYPE, QTY_ORDERED, UNIT_COST, UNIT_COST_INIT, COST_SOURCE ) AS
SELECT DISTINCT OH.ORDER_NO ORDER_NO, ORDLOC.ITEM ITEM,
              CASE
                 WHEN OH.IMPORT_ID IS NOT NULL AND IMPORT_TYPE IS NOT NULL
                    THEN OH.IMPORT_ID
                 ELSE ORDLOC.LOCATION
              END LOCATION,
              CASE
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM STORE ST
							   WHERE ST.STORE = OH.IMPORT_ID)
				    THEN 'S'
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM WH WH
							   WHERE WH.WH = OH.IMPORT_ID)
					THEN 'W'
                 ELSE ORDLOC.LOC_TYPE
              END LOC_TYPE,
              CASE
                 WHEN ORDLOC.ITEM = PI.PACK_NO
                    THEN (ORDLOC.QTY_ORDERED * PI.PACK_QTY)
                 ELSE ORDLOC.QTY_ORDERED
              END QTY_ORDERED,
              CASE
                 WHEN ORDLOC.ITEM = PI.PACK_NO
                    THEN (ORDLOC.UNIT_COST / NVL (PI.PACK_QTY, 1))
                 ELSE ORDLOC.UNIT_COST
              END UNIT_COST,
              CASE
                 WHEN ORDLOC.ITEM = PI.PACK_NO
                    THEN (ORDLOC.UNIT_COST_INIT / NVL (PI.PACK_QTY, 1))
                 ELSE ORDLOC.UNIT_COST_INIT
              END UNIT_COST_INIT,
              ORDLOC.COST_SOURCE COST_SOURCE
         FROM ORDLOC, ITEM_MASTER IM, PACKITEM PI, ORDHEAD OH
  WHERE IM.ITEM = ORDLOC.ITEM
          AND ORDLOC.ITEM = PI.PACK_NO(+)
          AND OH.ORDER_NO = ORDLOC.ORDER_NO
          AND IM.CATCH_WEIGHT_TYPE = '2'
UNION ALL
SELECT OH.ORDER_NO ORDER_NO, ORDLOC.ITEM ITEM,
              CASE
                 WHEN OH.IMPORT_ID IS NOT NULL AND IMPORT_TYPE IS NOT NULL
                    THEN OH.IMPORT_ID
                 ELSE ORDLOC.LOCATION
              END LOCATION,
              CASE
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM STORE ST
							   WHERE ST.STORE = OH.IMPORT_ID)
				    THEN 'S'
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM WH WH
							   WHERE WH.WH = OH.IMPORT_ID)
					THEN 'W'
                 ELSE ORDLOC.LOC_TYPE
              END LOC_TYPE,
	      (ORDLOC.QTY_ORDERED * ISCD.NET_WEIGHT / NVL (ISC.SUPP_PACK_SIZE, 1)
       ) QTY_ORDERED,
       (ORDLOC.UNIT_COST / NVL (ISCD.NET_WEIGHT, 1) * ISC.SUPP_PACK_SIZE
       ) UNIT_COST,
       (ORDLOC.UNIT_COST_INIT / NVL (ISCD.NET_WEIGHT, 1) * ISC.SUPP_PACK_SIZE
       ) UNIT_COST_INIT,
       ORDLOC.COST_SOURCE COST_SOURCE
  FROM ORDLOC,
       ITEM_SUPP_COUNTRY_DIM ISCD,
       ITEM_SUPP_COUNTRY ISC,
       ORDHEAD OH,
       ORDSKU OS,
       ITEM_MASTER IM
 WHERE IM.ITEM = ORDLOC.ITEM
   AND IM.ITEM = ISCD.ITEM
   AND IM.ITEM = ISC.ITEM
   AND ORDLOC.ORDER_NO = OH.ORDER_NO
   AND OH.SUPPLIER = ISC.SUPPLIER
   AND OS.ITEM = ISC.ITEM
   AND OS.ORIGIN_COUNTRY_ID = ISC.ORIGIN_COUNTRY_ID
   AND OS.ORDER_NO = OH.ORDER_NO
   AND ISCD.SUPPLIER = OH.SUPPLIER
   AND ISCD.ORIGIN_COUNTRY = OS.ORIGIN_COUNTRY_ID
   AND ISCD.DIM_OBJECT = 'CA'
   AND IM.CATCH_WEIGHT_TYPE = '4'
UNION ALL
SELECT OH.ORDER_NO ORDER_NO, OL.ITEM ITEM,
              CASE
                 WHEN OH.IMPORT_ID IS NOT NULL AND IMPORT_TYPE IS NOT NULL
                    THEN OH.IMPORT_ID
                 ELSE OL.LOCATION
              END LOCATION,
              CASE
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM STORE ST
							   WHERE ST.STORE = OH.IMPORT_ID)
				    THEN 'S'
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM WH WH
							   WHERE WH.WH = OH.IMPORT_ID)
					THEN 'W'
                 ELSE OL.LOC_TYPE
              END LOC_TYPE,
       (OL.QTY_ORDERED) QTY_ORDERED, (OL.UNIT_COST) UNIT_COST,
       (OL.UNIT_COST_INIT) UNIT_COST_INIT, OL.COST_SOURCE COST_SOURCE
  FROM ORDLOC OL, ITEM_MASTER IM, ORDHEAD OH, SUPS S
 WHERE IM.ITEM = OL.ITEM
   AND (   IM.CATCH_WEIGHT_TYPE = '3'
        OR IM.CATCH_WEIGHT_TYPE = '1'
        OR IM.CATCH_WEIGHT_TYPE IS NULL
       )
   AND OL.ORDER_NO = OH.ORDER_NO
   AND OH.SUPPLIER = S.SUPPLIER
   AND S.SUP_QTY_LEVEL <> 'CA'
UNION ALL
SELECT OH.ORDER_NO ORDER_NO, OL.ITEM ITEM,
                     CASE
                 WHEN OH.IMPORT_ID IS NOT NULL AND IMPORT_TYPE IS NOT NULL
                    THEN OH.IMPORT_ID
                 ELSE OL.LOCATION
              END LOCATION,
              CASE
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM STORE ST
							   WHERE ST.STORE = OH.IMPORT_ID)
				    THEN 'S'
                 WHEN OH.IMPORT_ID IS NOT NULL
                  AND OH.IMPORT_TYPE IS NOT NULL
				  AND EXISTS (SELECT 'X'
				                FROM WH WH
							   WHERE WH.WH = OH.IMPORT_ID)
					THEN 'W'
                 ELSE OL.LOC_TYPE
              END LOC_TYPE,
       (OL.QTY_ORDERED) / OS.SUPP_PACK_SIZE QTY_ORDERED,
       (OL.UNIT_COST) * OS.SUPP_PACK_SIZE UNIT_COST,
       (OL.UNIT_COST_INIT) * OS.SUPP_PACK_SIZE UNIT_COST_INIT,
	    OL.COST_SOURCE COST_SOURCE
  FROM ORDLOC OL, ITEM_MASTER IM, ORDHEAD OH, ORDSKU OS, SUPS S
 WHERE IM.ITEM = OL.ITEM
   AND (   IM.CATCH_WEIGHT_TYPE = '3'
        OR IM.CATCH_WEIGHT_TYPE = '1'
        OR IM.CATCH_WEIGHT_TYPE IS NULL
       )
   AND OL.ORDER_NO = OH.ORDER_NO
   AND OH.ORDER_NO = OS.ORDER_NO
   AND OL.ITEM = OS.ITEM
   AND OH.SUPPLIER = S.SUPPLIER
   AND SUP_QTY_LEVEL = 'CA' ;





PROMPT CREATING VIEW 'V_IM_ORDLOC_STORES_PHYS_WH';
CREATE OR REPLACE FORCE VIEW V_IM_ORDLOC_STORES_PHYS_WH ( ORDER_NO, LOCATION, LOC_TYPE, ITEM, TOTAL_QTY_ORDERED, UNIT_COST, COUNTER ) AS
SELECT ol.order_no          ORDER_NO,
        physical_wh          LOCATION,
        'W'                  LOC_TYPE,
        ol.item              ITEM,
        SUM(ol.qty_ordered)  TOTAL_QTY_ORDERED,
        ol.unit_cost         UNIT_COST,
        COUNT(ol.location)  COUNTER
   FROM V_IM_ordloc ol,
        wh     w
  WHERE ol.location = w.wh
   GROUP BY order_no,
            physical_wh,
            item,
            unit_cost
UNION
 SELECT ol.order_no          ORDER_NO,
        STORE                LOCATION,
        'S'                  LOC_TYPE,
        ol.item              ITEM,
        ol.qty_ordered       TOTAL_QTY_ORDERED,
        ol.unit_cost         UNIT_COST,
        COUNT(ol.location)  COUNTER
  FROM V_im_ordloc ol,
       STORE s
  WHERE ol.location = s.STORE
   GROUP BY order_no,
            STORE,
            item,
            qty_ordered,
            unit_cost ;





PROMPT CREATING VIEW 'V_IM_SHIPSKU';
CREATE OR REPLACE FORCE VIEW V_IM_SHIPSKU ( SHIPMENT, SEQ_NO, ITEM, STATUS_CODE, QTY_RECEIVED, UNIT_COST, QTY_MATCHED, WEIGHT_RECEIVED_UOM, CARTON, INVC_MATCH_STATUS ) AS
SELECT ss.shipment SHIPMENT, ss.seq_no SEQ_NO, ss.item ITEM, ss.status_code STATUS_CODE,
       ss.weight_received qty_received,
       (ss.unit_cost / NVL (pi.pack_qty, 1)) unit_cost, 
	   CASE
        WHEN  ss.qty_matched = ss.qty_received
                      then ss.weight_received 
                      ELSE  (ss.weight_received/ss.qty_received) * ss.qty_matched END as qty_matched,
       ss.weight_received_uom WEIGHT_RECEIVED_UOM, ss.carton carton,
       CASE
                  WHEN NVL(ss.qty_matched,0) = 0 THEN 'U'
          WHEN ss.qty_matched = ss.qty_received then 'M'
          ELSE 'P'
          END as invc_match_status
  FROM shipsku ss,
       item_supp_country isc,
       shipment s,
       ordhead oh,
       ordsku os,
       packitem pi,
       item_master im
  WHERE im.item = ss.item
   AND ss.item = pi.pack_no
   AND im.catch_weight_type = '2'
   AND isc.item = ss.item
   AND s.shipment = ss.shipment
   AND s.order_no = oh.order_no
   AND oh.supplier = isc.supplier
   AND oh.order_no = os.order_no
   AND os.item = ss.item
   AND os.origin_country_id = isc.origin_country_id
   AND (ss.weight_received_uom IS NULL
        OR ss.weight_received_uom = isc.cost_uom
       )
UNION ALL
SELECT ss.shipment, ss.seq_no, ss.item, ss.status_code,
       CASE
          WHEN CONVERT.OPERATOR = 'M'
             THEN NVL (ss.weight_received, 0)
                  * CONVERT.factor
          ELSE NVL (ss.weight_received, 0) / CONVERT.factor
       END AS qty_received,
       (ss.unit_cost / NVL (pi.pack_qty, 1)) unit_cost,
	   CASE
        WHEN  ss.qty_matched = ss.qty_received
                      then ss.weight_received 
                      ELSE  (ss.weight_received/ss.qty_received) * ss.qty_matched END as qty_matched,
        ss.weight_received_uom, ss.carton,
       CASE
                  WHEN NVL(ss.qty_matched,0) = 0 THEN 'U'
          WHEN ss.qty_matched = ss.qty_received then 'M'
          ELSE 'P'
          END as invc_match_status
  FROM shipsku ss,
       item_supp_country isc,
       shipment s,
       ordhead oh,
       ordsku os,
       uom_conversion CONVERT,
       packitem pi,
       item_master im
WHERE im.item = ss.item
   AND ss.item = pi.pack_no
   AND im.catch_weight_type = '2'
   AND isc.item = ss.item
   AND s.shipment = ss.shipment
   AND s.order_no = oh.order_no
   AND oh.supplier = isc.supplier
   AND oh.order_no = os.order_no
   AND os.item = ss.item
   AND os.origin_country_id = isc.origin_country_id
   AND ss.weight_received_uom IS NOT NULL
   AND ss.weight_received_uom != isc.cost_uom
   AND CONVERT.from_uom = ss.weight_received_uom
   AND CONVERT.to_uom = isc.cost_uom
UNION ALL
SELECT ss.shipment, ss.seq_no, ss.item, ss.status_code,
       ss.weight_received AS qty_received,
       (ss.unit_cost / NVL (iscd.net_weight, 1) * isc.supp_pack_size
       ) AS unit_cost,
       ss.qty_matched, ss.weight_received_uom, ss.carton,
       CASE
                  WHEN NVL(ss.qty_matched,0) = 0 THEN 'U'
                 WHEN ss.qty_matched = ss.qty_received then 'M'
                 ELSE 'P'
          END as invc_match_status
  FROM shipment s,
       shipsku ss,
       item_supp_country_dim iscd,
       item_supp_country isc,
       ordhead oh,
       ordsku os,
       item_master im
WHERE im.item = ss.item
   AND im.catch_weight_type = '4'
   AND ss.item = iscd.item
   AND ss.item = isc.item
   AND s.shipment = ss.shipment
   AND s.order_no = oh.order_no
   AND oh.supplier = isc.supplier
   AND os.item = isc.item
   AND os.origin_country_id = isc.origin_country_id
   AND os.order_no = oh.order_no
   AND iscd.supplier = oh.supplier
   AND iscd.origin_country = os.origin_country_id
   AND iscd.dim_object = 'CA'
   AND (ss.weight_received_uom IS NULL
        OR ss.weight_received_uom = isc.cost_uom
       )
UNION ALL
SELECT ss.shipment, ss.seq_no, ss.item, ss.status_code,
       CASE
          WHEN CONVERT.OPERATOR = 'M'
             THEN NVL (ss.weight_received, 0)
                  * CONVERT.factor
          ELSE NVL (ss.weight_received, 0) / CONVERT.factor
       END AS qty_received,
       (ss.unit_cost / NVL (iscd.net_weight, 1) * isc.supp_pack_size
       ) AS unit_cost,
       ss.qty_matched, ss.weight_received_uom, ss.carton,
       CASE
                 WHEN NVL(ss.qty_matched,0) = 0 THEN 'U'
                 WHEN ss.qty_matched = ss.qty_received then 'M'
                 ELSE 'P'
          END as invc_match_status
  FROM shipment s,
       shipsku ss,
       item_supp_country_dim iscd,
       item_supp_country isc,
       ordhead oh,
       ordsku os,
       uom_conversion CONVERT,
       item_master im
WHERE im.item = ss.item
   AND im.item = iscd.item
   AND im.item = isc.item
   AND s.order_no = oh.order_no
   AND oh.supplier = isc.supplier
   AND os.item = isc.item
   AND os.origin_country_id = isc.origin_country_id
   AND os.order_no = oh.order_no
   AND iscd.supplier = oh.supplier
   AND iscd.origin_country = os.origin_country_id
   AND iscd.dim_object = 'CA'
   AND CONVERT.from_uom = ss.weight_received_uom
   AND im.catch_weight_type = '4'
   AND ss.weight_received_uom IS NOT NULL
   AND ss.weight_received_uom != isc.cost_uom
   AND CONVERT.from_uom = ss.weight_received_uom
   AND CONVERT.to_uom = isc.cost_uom
UNION ALL
SELECT ss.shipment, ss.seq_no, ss.item, ss.status_code, ss.qty_received,
       (ss.unit_cost) unit_cost, ss.qty_matched, ss.weight_received_uom,
       ss.carton,
       CASE
          WHEN NVL(ss.qty_matched,0) = 0 THEN 'U'
          WHEN ss.qty_matched = ss.qty_received then 'M'
          ELSE 'P'
          END as invc_match_status
  FROM shipsku ss, item_master im, shipment s, ordhead oh, sups
WHERE im.item = ss.item
   AND (   im.catch_weight_type = '3'
        OR im.catch_weight_type = '1'
        OR im.catch_weight_type IS NULL
       )
   AND ss.shipment = s.shipment
   AND s.order_no = oh.order_no
   AND oh.supplier = sups.supplier
   AND sups.sup_qty_level <> 'CA'
UNION ALL
SELECT ss.shipment, ss.seq_no, ss.item, ss.status_code,
       ((ss.qty_received) / os.supp_pack_size) qty_received,
       ((ss.unit_cost) * os.supp_pack_size) unit_cost,
       ((ss.qty_matched) / os.supp_pack_size) qty_matched,
       ss.weight_received_uom, ss.carton,
       CASE
          WHEN NVL(ss.qty_matched,0) = 0 THEN 'U'
          WHEN ss.qty_matched = ss.qty_received then 'M'
          ELSE 'P'
          END as invc_match_status
  FROM shipsku ss, item_master im, shipment s, ordhead oh, ordsku os, sups
WHERE im.item = ss.item
   AND (   im.catch_weight_type = '3'
        OR im.catch_weight_type = '1'
        OR im.catch_weight_type IS NULL
       )
   AND ss.shipment = s.shipment
   AND s.order_no = oh.order_no
   AND oh.order_no = os.order_no
   AND os.item = ss.item
   AND oh.supplier = sups.supplier
   AND sups.sup_qty_level = 'CA' ;





PROMPT CREATING VIEW 'V_IM_STAGE_PURGED_SHIPSKUS';
CREATE OR REPLACE FORCE VIEW V_IM_STAGE_PURGED_SHIPSKUS ( SHIPMENT, SEQ_NO, ITEM, QTY_RECEIVED, WEIGHT_RECEIVED_UOM, UNIT_COST ) AS
SELECT UNIQUE sps.shipment, sps.seq_no, sps.item,
              CASE
                 WHEN sps.weight_received_uom IS NULL
                    THEN NVL (sps.weight_received, 0)
                 WHEN sps.weight_received_uom = isc.cost_uom
                    THEN NVL (sps.weight_received, 0)
                 WHEN CONVERT.OPERATOR = 'M'
                    THEN   NVL (sps.weight_received, 0)
                         * CONVERT.factor
                 ELSE NVL (sps.weight_received, 0) / CONVERT.factor
              END AS qty_received,
              sps.weight_received_uom weight_received_uom,
              (sps.unit_cost / pi.pack_qty) unit_cost
         FROM stage_purged_shipskus sps,
              packitem pi,
              item_master im,
              item_supp_country isc,
              stage_purged_shipments s,
              ordhead oh,
              ordsku os,
              uom_conversion CONVERT
        WHERE im.item = sps.item
          AND sps.item = pi.pack_no
          AND im.catch_weight_type = '2'
          AND CONVERT.from_uom = sps.weight_received_uom
          AND isc.item = sps.item
          AND s.shipment = sps.shipment
          AND s.order_no = oh.order_no
          AND oh.supplier = isc.supplier
          AND oh.order_no = os.order_no
          AND os.item = sps.item
          AND os.origin_country_id = isc.origin_country_id
UNION ALL
SELECT UNIQUE sps.shipment, sps.seq_no, sps.item,
              CASE
                 WHEN sps.weight_received_uom IS NULL
                    THEN NVL (sps.weight_received, 0)
                 WHEN sps.weight_received_uom = isc.cost_uom
                    THEN NVL (sps.weight_received, 0)
                 WHEN CONVERT.OPERATOR = 'M'
                    THEN   NVL (sps.weight_received, 0)
                         * CONVERT.factor
                 ELSE NVL (sps.weight_received, 0) / CONVERT.factor
              END AS qty_received,
              sps.weight_received_uom weight_received_uom,
              (sps.unit_cost / iscd.net_weight * isc.supp_pack_size
              ) unit_cost
         FROM stage_purged_shipskus sps,
              item_supp_country_dim iscd,
              item_supp_country isc,
              ordhead oh,
              ordsku os,
              stage_purged_shipments sh,
              uom_conversion CONVERT,
              item_master im
        WHERE im.item = sps.item
          AND im.item = iscd.item
          AND im.item = isc.item
          AND sh.order_no = oh.order_no
          AND oh.supplier = isc.supplier
          AND os.item = isc.item
          AND os.origin_country_id = isc.origin_country_id
          AND os.order_no = oh.order_no
          AND iscd.supplier = oh.supplier
          AND iscd.origin_country = os.origin_country_id
          AND iscd.dim_object = 'CA'
          AND im.catch_weight_type = '4'
          AND CONVERT.from_uom = sps.weight_received_uom
UNION ALL
SELECT sps.shipment, sps.seq_no, sps.item, (sps.qty_received) qty_received,
       sps.weight_received_uom weight_received_uom, (sps.unit_cost
                                                    ) unit_cost
  FROM stage_purged_shipskus sps,
       item_master im,
       stage_purged_shipments sp,
       ordhead oh,
       ordsku os,
       sups s
 WHERE im.item = sps.item
   AND (   im.catch_weight_type = '3'
        OR im.catch_weight_type = '1'
        OR im.catch_weight_type IS NULL
       )
   AND sps.shipment = sp.shipment
   AND sp.order_no = oh.order_no
   AND oh.order_no = os.order_no
   AND os.item = sps.item
   AND oh.supplier = s.supplier
   AND s.sup_qty_level <> 'CA'
UNION ALL
SELECT sps.shipment, sps.seq_no, sps.item,
       ((NVL (sps.qty_received, 0)) / os.supp_pack_size) qty_received,
       sps.weight_received_uom weight_received_uom,
       ((sps.unit_cost) * os.supp_pack_size) unit_cost
  FROM stage_purged_shipskus sps,
       item_master im,
       stage_purged_shipments sp,
       ordhead oh,
       ordsku os,
       sups s
 WHERE im.item = sps.item
   AND (   im.catch_weight_type = '3'
        OR im.catch_weight_type = '1'
        OR im.catch_weight_type IS NULL
       )
   AND sps.shipment = sp.shipment
   AND sp.order_no = oh.order_no
   AND oh.order_no = os.order_no
   AND os.item = sps.item
   AND oh.supplier = s.supplier
   AND s.sup_qty_level = 'CA' ;



   
 
PROMPT CREATING VIEW V_IM_SUPP_SITE_ATTRIB_EXPL;
CREATE OR REPLACE FORCE VIEW V_IM_SUPP_SITE_ATTRIB_EXPL ( SUPPLIER, AP_REVIEWER, MATCH_KEY, MATCH_TOTAL_QTY_IND, TOTAL_QTY_REQUIRED_IND, MATCH_STGY_ID, SKU_COMP_PERCENT,  QTY_DISC_DAY_BEFORE_RTE, DATA_SOURCE, GROUP_ID, GROUP_DESC, SEND_DEBIT_MEMO, MANUALLY_PAID_IND, USE_INVOICE_TERMS_IND, ROG_DATE_ALLOWED_IND, CLOSE_OPEN_SHIPMENT_DAYS,  HOLD_INVOICES ) AS
SELECT NVL(SUPP_GRP.SUPPLIER, SUPP_OPTIONS.SUPPLIER) SUPPLIER,
       NVL(SUPP_GRP.AP_REVIEWER, SUPP_OPTIONS.AP_REVIEWER) AP_REVIEWER,
       NVL(SUPP_GRP.MATCH_KEY, SUPP_OPTIONS.MATCH_KEY) MATCH_KEY,
       NVL(SUPP_GRP.MATCH_TOTAL_QTY_IND, SUPP_OPTIONS.MATCH_TOTAL_QTY_IND) MATCH_TOTAL_QTY_IND,
       NVL(SUPP_GRP.TOTAL_QTY_REQUIRED_IND, SUPP_OPTIONS.TOTAL_QTY_REQUIRED_IND) TOTAL_QTY_REQUIRED_IND,
       NVL(SUPP_GRP.MATCH_STGY_ID, SUPP_OPTIONS.MATCH_STGY_ID) MATCH_STGY_ID,
       NVL(SUPP_GRP.SKU_COMP_PERCENT, SUPP_OPTIONS.SKU_COMP_PERCENT) SKU_COMP_PERCENT,
       NVL(SUPP_GRP.QTY_DISC_DAY_BEFORE_RTE, SUPP_OPTIONS.QTY_DISC_DAY_BEFORE_RTE) QTY_DISC_DAY_BEFORE_RTE,
       NVL(SUPP_GRP.DATA_SOURCE, SUPP_OPTIONS.DATA_SOURCE) DATA_SOURCE,
       NVL(SUPP_GRP.GROUP_ID, SUPP_OPTIONS.GROUP_ID) GROUP_ID,
       NVL(SUPP_GRP.GROUP_DESC, SUPP_OPTIONS.GROUP_DESC) GROUP_DESC,
       NVL(SUPP_GRP.SEND_DEBIT_MEMO, SUPP_OPTIONS.SEND_DEBIT_MEMO) SEND_DEBIT_MEMO,
       NVL(SUPP_GRP.MANUALLY_PAID_IND, SUPP_OPTIONS.MANUALLY_PAID_IND) MANUALLY_PAID_IND,
       NVL(SUPP_GRP.USE_INVOICE_TERMS_IND, SUPP_OPTIONS.USE_INVOICE_TERMS_IND) USE_INVOICE_TERMS_IND,
       NVL(SUPP_GRP.ROG_DATE_ALLOWED_IND, SUPP_OPTIONS.ROG_DATE_ALLOWED_IND) ROG_DATE_ALLOWED_IND,
       NVL(SUPP_GRP.CLOSE_OPEN_SHIPMENT_DAYS, SUPP_OPTIONS.CLOSE_OPEN_SHIPMENT_DAYS) CLOSE_OPEN_SHIPMENT_DAYS,
       NVL(SUPP_GRP.HOLD_INVOICES, SUPP_OPTIONS.HOLD_INVOICES) HOLD_INVOICES
  FROM (--SUPPLIER SITES ON SUPPLIER GROUPS
        SELECT SUPS.SUPPLIER,
               ISG.AP_REVIEWER,
               ISG.MATCH_KEY,
               ISG.MATCH_TOTAL_QTY_IND,
               ISG.TOTAL_QTY_REQUIRED_IND,
               ISG.MATCH_STGY_ID,
               ISG.SKU_COMP_PERCENT,
               ISG.QTY_DISC_DAY_BEFORE_RTE,
               'IM_SUPPLIER_GROUPS' DATA_SOURCE,
               ISG.GROUP_ID,
               ISG.GROUP_DESC,
               NULL SEND_DEBIT_MEMO,
               NULL MANUALLY_PAID_IND,
               NULL USE_INVOICE_TERMS_IND,
               NULL ROG_DATE_ALLOWED_IND,
               NULL CLOSE_OPEN_SHIPMENT_DAYS,
               NULL HOLD_INVOICES
          FROM IM_SUPPLIER_GROUP_MEMBERS ISGM,
               IM_SUPPLIER_GROUPS ISG,
               SUPS
         WHERE ISGM.GROUP_ID = ISG.GROUP_ID
           AND ISGM.SUPPLIER = SUPS.SUPPLIER_PARENT) SUPP_GRP,
        (--SUPPLIER SITES ON SUPPLIER OPTIONS
        SELECT NVL(SUPP_SITE.SUPPLIER, SUPP_PAR.SUPPLIER) SUPPLIER,
               NVL(SUPP_SITE.AP_REVIEWER, SUPP_PAR.AP_REVIEWER) AP_REVIEWER,
               SUPP_PAR.MATCH_KEY,
               SUPP_PAR.MATCH_TOTAL_QTY_IND,
               SUPP_PAR.TOTAL_QTY_REQUIRED_IND,
               SUPP_PAR.MATCH_STGY_ID,
               SUPP_PAR.SKU_COMP_PERCENT,
               SUPP_PAR.QTY_DISC_DAY_BEFORE_RTE,
               NVL(SUPP_SITE.DATA_SOURCE, SUPP_PAR.DATA_SOURCE) DATA_SOURCE,
               NULL GROUP_ID,
               NULL GROUP_DESC,
               NVL(SUPP_SITE.SEND_DEBIT_MEMO, SUPP_PAR.SEND_DEBIT_MEMO) SEND_DEBIT_MEMO,
               NVL(SUPP_SITE.MANUALLY_PAID_IND, SUPP_PAR.MANUALLY_PAID_IND) MANUALLY_PAID_IND,
               NVL(SUPP_SITE.USE_INVOICE_TERMS_IND, SUPP_PAR.USE_INVOICE_TERMS_IND) USE_INVOICE_TERMS_IND,
               NVL(SUPP_SITE.ROG_DATE_ALLOWED_IND, SUPP_PAR.ROG_DATE_ALLOWED_IND) ROG_DATE_ALLOWED_IND,
               NVL(SUPP_SITE.CLOSE_OPEN_SHIPMENT_DAYS, SUPP_PAR.CLOSE_OPEN_SHIPMENT_DAYS) CLOSE_OPEN_SHIPMENT_DAYS,
               NVL(SUPP_SITE.HOLD_INVOICES, SUPP_PAR.HOLD_INVOICES) HOLD_INVOICES
          FROM (SELECT ISO.SUPPLIER,
                       ISO.AP_REVIEWER,
                       'IM_SUPPLIER_OPTIONS - SUPPLIER SITE' DATA_SOURCE,
                       ISO.SEND_DEBIT_MEMO,
                       ISO.MANUALLY_PAID_IND,
                       ISO.USE_INVOICE_TERMS_IND,
                       ISO.ROG_DATE_ALLOWED_IND,
                       ISO.CLOSE_OPEN_SHIPMENT_DAYS,
                       ISO.HOLD_INVOICES
                  FROM IM_SUPPLIER_OPTIONS ISO,
                       SUPS
                 WHERE ISO.SUPPLIER         = SUPS.SUPPLIER
                   AND SUPS.SUPPLIER_PARENT IS NOT NULL) SUPP_SITE,
               (SELECT SUPS.SUPPLIER,
                       ISO.AP_REVIEWER,
                       ISO.MATCH_KEY,
                       ISO.MATCH_TOTAL_QTY_IND,
                       ISO.TOTAL_QTY_REQUIRED_IND,
                       ISO.MATCH_STGY_ID,
                       ISO.SKU_COMP_PERCENT,
                       ISO.QTY_DISC_DAY_BEFORE_RTE,
                       'IM_SUPPLIER_OPTIONS - SUPPLIER PARENT' DATA_SOURCE,
                       ISO.SEND_DEBIT_MEMO,
                       ISO.MANUALLY_PAID_IND,
                       ISO.USE_INVOICE_TERMS_IND,
                       ISO.ROG_DATE_ALLOWED_IND,
                       ISO.CLOSE_OPEN_SHIPMENT_DAYS,
                       ISO.HOLD_INVOICES
                  FROM IM_SUPPLIER_OPTIONS ISO,
                       SUPS
                 WHERE ISO.SUPPLIER = SUPS.SUPPLIER_PARENT) SUPP_PAR
          WHERE SUPP_PAR.SUPPLIER = SUPP_SITE.SUPPLIER (+)) SUPP_OPTIONS
 WHERE SUPP_OPTIONS.SUPPLIER = SUPP_GRP.SUPPLIER (+);

 
 
COMMENT ON TABLE V_IM_SUPP_SITE_ATTRIB_EXPL IS 'FIND A LIST OF SUPPLIER SITE OPTIONS BASED ON A PRIORITY OF IM_SUPPLIER_GROUP, IM_SUPPLIER_OPTIONS - SUPPLIER SITE, AND IM_SUPPLIER_OPTIONS - SUPPLIER';

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.SUPPLIER IS 'THIS COLUMN HOLDS THE ID OF THE SUPPLIER WHOSE RETEK INVOICE MATCHING OPTIONS ARE BEING DEFINED.  THIS FIELD IS MANDATORY NOT NULL.';

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.AP_REVIEWER IS 'THIS COLUMN ALLOWS THE RETAILER TO INDICATE WHICH ACCOUNTS PAYABLE EMPLOYEE WILL BE THE DEFAULT REVIEWER FOR THIS SUPPLIERS INVOICES.  THIS COLUMN CAN HOLD THE ID OF ANY USER WITH PERMISSIONS TO ACCESS RETEK INVOICE MATCHING.  THESE USERS WILL BE DEFINED ON THE IM_BUSINESS_ROLE_MEMBER TABLE.  THIS FIELD IS MANDATORY NOT NULL.';

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.MATCH_KEY IS 'THE MATCHING KEY WHICH WOULD DEFINE THE RECEIPTS BEING SELECTED FOR MATCHING AGAINST THE INVOICES FROM THIS SUPPLIER.
POSSIBLE VALUES:
POL - PO/LOC,
PO    - PO,
SSL  - SUPP-SITE/LOC,
SS    - SUPP-SITE,
SL    - SUPPLIER/LOC,
S      - SUPPLIER';

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.MATCH_TOTAL_QTY_IND IS 'THIS COLUMN DEFINES WHETHER QUANTITY WILL BE CONSIDERED DURING SUMMARY LEVEL MATCHING.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.TOTAL_QTY_REQUIRED_IND IS 'THIS COLUMN DEFINES WHETHER TOTAL QTY IS REQUIRED AT A DOCUMENT HEADER LEVEL.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.MATCH_STGY_ID IS 'THE ID OF THE MATCHING STARTEGY THAT THE SUPPLIER WOULD USE FOR MATCHING ITS INVOICES.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.SKU_COMP_PERCENT IS 'THE MINIMUM SKU COMPLIANCE PERCENTAGE REQUIRED FOR A SUMMARY MATCH.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.QTY_DISC_DAY_BEFORE_RTE IS 'THIS FIELD IS USED IN SUPPLIER OPTIONS DETAILS PAGE.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.DATA_SOURCE IS 'STATES IF THE SUPPLIER OPTIONS WERE FOUND AT THE SUPPLIER GROUP, SUPPLIER OPTIONS - SUPPLIER SITE LEVEL, OR SUPPLIER OPTIONS - SUPPLIER LEVEL'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.GROUP_ID IS 'THE GROUP_ID OF THE SUPPLIER GROUP DATA IS POPULATED IF SOURCE FROM A GROUP'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.GROUP_DESC IS 'THE GROUP_DESC OF THE SUPPLIER GROUP DATA IS POPULATED IF SOURCE FROM A GROUP'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.SEND_DEBIT_MEMO IS 'THIS COLUMN DETERMINES THE TYPE OF DOCUMENT TO SEND TO THE SUPPLIER WHEN A RESOLUTION DOCUMENT IS AUTOMATICALLY BEING CREATED TO RESOLVE AN INVOICE DISCREPANCY (INVOICE AMOUNT > RECEIPT AMOUNT).  ALWAYS INDICATES THE SYSTEM SHOULD ALWAYS CREATE DEBIT MEMOS FOR THIS VENDOR TO RESOLVED INVOICE DISCREPANCIES.  NEVER INDICATES THE SYSTEM SHOULD NEVER SEND DEBIT MEMOS FOR THIS VENDOR TO RESOLVE INVOICE DISCREPANCIES (CREDIT NOTE REQUESTS WILL BE SENT INSTEAD).  ONLY WHEN CREDIT NOTE IS LATE INDICATES THAT DEBIT MEMOS SHOULD BE SENT ONLY AFTER A CREDIT NOTE REQUEST DUE DATE HAS PASSED.  VALID VALUES FOR THIS COLUMN ARE A - ALWAYS, L - ONLY WHEN CREDIT NOTE IS LATE AND N - NEVER.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.MANUALLY_PAID_IND IS 'THE COLUMN WILL INDICATE WHETHER THE SUPPLIERS INVOICES ARE MANUALLY PAID.  VALID VALUES INCLUDE Y YES AND N NO'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.USE_INVOICE_TERMS_IND IS 'THIS COLUMN ALLOWS THE RETAILER TO INDICATE THAT THIS SUPPLIER ALWAYS REQUIRES THE INVOICE TERMS TO BE USED.  YES INDICATES THE INVOICE TERMS MUST ALWAYS BE USED.  NO INDICATES THAT TERMS OTHER THAN THE INVOICE TERMS CAN BE USED (E.G. PO TERMS, RECEIPT OF GOODS (ROG) TERMS, ETC.).  IF THIS COLUMN IS YES, THE BEST TERMS CALCULATION WILL ALWAYS PRODUCE THE INVOICE TERMS.  IF THIS COLUMN IS NO, THE BEST TERMS CALCULATION WILL CONSIDER ALL TERMS TO FIND THE MOST COST EFFECTIVE METHOD OF DEALING WITH THE SUPPLIER ON A PARTICULAR INVOICE.  VALID VALUES FOR THIS COLUMN ARE Y AND N.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.ROG_DATE_ALLOWED_IND IS 'THIS COLUMN ALLOWS THE RETAILER TO INDICATE THAT THIS SUPPLIER ALLOWS THE RECEIPT-OF-GOODS (ROG) DATE TO BE USED WHEN DETERMINING THE BEST TERMS FOR AN INVOICE.  YES INDICATES THE SUPPLIER ALLOWS THE USE TO THE ROG TO DETERMINE THE BEST TERMS DATE FOR AN INVOICE.  NO INDICATES THE SUPPLIER DOES NOT ALLOW THE ROGDATE TO BE USED.  IF THIS COLUMN IS YES, THE BEST TERMS CALCULATION CAN USE THE ROG DATE FOR THE FINAL TERMS IF ROG DATE TERMS ARE BETTER THAN THE INVOICE DATE TERMS.  IF THIS COLUMN IS NO, THE BEST TERMS CALCULATION MUST USE THE INVOICE DATE TERMS.  VALID VALUES FOR THIS COLUMN ARE Y AND N.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.CLOSE_OPEN_SHIPMENT_DAYS IS 'THIS COLUMN HOLDS THE NUMBER OF DAYS THAT A SHIPMENT FROM THIS SUPPLIER CAN REMAIN IN READY FOR MATCH STATUS BEFORE IT IS AUTOMATICALLY CLOSED BY THE RETEK INVOICE MATCH CLOSE OPEN SHIPMENT BATCH PROCESS.  IF A VALUE IS NOT DEFINED FOR THIS SUPPLIER, THE SYSTEM LEVEL CLOSE_OPEN_SHIP_DAYS (AS DEFINED ON THE IM_SYSTEMS_OPTION TABLE) WILL BE USED BY THE SYSTEM.  VALID VALUES FOR THIS FIELD ARE NON-NEGATIVE, WHOLE NUMBERS UP TO THREE DIGITS IN LENGTH.  THIS FIELD CAN BE LEFT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_SITE_ATTRIB_EXPL.HOLD_INVOICES IS 'DETERMINES IF INVOICES SHOULD BE HELD FROM PAYMENT FOR THIS SUPPLIER IF THERE ARE OUTSTANDING CREDIT NOTE REQUESTS FOR A GIVEN INVOICE.  IF YES, THE POSTING PROCESS WILL EXCLUDE DOCUMENTS WITH IM_DOC_HEAD.HOLD_STATUS = H.  VALID OPTIONS ARE: Y - YES, N - NO.'
;




PROMPT CREATING VIEW V_IM_SUPP_PARENT_ATTRIB_EXPL;
CREATE OR REPLACE FORCE VIEW V_IM_SUPP_PARENT_ATTRIB_EXPL ( SUPPLIER, AP_REVIEWER, MATCH_KEY, MATCH_TOTAL_QTY_IND, TOTAL_QTY_REQUIRED_IND, MATCH_STGY_ID, SKU_COMP_PERCENT,  QTY_DISC_DAY_BEFORE_RTE, DATA_SOURCE, GROUP_ID, GROUP_DESC, SEND_DEBIT_MEMO, MANUALLY_PAID_IND, USE_INVOICE_TERMS_IND, ROG_DATE_ALLOWED_IND, CLOSE_OPEN_SHIPMENT_DAYS,  HOLD_INVOICES ) AS
SELECT NVL(SUPP_GRP.SUPPLIER, SUPP_OPTIONS.SUPPLIER) SUPPLIER,
       NVL(SUPP_GRP.AP_REVIEWER, SUPP_OPTIONS.AP_REVIEWER) AP_REVIEWER,
       NVL(SUPP_GRP.MATCH_KEY, SUPP_OPTIONS.MATCH_KEY) MATCH_KEY,
       NVL(SUPP_GRP.MATCH_TOTAL_QTY_IND, SUPP_OPTIONS.MATCH_TOTAL_QTY_IND) MATCH_TOTAL_QTY_IND,
       NVL(SUPP_GRP.TOTAL_QTY_REQUIRED_IND, SUPP_OPTIONS.TOTAL_QTY_REQUIRED_IND) TOTAL_QTY_REQUIRED_IND,
       NVL(SUPP_GRP.MATCH_STGY_ID, SUPP_OPTIONS.MATCH_STGY_ID) MATCH_STGY_ID,
       NVL(SUPP_GRP.SKU_COMP_PERCENT, SUPP_OPTIONS.SKU_COMP_PERCENT) SKU_COMP_PERCENT,
       NVL(SUPP_GRP.QTY_DISC_DAY_BEFORE_RTE, SUPP_OPTIONS.QTY_DISC_DAY_BEFORE_RTE) QTY_DISC_DAY_BEFORE_RTE,
       NVL(SUPP_GRP.DATA_SOURCE, SUPP_OPTIONS.DATA_SOURCE) DATA_SOURCE,
       NVL(SUPP_GRP.GROUP_ID, SUPP_OPTIONS.GROUP_ID) GROUP_ID,
       NVL(SUPP_GRP.GROUP_DESC, SUPP_OPTIONS.GROUP_DESC) GROUP_DESC,
       NVL(SUPP_GRP.SEND_DEBIT_MEMO, SUPP_OPTIONS.SEND_DEBIT_MEMO) SEND_DEBIT_MEMO,
       NVL(SUPP_GRP.MANUALLY_PAID_IND, SUPP_OPTIONS.MANUALLY_PAID_IND) MANUALLY_PAID_IND,
       NVL(SUPP_GRP.USE_INVOICE_TERMS_IND, SUPP_OPTIONS.USE_INVOICE_TERMS_IND) USE_INVOICE_TERMS_IND,
       NVL(SUPP_GRP.ROG_DATE_ALLOWED_IND, SUPP_OPTIONS.ROG_DATE_ALLOWED_IND) ROG_DATE_ALLOWED_IND,
       NVL(SUPP_GRP.CLOSE_OPEN_SHIPMENT_DAYS, SUPP_OPTIONS.CLOSE_OPEN_SHIPMENT_DAYS) CLOSE_OPEN_SHIPMENT_DAYS,
       NVL(SUPP_GRP.HOLD_INVOICES, SUPP_OPTIONS.HOLD_INVOICES) HOLD_INVOICES
  FROM (--SUPPLIER SITES ON SUPPLIER GROUPS
        SELECT SUPS.SUPPLIER,
               ISG.AP_REVIEWER,
               ISG.MATCH_KEY,
               ISG.MATCH_TOTAL_QTY_IND,
               ISG.TOTAL_QTY_REQUIRED_IND,
               ISG.MATCH_STGY_ID,
               ISG.SKU_COMP_PERCENT,
               ISG.QTY_DISC_DAY_BEFORE_RTE,
               'IM_SUPPLIER_GROUPS' DATA_SOURCE,
               ISG.GROUP_ID,
               ISG.GROUP_DESC,
               NULL SEND_DEBIT_MEMO,
               NULL MANUALLY_PAID_IND,
               NULL USE_INVOICE_TERMS_IND,
               NULL ROG_DATE_ALLOWED_IND,
               NULL CLOSE_OPEN_SHIPMENT_DAYS,
               NULL HOLD_INVOICES
          FROM IM_SUPPLIER_GROUP_MEMBERS ISGM,
               IM_SUPPLIER_GROUPS ISG,
               SUPS
         WHERE ISGM.GROUP_ID        = ISG.GROUP_ID
           AND ISGM.SUPPLIER        = SUPS.SUPPLIER
           AND SUPS.SUPPLIER_PARENT IS NULL) SUPP_GRP,
       (--SUPPLIER SITES ON SUPPLIER OPTIONS
        SELECT SUPS.SUPPLIER,
               ISO.AP_REVIEWER,
               ISO.MATCH_KEY,
               ISO.MATCH_TOTAL_QTY_IND,
               ISO.TOTAL_QTY_REQUIRED_IND,
               ISO.MATCH_STGY_ID,
               ISO.SKU_COMP_PERCENT,
               ISO.QTY_DISC_DAY_BEFORE_RTE,
               'IM_SUPPLIER_OPTIONS - SUPPLIER PARENT' DATA_SOURCE,
               ISO.SEND_DEBIT_MEMO,
               ISO.MANUALLY_PAID_IND,
               ISO.USE_INVOICE_TERMS_IND,
               ISO.ROG_DATE_ALLOWED_IND,
               ISO.CLOSE_OPEN_SHIPMENT_DAYS,
               ISO.HOLD_INVOICES,
               NULL GROUP_ID,
               NULL GROUP_DESC
          FROM IM_SUPPLIER_OPTIONS ISO,
               SUPS
         WHERE ISO.SUPPLIER         = SUPS.SUPPLIER
           AND SUPS.SUPPLIER_PARENT IS NULL) SUPP_OPTIONS
 WHERE SUPP_OPTIONS.SUPPLIER = SUPP_GRP.SUPPLIER (+);

 
 
COMMENT ON TABLE V_IM_SUPP_PARENT_ATTRIB_EXPL IS 'FIND A LIST OF SUPPLIER OPTIONS BASED ON A PRIORITY OF IM_SUPPLIER_GROUP AND IM_SUPPLIER_OPTIONS - SUPPLIER'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.SUPPLIER IS 'THIS COLUMN HOLDS THE ID OF THE SUPPLIER PARENT WHOSE RETEK INVOICE MATCHING OPTIONS ARE BEING DEFINED.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.AP_REVIEWER IS 'THIS COLUMN ALLOWS THE RETAILER TO INDICATE WHICH ACCOUNTS PAYABLE EMPLOYEE WILL BE THE DEFAULT REVIEWER FOR THIS SUPPLIERS INVOICES.  THIS COLUMN CAN HOLD THE ID OF ANY USER WITH PERMISSIONS TO ACCESS RETEK INVOICE MATCHING.  THESE USERS WILL BE DEFINED ON THE IM_BUSINESS_ROLE_MEMBER TABLE.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.MATCH_KEY IS 'THE MATCHING KEY WHICH WOULD DEFINE THE RECEIPTS BEING SELECTED FOR MATCHING AGAINST THE INVOICES FROM THIS SUPPLIER.
POSSIBLE VALUES:
POL - PO/LOC,
PO    - PO,
SSL  - SUPP-SITE/LOC,
SS    - SUPP-SITE,
SL    - SUPPLIER/LOC,
S      - SUPPLIER'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.MATCH_TOTAL_QTY_IND IS 'THIS COLUMN DEFINES WHETHER QUANTITY WILL BE CONSIDERED DURING SUMMARY LEVEL MATCHING.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.TOTAL_QTY_REQUIRED_IND IS 'THIS COLUMN DEFINES WHETHER TOTAL QTY IS REQUIRED AT A DOCUMENT HEADER LEVEL.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.MATCH_STGY_ID IS 'THE ID OF THE MATCHING STARTEGY THAT THE SUPPLIER WOULD USE FOR MATCHING ITS INVOICES.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.SKU_COMP_PERCENT IS 'THE MINIMUM SKU COMPLIANCE PERCENTAGE REQUIRED FOR A SUMMARY MATCH.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.QTY_DISC_DAY_BEFORE_RTE IS 'THIS FIELD IS USED IN SUPPLIER OPTIONS DETAILS PAGE.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.DATA_SOURCE IS 'STATES IF THE SUPPLIER OPTIONS WERE FOUND AT THE SUPPLIER GROUP OR SUPPLIER OPTIONS LEVEL'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.GROUP_ID IS 'THE GROUP_ID OF THE SUPPLIER GROUP DATA IS POPULATED IF SOURCE FROM A GROUP'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.GROUP_DESC IS 'THE GROUP_DESC OF THE SUPPLIER GROUP DATA IS POPULATED IF SOURCE FROM A GROUP'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.SEND_DEBIT_MEMO IS 'THIS COLUMN DETERMINES THE TYPE OF DOCUMENT TO SEND TO THE SUPPLIER WHEN A RESOLUTION DOCUMENT IS 
AUTOMATICALLY BEING CREATED TO RESOLVE AN INVOICE DISCREPANCY (INVOICE AMOUNT > RECEIPT AMOUNT).  ALWAYS INDICATES THE SYSTEM SHOULD ALWAYS CREATE DEBIT MEMOS FOR THIS VENDOR TO RESOLVED INVOICE DISCREPANCIES.  NEVER INDICATES THE SYSTEM SHOULD NEVER SEND DEBIT MEMOS FOR THIS VENDOR TO RESOLVE INVOICE DISCREPANCIES (CREDIT NOTE REQUESTS WILL BE SENT INSTEAD).  ONLY WHEN CREDIT NOTE IS LATE INDICATES THAT DEBIT MEMOS SHOULD BE SENT ONLY AFTER A CREDIT NOTE REQUEST DUE DATE HAS PASSED.  VALID VALUES FOR THIS COLUMN ARE A - ALWAYS, L - ONLY WHEN CREDIT NOTE IS LATE AND N - NEVER.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.MANUALLY_PAID_IND IS 'THE COLUMN WILL INDICATE WHETHER THE SUPPLIERS INVOICES ARE MANUALLY PAID.  VALID VALUES INCLUDE Y YES AND N NO'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.USE_INVOICE_TERMS_IND IS 'THIS COLUMN ALLOWS THE RETAILER TO INDICATE THAT THIS SUPPLIER ALWAYS REQUIRES THE INVOICE TERMS TO BE USED.  YES INDICATES THE INVOICE TERMS MUST ALWAYS BE USED.  NO INDICATES THAT TERMS OTHER THAN THE INVOICE TERMS CAN BE USED (E.G. PO TERMS, RECEIPT OF GOODS (ROG) TERMS, ETC.).  IF THIS COLUMN IS YES, THE BEST TERMS CALCULATION WILL ALWAYS PRODUCE THE INVOICE TERMS.  IF THIS COLUMN IS NO, THE BEST TERMS CALCULATION WILL CONSIDER ALL TERMS TO FIND THE MOST COST EFFECTIVE METHOD OF DEALING WITH THE SUPPLIER ON A PARTICULAR INVOICE.  VALID VALUES FOR THIS COLUMN ARE Y AND N.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.ROG_DATE_ALLOWED_IND IS 'THIS COLUMN ALLOWS THE RETAILER TO INDICATE THAT THIS SUPPLIER ALLOWS THE RECEIPT-OF-GOODS (ROG) DATE TO BE USED WHEN DETERMINING THE BEST TERMS FOR AN INVOICE.  YES INDICATES THE SUPPLIER ALLOWS THE USE TO THE ROG TO DETERMINE THE BEST TERMS DATE FOR AN INVOICE.  NO INDICATES THE SUPPLIER DOES NOT ALLOW THE ROGDATE TO BE USED.  IF THIS COLUMN IS YES, THE BEST TERMS CALCULATION CAN USE THE ROG DATE FOR THE FINAL TERMS IF ROG DATE TERMS ARE BETTER THAN THE INVOICE DATE TERMS.  IF THIS COLUMN IS NO, THE BEST TERMS CALCULATION MUST USE THE INVOICE DATE TERMS.  VALID VALUES FOR THIS COLUMN ARE Y AND N.  THIS FIELD IS MANDATORY NOT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.CLOSE_OPEN_SHIPMENT_DAYS IS 'THIS COLUMN HOLDS THE NUMBER OF DAYS THAT A SHIPMENT FROM THIS SUPPLIER CAN REMAIN IN READY FOR MATCH STATUS BEFORE IT IS AUTOMATICALLY CLOSED BY THE RETEK INVOICE MATCH CLOSE OPEN SHIPMENT BATCH PROCESS.  IF A VALUE IS NOT DEFINED FOR THIS SUPPLIER, THE SYSTEM LEVEL CLOSE_OPEN_SHIP_DAYS (AS DEFINED ON THE IM_SYSTEMS_OPTION TABLE) WILL BE USED BY THE SYSTEM.  VALID VALUES FOR THIS FIELD ARE NON-NEGATIVE, WHOLE NUMBERS UP TO THREE DIGITS IN LENGTH.  THIS FIELD CAN BE LEFT NULL.'
;

COMMENT ON COLUMN V_IM_SUPP_PARENT_ATTRIB_EXPL.HOLD_INVOICES IS 'DETERMINES IF INVOICES SHOULD BE HELD FROM PAYMENT FOR THIS SUPPLIER IF THERE ARE OUTSTANDING CREDIT NOTE REQUESTS FOR A GIVEN INVOICE.  IF YES, THE POSTING PROCESS WILL EXCLUDE DOCUMENTS WITH IM_DOC_HEAD.HOLD_STATUS = H.  VALID OPTIONS ARE: Y - YES, N - NO.'
;




PROMPT CREATING VIEW V_IM_ITEM_LOV_VIEW;
CREATE OR REPLACE FORCE VIEW V_IM_ITEM_LOV_VIEW AS
SELECT IM.ITEM_DESC ITEM_DESC,
  IM.ITEM ITEM,
  ITS.VPN VPN_DESC ,
  SP.SUPPLIER_PARENT SUPPLIER 
FROM ITEM_SUPPLIER ITS,
  ITEM_MASTER IM ,
  SUPS SP
WHERE ( ITS.SUPPLIER = SP.SUPPLIER
OR ( EXISTS
  (SELECT 'X'
  FROM IM_SUPPLIER_GROUP_MEMBERS L1,
    IM_SUPPLIER_GROUP_MEMBERS L2
  WHERE ITS.SUPPLIER = L2.SUPPLIER
  AND L1.GROUP_ID    = L2.GROUP_ID
  )
AND EXISTS
  (SELECT 'X'
  FROM IM_SUPPLIER_GROUP_MEMBERS L1,
    IM_SUPPLIER_GROUP_MEMBERS L2,
    IM_SUPPLIER_OPTIONS OPT ,
    SUPS SS
  WHERE ITS.SUPPLIER     = SS.SUPPLIER
  AND SS.SUPPLIER_PARENT = L2.SUPPLIER
  AND L1.GROUP_ID        = L2.GROUP_ID
  AND OPT.SUPPLIER       =L1.SUPPLIER
  ) ) )
AND ITS.ITEM      = IM.ITEM
AND IM.TRAN_LEVEL = IM.ITEM_LEVEL
AND IM.STATUS     = 'A' ;




PROMPT CREATING VIEW V_IM_LOCATION_LOV_VIEW;
CREATE OR REPLACE FORCE VIEW V_IM_LOCATION_LOV_VIEW AS
SELECT S.STORE_NAME LOCATION_NAME,
  S.STORE LOCATION,
  'Store' LOCATION_TYPE
FROM V_STORE S
UNION
SELECT WH_NAME LOCATION_NAME,
  WH LOCATION,
  'Warehouse' LOCATION_TYPE
FROM V_WH W
WHERE W.WH = W.PHYSICAL_WH ;





-----------------------------   