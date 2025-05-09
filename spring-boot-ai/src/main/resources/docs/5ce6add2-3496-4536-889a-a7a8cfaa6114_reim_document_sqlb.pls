create or replace PACKAGE BODY REIM_DOCUMENT_SQL AS
-------------------------------------------------------------------------------------------------------------
LP_vdate DATE := GET_VDATE;
---
LP_calc_tolerance_ind   IM_SYSTEM_OPTIONS.CALC_TOLERANCE_IND%TYPE;
LP_calc_tolerance       IM_SYSTEM_OPTIONS.CALC_TOLERANCE%TYPE;
LP_num_tax_allow        IM_SYSTEM_OPTIONS.NUM_TAX_ALLOW%TYPE;
LP_tax_validation_type  IM_SYSTEM_OPTIONS.TAX_VALIDATION_TYPE%TYPE;
LP_inc_date_for_dup_chk IM_SYSTEM_OPTIONS.INCL_DOC_DATE_FOR_DUPL_CHECK%TYPE;
LP_inc_year_for_dup_chk IM_SYSTEM_OPTIONS.INCL_DOC_YEAR_FOR_DUPL_CHECK%TYPE;
LP_object_version_id    IM_INJECT_DOC_ERROR.OBJECT_VERSION_ID%TYPE := REIM_CONSTANTS.ONE;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_CALC_TOLERANCE_VALUES(O_error_message        IN OUT VARCHAR2,
                                   O_calc_tolerance       IN OUT IM_SYSTEM_OPTIONS.CALC_TOLERANCE%TYPE,
                                   O_calc_tolerance_ind   IN OUT IM_SYSTEM_OPTIONS.CALC_TOLERANCE_IND%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_CURR_COST_DEC(O_error_message      IN OUT VARCHAR2,
                           O_curr_cost_dec      IN OUT IM_CURRENCIES.CURRENCY_COST_DEC%TYPE,
                           I_inject_doc_id      IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_VENDOR_TAX_CODES(O_error_message   IN OUT VARCHAR2,
                              O_vendor_tax_data IN OUT OBJ_VENDOR_TAX_DATA_TBL,
                              I_inject_id       IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_TAX_EXEMPT_STATUS(O_error_message    OUT  VARCHAR2,
                               O_exempt_ind       OUT  VARCHAR2,
                               I_inject_id        IN   IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id    IN   IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_LVL (O_error_message   IN OUT VARCHAR2,
                           I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;

-------------------------------------------------------------------------------------------------------------
-- DOCUMENT HEADER FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUP_VENDOR_DOC_NUMBER(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUE_DATE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CURRENCY_CODE(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CROSS_REF_DOC(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORDER(O_error_message IN OUT VARCHAR2,
                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORD_CURR(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_FR8_TYPE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORD_VEND(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_VEND(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV(O_error_message IN OUT VARCHAR2,
                      I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                      I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                      I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_LOC(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TERMS(O_error_message IN OUT VARCHAR2,
                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_DATE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_STORE(O_error_message IN OUT VARCHAR2,
                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_WH(O_error_message IN OUT VARCHAR2,
                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_SUPPLIER(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_PARTNER(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORD_LOC(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_PAID_IND(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_EXCHANGE_RATE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOCTYPE_COST_INC_TAX(O_error_message IN OUT VARCHAR2,
                                       I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                       I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                       I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_WKSHT_DOC_COST(O_error_message IN OUT VARCHAR2,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_REQ_TOTAL_HDR_QTY(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;

-------------------------------------------------------------------------------------------------------------
-- DOCUMENT HEADER TAX FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NOT_ALLOWED_TAX(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TAX_AMT_NON_ZERO(O_error_message IN OUT VARCHAR2,
                                   I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                   I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                   I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ACQ_TAX_DETAIL_REQ(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_FIXED_DEAL(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_COMPLEX_DEAL(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
-- DOCUMENT DETAIL FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUPLICATE_ITEM(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUPLICATE_VPN(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUPLICATE_UPC(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ITEM(O_error_message IN OUT VARCHAR2,
                       I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                       I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                       I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ITEM_SUPPLIER(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORDER_ITEM(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_ORDER_ITEM(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_VPN_SUPPLIER(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUP_VPN_SUPPLIER(O_error_message IN OUT VARCHAR2,
                                   I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                   I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                   I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_UPC(O_error_message IN OUT VARCHAR2,
                      I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                      I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                      I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_UPC_SUPPLIER(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_TAX_NOT_IN_HDR(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_TAX(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ITEM_TAX(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_COST(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_TAX(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DERIVED_ITEM(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;

-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_REASON_CODE(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
-- DOCUMENT NON-MERCH FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MERCH_CODE(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;

-------------------------------------------------------------------------------------------------------------
-- DOCUMENT LEVEL FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_SUPP_OPTION_UNDEFINED(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CRDNT_NO_DETAIL(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_REASON_CODE(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CMC_REASON_CODE(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ZERO_MRCHI_DTL_REQ(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_DTL_NMRCH_REQ(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TAX_REQUIRED(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_EXEMPT_DOCS(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ZERO_TAX_REQUIRED(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_HDR_TAX(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TOTAL_BASIS(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_BASIS(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TOTAL_TAX(O_error_message IN OUT VARCHAR2,
                            I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                            I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                            I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_HDR_DTL_QTY_MTCH(O_error_message IN OUT VARCHAR2,
                                   I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                   I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                   I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_REV_VAT_ITEM_ZERO_TAX(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_NM_TAX_NOT_IN_HDR(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MRCH_TAX(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MRCH_COST(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_NM_COST(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MRCH_BASIS(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_NM_BASIS(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_NM_TAX(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_NM_TAX(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TOTAL_COST_INC_TAX(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
-- DOCUMENT COMMENTS FUNCTIONS
-------------------------------------------------------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------
-- DOCUMENT FIXED DEAL DETAIL FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_MERCH_HIER(O_error_message IN OUT VARCHAR2,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_FIXED_DEAL_LOC(O_error_message IN OUT VARCHAR2,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-- DOCUMENT COMPLEX DEAL DETAIL FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_COMPLEX_DEAL_CURR(O_error_message IN OUT VARCHAR2,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_LOCATION_FOR_DEAL(O_error_message IN OUT VARCHAR2,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_COMPLEX_DEAL_DETAIL(O_error_message IN OUT VARCHAR2,
                                      I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                      I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-- INDUCTION HELPER FUNCTIONS
-------------------------------------------------------------------------------------------------------------
FUNCTION MOVE_ERROR_DOCUMENTS(O_error_message IN OUT VARCHAR2,
                              I_old_inject_id IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_new_inject_id IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION POP_DEFLT_VALUES(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION PRE_VALIDATE_TEMPLATE_DATA(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_CALC_TOLERANCE_VALUES(O_error_message        IN OUT VARCHAR2,
                                   O_calc_tolerance       IN OUT IM_SYSTEM_OPTIONS.CALC_TOLERANCE%TYPE,
                                   O_calc_tolerance_ind   IN OUT IM_SYSTEM_OPTIONS.CALC_TOLERANCE_IND%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.GET_CALC_TOLERANCE_VALUES';

   cursor C_GET_CALC_TOLERANCE is
      select NVL(calc_tolerance, 0),
             calc_tolerance_ind
        from im_system_options;

BEGIN

   open C_GET_CALC_TOLERANCE;
   fetch C_GET_CALC_TOLERANCE into O_calc_tolerance,
                                   O_calc_tolerance_ind;
   close C_GET_CALC_TOLERANCE;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END GET_CALC_TOLERANCE_VALUES;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_CURR_COST_DEC(O_error_message      IN OUT VARCHAR2,
                           O_curr_cost_dec      IN OUT IM_CURRENCIES.CURRENCY_COST_DEC%TYPE,
                           I_inject_doc_id      IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.GET_CURR_COST_DEC';

   cursor C_GET_CURR_COST_DEC is
      select currency_cost_dec
      from im_currencies 
      where currency_code=(select currency_code from im_inject_doc_head where inject_doc_id=I_inject_doc_id);

BEGIN

   open C_GET_CURR_COST_DEC;
   fetch C_GET_CURR_COST_DEC into O_curr_cost_dec;
   close C_GET_CURR_COST_DEC;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END GET_CURR_COST_DEC;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_VENDOR_TAX_CODES(O_error_message   IN OUT VARCHAR2,
                              O_vendor_tax_data IN OUT OBJ_VENDOR_TAX_DATA_TBL,
                              I_inject_id       IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.GET_VENDOR_TAX_CODES';
   L_status  NUMBER(1)    := REIM_CONSTANTS.FAIL;

   L_vendor_tax_data OBJ_VENDOR_TAX_DATA_TBL := NULL;
   L_exempt_ind      VARCHAR2(1)             := 'N';
   L_deal_ind        VARCHAR2(1)             := 'N';

   cursor C_FETCH_VENDOR_DOC_DETAILS is
      select distinct DECODE(iidh.doc_type,
                             REIM_CONSTANTS.DOC_TYPE_NMRCHI, NVL(iidh.ref_vendor, iidh.vendor),
                             DECODE(iidh.deal_id,NULL,iidh.vendor,iidh.ref_vendor)) vendor,
             iidh.vendor_type,
             iidh.doc_date,
             DECODE(iidh.deal_id,NULL,'N','Y') deal_ind
        from im_inject_doc_head iidh
       where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
         and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id);

BEGIN

   if GET_TAX_EXEMPT_STATUS(O_error_message,
                            L_exempt_ind,
                            I_inject_id,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;
   
   
   for rec in C_FETCH_VENDOR_DOC_DETAILS loop
      
      if L_exempt_ind = 'Y' and rec.deal_ind = 'N' then
         return REIM_CONSTANTS.SUCCESS;
      end if;

      REIM_TAX_DATA_SQL.GET_VENDOR_TAX_CODES(L_status,
                                             O_error_message,
                                             OBJ_VENDOR_DATA_TBL(OBJ_VENDOR_DATA_REC(rec.vendor, rec.vendor_type)),
                                             rec.doc_date,
                                             NULL, --Tax_type
                                             L_vendor_tax_data);

      if (L_status <> REIM_CONSTANTS.SUCCESS) then
         return REIM_CONSTANTS.FAIL;
      end if;

      if (O_vendor_tax_data is NULL or O_vendor_tax_data.COUNT = 0) then
         O_vendor_tax_data := L_vendor_tax_data;
      else
         for i IN 1..L_vendor_tax_data.count loop
            O_vendor_tax_data.extend;
            O_vendor_tax_data(O_vendor_tax_data.count) := L_vendor_tax_data(i);
         end loop;
      end if;

   end loop;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END GET_VENDOR_TAX_CODES;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_TAX_EXEMPT_STATUS(O_error_message    OUT   VARCHAR2,
                               O_exempt_ind       OUT   VARCHAR2,
                               I_inject_id        IN    IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id    IN    IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.GET_TAX_EXEMPT_STATUS';

   L_vendor      IM_INJECT_DOC_HEAD.VENDOR%TYPE      := NULL;
   L_vendor_type IM_INJECT_DOC_HEAD.VENDOR_TYPE%TYPE := NULL;
   L_location    IM_INJECT_DOC_HEAD.LOCATION%TYPE    := NULL;
   L_loc_type    IM_INJECT_DOC_HEAD.LOC_TYPE%TYPE    := NULL;
   L_tax_ind     VARCHAR2(1)                         := NULL;

   cursor C_FETCH_DOC_HEAD is
      select DECODE(iidh.deal_id,NULL,iidh.vendor,iidh.ref_vendor),
             iidh.vendor_type,
             iidh.location,
             iidh.loc_type
        from im_inject_doc_head iidh
       where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
         and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id);

BEGIN

   open C_FETCH_DOC_HEAD;
   fetch C_FETCH_DOC_HEAD into L_vendor,
                               L_vendor_type,
                               L_location,
                               L_loc_type;
   close C_FETCH_DOC_HEAD;

   if GET_TAX_STATUS(O_error_message,
                     L_tax_ind,
                     L_vendor,
                     L_vendor_type,
                     L_location,
                     L_loc_type) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if (L_tax_ind = 'N') then
      O_exempt_ind := 'Y';
   else
      O_exempt_ind := 'N';
   end if;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END GET_TAX_EXEMPT_STATUS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_LVL(O_error_message   IN OUT VARCHAR2,
                          I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_LVL';

BEGIN

   if GET_CALC_TOLERANCE_VALUES(O_error_message,
                                LP_calc_tolerance,
                                LP_calc_tolerance_ind) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPP_OPTION_UNDEFINED(O_error_message,
                                     NULL,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOCTYPE_COST_INC_TAX(O_error_message,
                                    NULL,
                                    I_inject_doc_id,
                                    I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TOTAL_COST_INC_TAX(O_error_message,
                                  NULL,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CRDNT_NO_DETAIL(O_error_message,
                               NULL,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_REASON_CODE(O_error_message,
                               NULL,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CMC_REASON_CODE(O_error_message,
                               NULL,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ZERO_MRCHI_DTL_REQ(O_error_message,
                                  NULL,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TAX_REQUIRED(O_error_message,
                            NULL,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_EXEMPT_DOCS(O_error_message,
                           NULL,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ZERO_TAX_REQUIRED(O_error_message,
                                 NULL,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_HDR_TAX(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DTL_TAX_NOT_IN_HDR(O_error_message,
                                  NULL,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM(O_error_message,
                    NULL,
                    I_inject_doc_id,
                    I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM_SUPPLIER(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DTL_TAX(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_COST(O_error_message,
                           NULL,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_TAX(O_error_message,
                          NULL,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DERIVED_ITEM(O_error_message,
                            NULL,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TOTAL_BASIS(O_error_message,
                           NULL,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_BASIS(O_error_message,
                            NULL,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TOTAL_TAX(O_error_message,
                         NULL,
                         I_inject_doc_id,
                         I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_HDR_DTL_QTY_MTCH(O_error_message,
                                NULL,
                                I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_REV_VAT_ITEM_ZERO_TAX(O_error_message,
                                     NULL,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DTL_NM_TAX_NOT_IN_HDR(O_error_message,
                                     NULL,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MRCH_TAX(O_error_message,
                            NULL,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MRCH_COST(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_NM_COST(O_error_message,
                              NULL,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MRCH_BASIS(O_error_message,
                              NULL,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_NM_BASIS(O_error_message,
                               NULL,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DTL_NM_TAX(O_error_message,
                          NULL,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_NM_TAX(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_LVL;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUP_VENDOR_DOC_NUMBER(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DUP_VENDOR_DOC_NUMBER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   cursor C_GET_INCL_DOC_DATE_DUP_CHECK is
   select incl_doc_date_for_dupl_check
   from im_system_options;   

   cursor C_GET_INCL_DOC_YEAR_DUP_CHECK is
   select incl_doc_year_for_dupl_check
   from im_system_options;     

BEGIN

   open C_GET_INCL_DOC_DATE_DUP_CHECK;
   fetch C_GET_INCL_DOC_DATE_DUP_CHECK into LP_inc_date_for_dup_chk;
   close C_GET_INCL_DOC_DATE_DUP_CHECK;

   open C_GET_INCL_DOC_YEAR_DUP_CHECK;
   fetch C_GET_INCL_DOC_YEAR_DUP_CHECK into LP_inc_year_for_dup_chk;
   close C_GET_INCL_DOC_YEAR_DUP_CHECK; 

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidh.rule,
                                   'Vendor Document Number = ' || iidh.ext_doc_id || ' for vendor = ' || NVL(iidh.ref_vendor, iidh.vendor),
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh_ext.*,
                                           iidr.rule
                                      from im_inject_doc_head iidh_ext,
                                           im_inject_doc_rule iidr
                                     where iidh_ext.inject_id     = NVL(I_inject_id, iidh_ext.inject_id)
                                       and iidh_ext.inject_doc_id = NVL(I_inject_doc_id, iidh_ext.inject_doc_id)
                                       and iidr.rule              = DUP_VEND_DOC_NUM) iidh
                             where EXISTS (select 'x'
                                             from im_doc_head idh
                                            where idh.vendor     = NVL(iidh.ref_vendor, iidh.vendor)
                                              and idh.status     <> REIM_CONSTANTS.DOC_STATUS_DELETE
                                              and idh.doc_id     <> NVL(iidh.src_doc_id, -909090)
                                              and idh.ext_doc_id = REIM_INJECTOR_SQL.GET_EXT_DOC_ID_WITH_PRFX(iidh.ext_doc_id, iidh.doc_type)
                                              and TO_CHAR(idh.doc_date,'DD-MON-YY') = DECODE(LP_inc_date_for_dup_chk, REIM_CONSTANTS.YN_YES, TO_CHAR(iidh.doc_date,'DD-MON-YY'), TO_CHAR(idh.doc_date,'DD-MON-YY'))
                                              and TO_CHAR(idh.doc_date,'YYYY') = DECODE(LP_inc_year_for_dup_chk,
                                                                                        REIM_CONSTANTS.YN_YES, TO_CHAR(iidh.doc_date,'YYYY'),
                                                                                        TO_CHAR(idh.doc_date,'YYYY')));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DUP_VENDOR_DOC_NUMBER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUE_DATE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DUE_DATE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Due Date = ' || iidh.due_date,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.due_date is NOT NULL
                               and iidh.due_date < iidh.doc_date
                               and iidr.rule = VALID_DUE_DATE;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DUE_DATE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CURRENCY_CODE(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_CURRENCY_CODE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Currency Code = ' || iidh.currency_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidr.rule          = VALID_CURR_CODE
                               and NOT EXISTS (select 'x'
                                                 from currencies
                                                where currency_code = iidh.currency_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_CURRENCY_CODE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_COMPLEX_DEAL_CURR(O_error_message IN OUT VARCHAR2,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_COMPLEX_DEAL_CURR';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iicdd.inject_id,
                                   iicdd.inject_doc_id,
                                   iidr.rule,
                                   'Currency Code = ' || iicdd.local_currency,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_complex_deal_detail iicdd,
                                   im_inject_doc_rule iidr
                             where iicdd.inject_doc_id = I_inject_doc_id
                               and iidr.rule           = VALID_COMPLEX_DEAL_CURR_CODE
                               and NOT EXISTS (select 'x'
                                                 from currencies
                                                where currency_code = iicdd.local_currency);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_COMPLEX_DEAL_CURR;
-----------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_LOCATION_FOR_DEAL(O_error_message IN OUT VARCHAR2,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_LOCATION_FOR_DEAL';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iicdd.inject_id,
                                   iicdd.inject_doc_id,
                                   iidr.rule,
                                   'Currency Code = ' || iicdd.location,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_complex_deal_detail iicdd,
                                   im_inject_doc_rule iidr
                             where iicdd.inject_doc_id = I_inject_doc_id
                               and iicdd.location      is NOT NULL
                               and iidr.rule           = VALID_LOCATION_FOR_DEAL
                               and NOT EXISTS (select 'x'
                                                 from store s
                                                where s.store = iicdd.location
                                                  and store_open_date  <= LP_vdate
                                               union all
                                               select 'x'
                                                 from wh wh
                                                where wh.wh = iicdd.location)
                            union all
                            select iifdd.inject_id,
                                   iifdd.inject_doc_id,
                                   iidr.rule,
                                   'Location = ' || iifdd.location,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_fixed_deal_detail iifdd,
                                   im_inject_doc_rule iidr
                             where iifdd.inject_doc_id = I_inject_doc_id
                               and iifdd.location      is NOT NULL
                               and iidr.rule           = VALID_LOCATION_FOR_DEAL
                               and NOT EXISTS (select 'x'
                                                 from store s
                                                where s.store = iifdd.location
                                                  and store_open_date  <= LP_vdate
                                               union all
                                               select 'x'
                                                 from wh wh
                                                where wh.wh = iifdd.location);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_LOCATION_FOR_DEAL;
-----------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_MERCH_HIER(O_error_message IN OUT VARCHAR2,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_MERCH_HIER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select inner.inject_id,
                                   inner.inject_doc_id,
                                   iidr.rule,
                                   'Seq_no = ' || inner.seq_no,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iifdd.inject_id,
                                           iifdd.inject_doc_id,
                                           iifdd.seq_no
                                      from im_inject_fixed_deal_detail iifdd
                                     where iifdd.inject_doc_id = I_inject_doc_id
                                       and iifdd.dept          is not null
                                       and NOT EXISTS (select 'x'
                                                         from deps d
                                                        where d.dept = iifdd.dept)
                                    union all
                                    select iifdd.inject_id,
                                           iifdd.inject_doc_id,
                                           iifdd.seq_no
                                      from im_inject_fixed_deal_detail iifdd
                                     where iifdd.inject_doc_id = I_inject_doc_id
                                       and iifdd.dept          is not null
                                       and iifdd.class         is not null
                                       and NOT EXISTS (select 'x'
                                                         from class c
                                                        where c.dept  = iifdd.dept
                                                          and c.class = iifdd.class)
                                    union all
                                    select iifdd.inject_id,
                                           iifdd.inject_doc_id,
                                           iifdd.seq_no
                                      from im_inject_fixed_deal_detail iifdd
                                     where iifdd.inject_doc_id = I_inject_doc_id
                                       and iifdd.dept          is not null
                                       and iifdd.class         is not null
                                       and iifdd.subclass      is not null
                                       and NOT EXISTS (select 'x'
                                                         from subclass sc
                                                        where sc.dept     = iifdd.dept
                                                          and sc.class    = iifdd.class
                                                          and sc.subclass = iifdd.subclass)
                                    union all
                                    select iifdd.inject_id,
                                           iifdd.inject_doc_id,
                                           iifdd.seq_no
                                      from im_inject_fixed_deal_detail iifdd
                                     where iifdd.inject_doc_id = I_inject_doc_id
                                       and ((    iifdd.dept  is null
                                             and iifdd.class is not null)
                                            or
                                            (    iifdd.dept     is null
                                             and iifdd.subclass is not null)
                                            or
                                            (    iifdd.class    is null
                                             and iifdd.subclass is not null)
                                           )) inner,
                                   im_inject_doc_rule iidr
                             where inner.inject_doc_id = I_inject_doc_id
                               and iidr.rule           = VALID_MERCH_HIER;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_MERCH_HIER;
-----------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_FIXED_DEAL(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_FIXED_DEAL';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Deal_id = ' || iidh.deal_id,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.deal_id       is NOT NULL
                               and iidh.deal_type     = REIM_CONSTANTS.DEAL_TYPE_FIXED
                               and iidr.rule          = VALID_FIXED_DEAL
                               and NOT EXISTS (select 'x'
                                                 from fixed_deal fd
                                                where fd.deal_no = iidh.deal_id);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_FIXED_DEAL;
-----------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_COMPLEX_DEAL(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_COMPLEX_DEAL';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Deal_id = ' || iidh.deal_id,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.deal_id       is NOT NULL
                               and iidh.deal_type     = REIM_CONSTANTS.DEAL_TYPE_COMPLEX
                               and iidr.rule          = VALID_COMPLEX_DEAL
                               and NOT EXISTS (select 'x'
                                                 from deal_head dh
                                                where dh.deal_id = iidh.deal_id);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_COMPLEX_DEAL;
-----------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_COMPLEX_DEAL_DETAIL(O_error_message IN OUT VARCHAR2,
                                      I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                      I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_COMPLEX_DEAL_DETAIL';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Deal_Detail_id = ' || iidh.deal_detail_id,
                                   REIM_CONSTANTS.YN_NO,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_doc_id  = I_inject_doc_id
                               and iidh.deal_id        is NOT NULL
                               and iidh.deal_detail_id is NOT NULL
                               and iidh.deal_type      = REIM_CONSTANTS.DEAL_TYPE_COMPLEX
                               and iidr.rule           = VALID_COMPLEX_DEAL_DETAIL
                               and NOT EXISTS (select 'x'
                                                 from deal_detail dd
                                                where dd.deal_id        = iidh.deal_id
                                                  and dd.deal_detail_id = iidh.deal_detail_id);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_COMPLEX_DEAL_DETAIL;
-----------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_FIXED_DEAL_LOC(O_error_message IN OUT VARCHAR2,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_FIXED_DEAL_LOC';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select inner.inject_id,
                                   inner.inject_doc_id,
                                   iidr.rule,
                                   'Seq_no = ' || inner.seq_no,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iifdd.inject_id,
                                           iifdd.inject_doc_id,
                                           iifdd.seq_no
                                      from im_inject_doc_head iidh,
                                           im_inject_fixed_deal_detail iifdd
                                     where iidh.inject_doc_id  = I_inject_doc_id
                                       and iifdd.inject_doc_id = iidh.inject_doc_id
                                       and iidh.deal_id        is not null
                                       and iidh.deal_type      = REIM_CONSTANTS.DEAL_TYPE_FIXED
                                       and NOT EXISTS (select 'x'
                                                         from fixed_deal_merch_loc fdml,
                                                              (select store loc,
                                                                      store phy_loc,
                                                                      REIM_CONSTANTS.LOC_TYPE_STORE loc_type
                                                                 from store
                                                               union all
                                                               select wh loc,
                                                                      physical_wh phy_loc,
                                                                      REIM_CONSTANTS.LOC_TYPE_WH loc_type
                                                                 from wh) loc
                                                        where fdml.deal_no = iidh.deal_id
                                                          and loc.loc      = fdml.location
                                                          and loc.loc_type = fdml.loc_type
                                                          and loc.loc_type = iifdd.loc_type
                                                          and loc.phy_loc  = iifdd.location)) inner,
                                   im_inject_doc_rule iidr
                             where inner.inject_doc_id = I_inject_doc_id
                               and iidr.rule           = VALID_FIXED_DEAL_LOC;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_FIXED_DEAL_LOC;
-----------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CROSS_REF_DOC(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_CROSS_REF_DOC';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Cross Reference Document ID = ' || iidh.cross_ref_doc,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.cross_ref_doc is NOT NULL
                               and iidr.rule = VALID_CROSS_REF_DOC
                               and NOT EXISTS (select 'x'
                                                 from im_doc_head
                                                where doc_id = iidh.cross_ref_doc
                                                  and status <> REIM_CONSTANTS.DOC_STATUS_DELETE);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_CROSS_REF_DOC;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORDER(O_error_message IN OUT VARCHAR2,
                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ORDER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Order Number = ' || iidh.order_no,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.order_no      is NOT NULL
                               and iidr.rule          = 'VALID_ORDER'
                               and NOT EXISTS (select 'x'
                                                 from ordhead
                                                where order_no = iidh.order_no);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ORDER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORD_CURR(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ORD_CURR';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Currency Code = ' || iidh.currency_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.order_no      is NOT NULL
                               and iidr.rule          = 'VALID_ORD_CURR'
                               and NOT EXISTS (select 'x'
                                                 from ordhead
                                                where order_no      = iidh.order_no
                                                  and currency_code = iidh.currency_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ORD_CURR;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_FR8_TYPE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_FR8_TYPE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Freight Type = ' || iidh.freight_type,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.freight_type  is NOT NULL
                               and iidr.rule          = VALID_FR8_TYPE
                               and NOT EXISTS (select 'x'
                                                 from code_detail cd
                                                where cd.code_type = REIM_CONSTANTS.CODE_TYPE_FREIGHT
                                                  and cd.code      = iidh.freight_type);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_FR8_TYPE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_SUPP_OPTION_UNDEFINED(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_SUPP_OPTION_UNDEFINED';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Supplier = ' || NVL(iidh.ref_vendor, iidh.vendor),
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidr.rule          = SUPP_OPTION_UNDEFINED
                               and NOT EXISTS (select 'x'
                                                 from im_supplier_options iso
                                                where iso.supplier = NVL(iidh.ref_vendor, iidh.vendor));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_SUPP_OPTION_UNDEFINED;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORD_VEND(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ORD_VEND';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Order ID = ' || iidh.order_no || ' and Supplier = ' || iidh.vendor,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.order_no      is NOT NULL
                               and NVL(iidh.rtv_ind, REIM_CONSTANTS.YN_NO) = REIM_CONSTANTS.YN_NO
                               and iidr.rule          = VALID_ORD_VEND
                               and NOT EXISTS (select 'x'
                                                 from ordhead oh,
                                                      sups s_oh,
                                                      sups s
                                                where oh.order_no       = iidh.order_no
                                                  and s_oh.supplier     = oh.supplier
                                                  and s.supplier_parent = s_oh.supplier_parent
                                                  and s.supplier        = iidh.vendor
                                               union all
                                               select 'x'
                                                 from ordhead oh,
                                                      sups s_oh,
                                                      im_supplier_group_members isgm_oh,
                                                      im_supplier_group_members isgm_s,
                                                      sups s
                                                where oh.order_no       = iidh.order_no
                                                  and s_oh.supplier     = oh.supplier
                                                  and isgm_oh.supplier  = s_oh.supplier_parent
                                                  and isgm_s.group_id   = isgm_oh.group_id
                                                  and s.supplier_parent = isgm_s.supplier
                                                  and s.supplier        = iidh.vendor);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ORD_VEND;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_VEND(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_RTV_VEND';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'RTV = ' || iidh.rtv_order_no || ' and Supplier = ' || iidh.vendor,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.rtv_order_no  is NOT NULL
                               and iidr.rule          = VALID_RTV_VEND
                               and NOT EXISTS (select 'x'
                                                 from rtv_head rh,
                                                      sups s_rh,
                                                      sups s
                                                where rh.rtv_order_no   = iidh.rtv_order_no
                                                  and s_rh.supplier     = rh.supplier
                                                  and s.supplier_parent = s_rh.supplier_parent
                                                  and s.supplier        = iidh.vendor
                                               union all
                                               select 'x'
                                                 from rtv_head rh,
                                                      sups s_rh,
                                                      im_supplier_group_members isgm_rh,
                                                      im_supplier_group_members isgm_s,
                                                      sups s
                                                where rh.rtv_order_no   = iidh.rtv_order_no
                                                  and s_rh.supplier     = rh.supplier
                                                  and isgm_rh.supplier  = s_rh.supplier_parent
                                                  and isgm_s.group_id   = isgm_rh.group_id
                                                  and s.supplier_parent = isgm_s.supplier
                                                  and s.supplier        = iidh.vendor
                                                  union all
                                               select 'x'
                                                 from rtv_head rh,
                                                      sups s_rh,
                                                      sups s
                                                where rh.rtv_order_no   = iidh.rtv_order_no
                                                  and s_rh.supplier     = rh.supplier
                                                  and s.supplier_parent = s_rh.supplier_parent
                                                  and s.supplier_parent = iidh.ref_vendor
                                               union all
                                               select 'x'
                                                 from rtv_head rh,
                                                      sups s_rh,
                                                      im_supplier_group_members isgm_rh,
                                                      im_supplier_group_members isgm_s,
                                                      sups s
                                                where rh.rtv_order_no   = iidh.rtv_order_no
                                                  and s_rh.supplier     = rh.supplier
                                                  and isgm_rh.supplier  = s_rh.supplier_parent
                                                  and isgm_s.group_id   = isgm_rh.group_id
                                                  and s.supplier_parent = isgm_s.supplier
                                                  and s.supplier_parent = iidh.ref_vendor);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_RTV_VEND;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV(O_error_message IN OUT VARCHAR2,
                      I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                      I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                      I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_RTV';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'RTV Order Number = ' || iidh.order_no,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.rtv_order_no  is NOT NULL
                               and iidr.rule          = VALID_RTV
                               and NOT EXISTS (select 'x'
                                                 from rtv_head rh
                                                where rh.rtv_order_no = iidh.rtv_order_no);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_RTV;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_LOC(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_RTV_LOC';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'RTV Order Number = ' || iidh.order_no || ' and Location = ' || iidh.location,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.rtv_order_no  is NOT NULL
                               and iidr.rule          = VALID_RTV_LOC
                               and NOT EXISTS (select 'x'
                                                 from rtv_head rh,
                                                      store s
                                                where iidh.loc_type   = REIM_CONSTANTS.LOC_TYPE_STORE
                                                  and rh.rtv_order_no = iidh.rtv_order_no
                                                  and s.store         = iidh.location
                                                  and rh.store        = s.store
                                               union all
                                               select 'x'
                                                 from rtv_head rh,
                                                      wh wh
                                                where iidh.loc_type   = REIM_CONSTANTS.LOC_TYPE_WH
                                                  and rh.rtv_order_no = iidh.rtv_order_no
                                                  and wh.physical_wh  = iidh.location
                                                  and rh.wh           = wh.wh);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_RTV_LOC;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TERMS(O_error_message IN OUT VARCHAR2,
                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_TERMS';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Terms = ' || iidh.terms,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.terms         is NOT NULL
                               and iidr.rule          = VALID_TERMS
                               and NOT EXISTS (select 'x'
                                                 from terms t
                                                where t.terms = iidh.terms
                                                  and t.enabled_flag = REIM_CONSTANTS.YN_YES
                                                  and iidh.doc_date  between nvl(t.start_date_active, iidh.doc_date) and nvl(t.end_date_active, iidh.doc_date));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_TERMS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_DATE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_DATE';

   L_post_dated_doc_days  IM_SYSTEM_OPTIONS.POST_DATED_DOC_DAYS%TYPE;
   L_user                 IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   cursor C_GET_POST_DATED_DAYS is
      select post_dated_doc_days
        from im_system_options;

BEGIN

   open C_GET_POST_DATED_DAYS;
   fetch C_GET_POST_DATED_DAYS into L_post_dated_doc_days;
   close C_GET_POST_DATED_DAYS;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Document date (In format YYYYMMDD) = ' || TO_CHAR(iidh.doc_date,'YYYYMMDD'),
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               --and LP_allow_bfr_post_dated_days = REIM_CONSTANTS.YN_NO  --comment out for now until column is available at IM_SYSTEMS_OPTIONS
                               and iidh.doc_date      <= (LP_vdate - L_post_dated_doc_days)
                               and iidr.rule          = VALID_DOC_DATE;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_DATE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_STORE(O_error_message IN OUT VARCHAR2,
                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_STORE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Store = ' || iidh.location,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.loc_type      = REIM_CONSTANTS.LOC_TYPE_STORE
                               and iidr.rule          = VALID_STORE
                               and NOT EXISTS (select 'x'
                                                 from store s
                                                where s.store = iidh.location);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_STORE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_WH(O_error_message IN OUT VARCHAR2,
                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_WH';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Wh = ' || iidh.location,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.loc_type      = REIM_CONSTANTS.LOC_TYPE_WH
                               and iidr.rule          = VALID_WH
                               and NOT EXISTS (select 'x'
                                                 from wh wh
                                                where wh.wh = iidh.location);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_WH;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_SUPPLIER(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_SUPPLIER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh_inner.inject_id,
                                   iidh_inner.inject_doc_id,
                                   iidh_inner.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.vendor is not null
                                       and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                       and iidr.rule          = VALID_SUPPLIER
                                       and NOT EXISTS (select 'x'
                                                         from sups s
                                                         where s.supplier = iidh.vendor)
                                     union all
                                    select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                        and iidh.ref_vendor is not null
                                      and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                       and iidr.rule          = VALID_SUPPLIER
                                       and NOT EXISTS (select 'x'
                                                         from sups s
                                                          where s.supplier_parent = iidh.ref_vendor)) iidh_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_SUPPLIER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_SUPP_AND_SITE(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_SUPP_AND_SITE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh_inner.inject_id,
                                   iidh_inner.inject_doc_id,
                                   iidh_inner.rule,
                                   'Supplier = ' || iidh_inner.ref_vendor || ', Supplier Site = ' || iidh_inner.vendor,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidh.ref_vendor,
                                           iidh.vendor,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                       and iidh.vendor        is NOT NULL
                                       and iidh.ref_vendor    is NOT NULL
                                       and iidr.rule          = VALID_SUPPLIER_SUPP_SITE
                                       and NOT EXISTS (select 'x'
                                                         from sups s
                                                         where s.supplier        = iidh.vendor
                                                           and s.supplier_parent = iidh.ref_vendor)) iidh_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_SUPP_AND_SITE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_PARTNER(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_PARTNER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.vendor_type   <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidr.rule          = VALID_PARTNER
                               and NOT EXISTS (select 'x'
                                                 from partner p
                                                where p.partner_id = iidh.ref_vendor);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_PARTNER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORD_LOC(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ORD_LOC';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Location = ' || iidh.location,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id                             = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id                         = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.vendor_type                           = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidh.order_no                              is NOT NULL
                               and NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO) != REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT
                               and NVL(iidh.rtv_ind, REIM_CONSTANTS.YN_NO )   = REIM_CONSTANTS.YN_NO
                               and iidr.rule                                  = VALID_ORD_LOC
                               and NOT EXISTS (select 'x'
                                                 from sups s
                                                where s.supplier = iidh.vendor
                                                  and s.final_dest_ind = REIM_CONSTANTS.YN_YES)
                               and NOT EXISTS (select 'x'
                                                 from ordhead oh
                                                where oh.order_no    = iidh.order_no
                                                  and oh.import_type = REIM_CONSTANTS.IMPORT_TYPE_STORE
                                                  and oh.import_id   = iidh.location)
                               and NOT EXISTS (select 'x'
                                                 from v_im_ordloc ol
                                                where iidh.loc_type = REIM_CONSTANTS.LOC_TYPE_STORE
                                                  and ol.order_no   = iidh.order_no
                                                  and ol.loc_type   = iidh.loc_type
                                                  and ol.location   = iidh.location)
                               and NOT EXISTS (select 'x'
                                                 from v_im_ordloc ol,
                                                      wh wh
                                                where iidh.loc_type  = REIM_CONSTANTS.LOC_TYPE_WH
                                                  and ol.order_no    = iidh.order_no
                                                  and ol.loc_type    = iidh.loc_type
                                                  and wh.wh          = ol.location
                                                  and wh.physical_wh = iidh.location);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ORD_LOC;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_PAID_IND(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_PAID_IND';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Paid Ind = ' || iidh.manually_paid_ind,
                                   REIM_CONSTANTS.YN_NO,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id         = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id     = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.vendor_type       = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidr.rule              = VALID_PAID_IND

                               --Scenario 1: supplier.manually_paid='Y', supplier_site.manually_paid='N', then the user is allowed to enter either ‘N’ or ‘Y’. So No validation needed for that scenario

                               --Scenario 2: supplier.manually_paid='N', supplier_site.manually_paid='Y' and inject_document.manually_paid='N': Not Allowed
                               --Scenario 3: supplier.manually_paid='Y', supplier_site.manually_paid='Y' and inject_document.manually_paid='N': Not Allowed
                               --Combining Scenarios 2 and 3 we get that when inject_document.manually_paid='N', supplier_site.manually_paid cannot be 'Y'
                               and (EXISTS (select 'x'
                                             from im_supplier_options iso
                                            where iidh.manually_paid_ind = REIM_CONSTANTS.YN_NO
                                             and iso.supplier = iidh.vendor
                                             and iso.manually_paid_ind  = REIM_CONSTANTS.YN_YES)


                               --Scenario 4: supplier.manually_paid='N', supplier_site.manually_paid='N' and inject_document.manually_paid='Y': Not Allowed
                               or (EXISTS (select 'x'
                                                 from im_supplier_options iso
                                                where iidh.manually_paid_ind = REIM_CONSTANTS.YN_YES
                                                 and iso.supplier = iidh.vendor
                                                 and iso.manually_paid_ind = REIM_CONSTANTS.YN_NO)

                               and EXISTS (select 'x'
                                                 from im_supplier_options iso
                                                where iidh.manually_paid_ind = REIM_CONSTANTS.YN_YES
                                                 and iso.supplier = iidh.ref_vendor
                                                 and iso.manually_paid_ind = REIM_CONSTANTS.YN_NO)));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_PAID_IND;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_EXCHANGE_RATE(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_EXCHANGE_RATE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Exchange Rate = ' || iidh.exchange_rate,
                                   REIM_CONSTANTS.YN_NO,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id         = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id     = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.order_no          is NOT NULL
                               and iidh.exchange_rate     is NOT NULL
                               and iidr.rule              = VALID_EXCHANGE_RATE
                               and NOT EXISTS (select 'x'
                                                 from ordhead oh
                                                where oh.order_no      = iidh.order_no
                                                  and oh.exchange_rate = iidh.exchange_rate);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_EXCHANGE_RATE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOCTYPE_COST_INC_TAX(O_error_message IN OUT VARCHAR2,
                                       I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                       I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                       I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(60) := 'REIM_DOCUMENT_SQL.VALIDATE_DOCTYPE_COST_INC_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidh.rule,
                                   'Document Type = ' || iidh.doc_type || ' Total Cost Including Tax Sign = ' || DECODE(SIGN(iidh.total_cost_inc_tax),
                                                                                                                             REIM_CONSTANTS.SIGN_POSITIVE, 'Positive',
                                                                                                                             REIM_CONSTANTS.SIGN_NEGATIVE, 'Negative',
                                                                                                                             REIM_CONSTANTS.SIGN_ZERO, 'Zero'),
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh_ext.inject_id,
                                           iidh_ext.inject_doc_id,
                                           iidh_ext.doc_type,
                                           ROUND((iidh_ext.total_cost + NVL(iidh_ext.total_tax_amount, REIM_CONSTANTS.ZERO)), REIM_CONSTANTS.DEFAULT_ROUNDUP_DIGITS) total_cost_inc_tax,
                                           iidr.rule
                                      from im_inject_doc_head iidh_ext,
                                           im_inject_doc_rule iidr
                                     where iidh_ext.inject_id     = NVL(I_inject_id, iidh_ext.inject_id)
                                       and iidh_ext.inject_doc_id = NVL(I_inject_doc_id, iidh_ext.inject_doc_id)
                                       and iidr.rule              =  DOCTYPE_COST_INC_TAX_SIGN) iidh
                             where (iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_MRCHI
                                    and SIGN(iidh.total_cost_inc_tax) NOT IN (REIM_CONSTANTS.SIGN_POSITIVE,
                                                                              REIM_CONSTANTS.SIGN_ZERO))
                                or (iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                    and SIGN(iidh.total_cost_inc_tax) NOT IN (REIM_CONSTANTS.SIGN_POSITIVE,
                                                                              REIM_CONSTANTS.SIGN_NEGATIVE,
                                                                              REIM_CONSTANTS.SIGN_ZERO))
                                or (iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_CRDNT
                                    and SIGN(iidh.total_cost_inc_tax) != REIM_CONSTANTS.SIGN_NEGATIVE)
                                or (iidh.doc_type in (REIM_CONSTANTS.DOC_TYPE_CRDNRC,
                                                      REIM_CONSTANTS.DOC_TYPE_CRDNRQ,
                                                      REIM_CONSTANTS.DOC_TYPE_CRDNRT)
                                    and SIGN(iidh.total_cost_inc_tax) != REIM_CONSTANTS.SIGN_NEGATIVE)
                                or (iidh.doc_type in (REIM_CONSTANTS.DOC_TYPE_DEBMEC,
                                                      REIM_CONSTANTS.DOC_TYPE_DEBMEQ,
                                                      REIM_CONSTANTS.DOC_TYPE_DEBMET)
                                    and SIGN(iidh.total_cost_inc_tax) != REIM_CONSTANTS.SIGN_NEGATIVE)
                                or (iidh.doc_type in (REIM_CONSTANTS.DOC_TYPE_CRDMEC,
                                                      REIM_CONSTANTS.DOC_TYPE_CRDMEQ)
                                    and SIGN(iidh.total_cost_inc_tax) != REIM_CONSTANTS.SIGN_POSITIVE);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOCTYPE_COST_INC_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TOTAL_COST_INC_TAX(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(60) := 'REIM_DOCUMENT_SQL.VALIDATE_TOTAL_COST_INC_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_curr_cost_dec  NUMBER(1) := 0;

BEGIN

   if GET_CURR_COST_DEC(O_error_message,
                            L_curr_cost_dec,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidr.rule          =  TOTAL_COST_INCL_TAX
                               and ABS(ABS(round(iidh.total_cost_inc_tax,L_curr_cost_dec)) - (ABS(round(iidh.total_cost,L_curr_cost_dec)) + ABS(round(NVL(iidh.total_tax_amount, REIM_CONSTANTS.ZERO),L_curr_cost_dec)))) > DECODE(LP_calc_tolerance_ind,
                                                                                                                                                 REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(iidh.total_cost_inc_tax) * (LP_calc_tolerance/100)),
                                                                                                                                                 REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_TOTAL_COST_INC_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_WKSHT_DOC_COST(O_error_message IN OUT VARCHAR2,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(60) := 'REIM_DOCUMENT_SQL.VALIDATE_WKSHT_DOC_COST';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidh.rule,
                                   'Document Type = ' || iidh.doc_type || ' Total Cost Including Tax Sign = ' || DECODE(SIGN(iidh.total_cost_inc_tax),
                                                                                                                             REIM_CONSTANTS.SIGN_POSITIVE, 'Positive',
                                                                                                                             REIM_CONSTANTS.SIGN_NEGATIVE, 'Negative',
                                                                                                                             REIM_CONSTANTS.SIGN_ZERO, 'Zero'),
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh_ext.inject_id,
                                           iidh_ext.inject_doc_id,
                                           iidh_ext.doc_type,
                                           ROUND((iidh_ext.total_cost + NVL(iidh_ext.total_tax_amount, REIM_CONSTANTS.ZERO)), REIM_CONSTANTS.DEFAULT_ROUNDUP_DIGITS) total_cost_inc_tax,
                                           iidr.rule
                                      from im_inject_doc_head iidh_ext,
                                           im_inject_doc_rule iidr
                                     where iidh_ext.inject_doc_id = I_inject_doc_id
                                       and iidr.rule              = DOCTYPE_COST_INC_TAX_SIGN) iidh
                             where (iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_MRCHI
                                    and SIGN(iidh.total_cost_inc_tax) NOT IN (REIM_CONSTANTS.SIGN_POSITIVE,
                                                                              REIM_CONSTANTS.SIGN_ZERO))
                                or (iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                    and SIGN(iidh.total_cost_inc_tax) NOT IN (REIM_CONSTANTS.SIGN_POSITIVE,
                                                                              REIM_CONSTANTS.SIGN_NEGATIVE,
                                                                              REIM_CONSTANTS.SIGN_ZERO));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_WKSHT_DOC_COST;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CRDNT_NO_DETAIL(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_CRDNT_NO_DETAIL';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.doc_type      = REIM_CONSTANTS.DOC_TYPE_CRDNT
                               and iidh.vendor_type   NOT IN (REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER,
                                                              REIM_CONSTANTS.VENDOR_TYPE_MANUFACTURER,
                                                              REIM_CONSTANTS.VENDOR_TYPE_DISTRIBUTOR,
                                                              REIM_CONSTANTS.VENDOR_TYPE_WHOLESALER)
                               and iidr.rule          = CRDNT_NO_DETAIL
                               and EXISTS (select 'x'
                                             from im_inject_doc_detail iidd
                                            where iidd.inject_doc_id = iidh.inject_doc_id);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_CRDNT_NO_DETAIL;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_REQ_TOTAL_HDR_QTY(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_REQ_TOTAL_HDR_QTY';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr,
                                   v_im_supp_site_attrib_expl ss
                             where iidh.inject_id            = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id        = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.doc_type             = REIM_CONSTANTS.DOC_TYPE_MRCHI
                               and NVL(iidh.total_qty, 0)    = 0
                               and NVL(iidh.total_cost, 0)   <> 0
                               and iidr.rule                 = TOTAL_HDR_QTY_REQ
                               and ss.supplier               = iidh.vendor
                               and ss.total_qty_required_ind = REIM_CONSTANTS.YN_YES;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_REQ_TOTAL_HDR_QTY;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_REASON_CODE(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_RTV_REASON_CODE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr,
                                   (select irc.reason_code_id reason_code
                                      from im_reason_codes irc
                                     where irc.reason_code_type = REIM_CONSTANTS.REASON_CODE_TYPE_RTV
                                       and irc.delete_ind       = REIM_CONSTANTS.YN_NO
                                       and rownum < 2) rtv_reason
                             where iidh.inject_id         = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id     = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.doc_type          IN (REIM_CONSTANTS.DOC_TYPE_DEBMEQ,
                                                              REIM_CONSTANTS.DOC_TYPE_CRDNRQ)
                               and rtv_reason.reason_code is NULL
                               and iidr.rule              = RTV_REASON_CODE;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_RTV_REASON_CODE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_CMC_REASON_CODE(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_CMC_REASON_CODE';

   L_dflt_cost_underbill_rc  IM_SYSTEM_OPTIONS.DFLT_COST_UNDERBILL_RC%TYPE;
   L_user                  IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   cursor C_GET_DFLT_COST_UNDERBILL_RC is
      select dflt_cost_underbill_rc
        from im_system_options;

BEGIN

   open C_GET_DFLT_COST_UNDERBILL_RC;
   fetch C_GET_DFLT_COST_UNDERBILL_RC into L_dflt_cost_underbill_rc;
   close C_GET_DFLT_COST_UNDERBILL_RC;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr,
                                   (select irc.reason_code_id reason_code
                                      from im_reason_codes irc
                                     where irc.action     = REIM_CONSTANTS.REASON_CODE_ACTION_CMC
                                       and irc.delete_ind = REIM_CONSTANTS.YN_NO
                                       and rownum < 2) cmc_reason
                             where iidh.inject_id            = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id        = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.doc_type             = REIM_CONSTANTS.DOC_TYPE_CRDMEC
                               and L_dflt_cost_underbill_rc is NULL
                               and cmc_reason.reason_code   is NULL
                               and iidr.rule                = CMC_REASON_CODE;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_CMC_REASON_CODE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ZERO_MRCHI_DTL_REQ(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ZERO_MRCHI_DTL_REQ';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.doc_type      = REIM_CONSTANTS.DOC_TYPE_MRCHI
                               and iidh.total_cost    = REIM_CONSTANTS.ZERO
                               and iidr.rule          = ZERO_MRCHI_DTL_REQ
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_detail iidd
                                                where iidd.inject_doc_id = iidh.inject_doc_id);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ZERO_MRCHI_DTL_REQ;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_DTL_NMRCH_REQ(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_DTL_NMRCH_REQ';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_NO,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.doc_type      IN (REIM_CONSTANTS.DOC_TYPE_DEBMEC,
                                                          REIM_CONSTANTS.DOC_TYPE_DEBMEQ,
                                                          REIM_CONSTANTS.DOC_TYPE_DEBMET,
                                                          REIM_CONSTANTS.DOC_TYPE_CRDMEC,
                                                          REIM_CONSTANTS.DOC_TYPE_CRDMEQ,
                                                          REIM_CONSTANTS.DOC_TYPE_CRDNRC,
                                                          REIM_CONSTANTS.DOC_TYPE_CRDNRQ,
                                                          REIM_CONSTANTS.DOC_TYPE_CRDNRT)
                               and iidr.rule          = DOC_DTL_NMRCH_REQ
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_detail iidd
                                                where iidd.inject_doc_id = iidh.inject_doc_id)
                            union all
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.doc_type      = REIM_CONSTANTS.DOC_TYPE_NMRCHI
                               and iidr.rule          = DOC_DTL_NMRCH_REQ
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_non_merch iidnm
                                                where iidnm.inject_doc_id = iidh.inject_doc_id);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_DTL_NMRCH_REQ;
-------------------------------------------------------------------------------------------------------------
--Header Tax Validation
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NOT_ALLOWED_TAX(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_NOT_ALLOWED_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   NULL,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and LP_num_tax_allow   = REIM_CONSTANTS.NUM_TAX_ALLOW_NONE
                               and iidr.rule          = TAX_NOT_ALLOWED
                               and EXISTS (select 'x'
                                             from im_inject_doc_tax iidt
                                            where iidt.inject_doc_id = iidh.inject_doc_id
                                              and iidt.tax_code is not null);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_NOT_ALLOWED_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TAX_REQUIRED(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_TAX_REQUIRED';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh_inner.inject_id,
                                   iidh_inner.inject_doc_id,
                                   iidr.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (with locs as
                                       (select store loc,
                                               REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                               vat_region
                                          from store
                                         union all
                                        select wh loc,
                                               REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                               vat_region
                                          from wh),
                                       docs as
                                       (select iidh.inject_id,
                                               iidh.inject_doc_id,
                                               iidh.doc_type,
                                               iidh.location loc,
                                               iidh.loc_type,
                                               iidh.vendor,
                                               iidh.vendor_type,
                                               iidh.total_cost,
                                               iidh.total_tax_amount
                                          from im_inject_doc_head iidh,
                                               im_system_options iso
                                         where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                           and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                           and iso.num_tax_allow  <> REIM_CONSTANTS.NUM_TAX_ALLOW_NONE)
                                   ---
                                   select d.inject_id,
                                          d.inject_doc_id
                                     from docs d,
                                          locs l,
                                          sups s,
                                          vat_region vrl,
                                          vat_region vrs
                                    where d.vendor_type     = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and d.loc             = l.loc
                                      and d.loc_type        = l.loc_type
                                      and d.vendor          = s.supplier
                                      and l.vat_region      = s.vat_region
                                      and vrl.vat_region    = l.vat_region
                                      and vrs.vat_region    = s.vat_region
                                      and vrl.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT
                                      and vrs.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT
                                      and NOT EXISTS (select 'x'
                                                        from im_inject_doc_tax iidt
                                                       where iidt.inject_doc_id = d.inject_doc_id
                                                         and iidt.tax_code      is NOT NULL)
                                    union all
                                   select d.inject_id,
                                          d.inject_doc_id
                                     from docs d,
                                          locs l,
                                          partner p,
                                          vat_region vrl,
                                          vat_region vrp
                                    where d.vendor_type     <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and d.loc             = l.loc
                                      and d.loc_type        = l.loc_type
                                      and d.vendor          = p.partner_id
                                      and vrp.vat_region    = p.vat_region
                                      and vrl.vat_region    = l.vat_region
                                      and vrl.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT
                                      and vrp.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT
                                      and NOT EXISTS (select 'x'
                                                        from im_inject_doc_tax iidt
                                                       where iidt.inject_doc_id = d.inject_doc_id
                                                         and iidt.tax_code      is NOT NULL)
                                   ) iidh_inner,
                                   im_inject_doc_rule iidr
                             where iidr.rule = TAX_REQUIRED;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_TAX_REQUIRED;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_EXEMPT_DOCS(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_EXEMPT_DOCS';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh_inner.inject_id,
                                   iidh_inner.inject_doc_id,
                                   iidr.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (with locs as
                                       (select store loc,
                                               REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                               vat_region
                                          from store
                                         union all
                                        select wh loc,
                                               REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                               vat_region
                                          from wh),
                                       docs as
                                       (select iidh.inject_id,
                                               iidh.inject_doc_id,
                                               iidh.doc_type,
                                               iidh.location loc,
                                               iidh.loc_type,
                                               iidh.vendor,
                                               iidh.vendor_type,
                                               iidh.total_cost,
                                               iidh.total_tax_amount
                                          from im_inject_doc_head iidh,
                                               im_system_options iso
                                         where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                           and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                           and iso.num_tax_allow  <> REIM_CONSTANTS.NUM_TAX_ALLOW_NONE)
                                   ---
                                   select d.inject_id,
                                          d.inject_doc_id
                                     from docs d,
                                          locs l,
                                          sups s,
                                          vat_region vr_loc,
                                          vat_region vr_sups
                                    where d.vendor_type      = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and d.loc              = l.loc
                                      and d.loc_type         = l.loc_type
                                      and d.vendor           = s.supplier
                                      and vr_loc.vat_region  = l.vat_region
                                      and vr_sups.vat_region = s.vat_region
                                      and REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT IN (vr_loc.vat_calc_type,
                                                                                  vr_sups.vat_calc_type)
                                      and EXISTS (select 'x'
                                                    from im_inject_doc_tax iidt
                                                   where iidt.inject_doc_id = d.inject_doc_id
                                                     and iidt.tax_code      is NOT NULL)
                                    union all
                                   select d.inject_id,
                                          d.inject_doc_id
                                     from docs d,
                                          locs l,
                                          partner p,
                                          vat_region vr_loc,
                                          vat_region vr_part
                                    where d.vendor_type      <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and d.loc              = l.loc
                                      and d.loc_type         = l.loc_type
                                      and d.vendor           = p.partner_id
                                      and vr_loc.vat_region  = l.vat_region
                                      and vr_part.vat_region = p.vat_region
                                      and REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT IN (vr_loc.vat_calc_type,
                                                                                  vr_part.vat_calc_type)
                                      and EXISTS (select 'x'
                                                    from im_inject_doc_tax iidt
                                                   where iidt.inject_doc_id = d.inject_doc_id
                                                     and iidt.tax_code      is NOT NULL)
                                   ) iidh_inner,
                                   im_inject_doc_rule iidr
                             where iidr.rule = EXEMPT_DOCS_WITH_TAX;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_EXEMPT_DOCS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ZERO_TAX_REQUIRED(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ZERO_TAX_REQUIRED';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh_inner.inject_id,
                                   iidh_inner.inject_doc_id,
                                   iidr.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (with locs as
                                       (select store loc,
                                               REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                               vat_region
                                          from store
                                         union all
                                        select wh loc,
                                               REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                               vat_region
                                          from wh),
                                       docs as
                                       (select iidh.inject_id,
                                               iidh.inject_doc_id,
                                               iidh.doc_type,
                                               iidh.location loc,
                                               iidh.loc_type,
                                               iidh.vendor,
                                               iidh.vendor_type,
                                               iidh.total_cost,
                                               iidh.total_tax_amount
                                          from im_inject_doc_head iidh
                                         where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                           and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id))
                                   ---
                                   select d.inject_id,
                                          d.inject_doc_id
                                     from docs d,
                                          locs l,
                                          sups s,
                                          vat_region vr_loc,
                                          vat_region vr_sup
                                    where d.vendor_type = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and d.loc         = l.loc
                                      and d.loc_type    = l.loc_type
                                      and d.vendor      = s.supplier
                                      and vr_loc.vat_region = l.vat_region
                                      and vr_sup.vat_region = s.vat_region
                                      and l.vat_region <> s.vat_region
                                      and  ( vr_loc.vat_calc_type<>REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM AND 
                                                           vr_sup.vat_calc_type<>REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM )
                                      and EXISTS (select 'x'
                                                    from im_inject_doc_tax iidt
                                                   where iidt.inject_doc_id = d.inject_doc_id
                                                     and iidt.tax_rate      <> REIM_CONSTANTS.ZERO)
                                    union all
                                   select d.inject_id,
                                          d.inject_doc_id
                                     from docs d,
                                          locs l,
                                          partner p
                                    where d.vendor_type <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and d.loc         = l.loc
                                      and d.loc_type    = l.loc_type
                                      and d.vendor      = p.partner_id
                                      and l.vat_region  <> p.vat_region
                                      and EXISTS (select 'x'
                                                    from im_inject_doc_tax iidt
                                                   where iidt.inject_doc_id = d.inject_doc_id
                                                     and iidt.tax_rate      <> REIM_CONSTANTS.ZERO)
                                   ) iidh_inner,
                                   im_inject_doc_rule iidr
                             where iidr.rule = ZERO_TAX_REQUIRED;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ZERO_TAX_REQUIRED;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TAX_AMT_NON_ZERO(O_error_message IN OUT VARCHAR2,
                                   I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                   I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                   I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_TAX_AMT_NON_ZERO';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh_inner.inject_id,
                                   iidh_inner.inject_doc_id,
                                   iidh_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                             from (select iidh.inject_id,
                                          iidh.inject_doc_id,
                                          iidr.rule
                                     from im_inject_doc_head iidh,
                                          im_inject_doc_rule iidr,
                                          (select store loc,
                                                  REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                                  vat_region
                                             from store
                                            union all
                                           select wh loc,
                                                  REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                                  vat_region
                                             from wh) locs,
                                          sups s,
                                          vat_region vr_loc,
                                          vat_region vr_sup
                                    where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                      and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                      and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and iidh.location      = locs.loc
                                      and iidh.loc_type      = locs.loc_type
                                      and iidh.vendor        = s.supplier
                                      and vr_loc.vat_region  = locs.vat_region
                                      and vr_sup.vat_region  = s.vat_region
                                      and locs.vat_region    <> s.vat_region
                                      and NVL(iidh.total_tax_amount, REIM_CONSTANTS.ZERO) <>  REIM_CONSTANTS.ZERO
                                      and  (vr_loc.vat_calc_type<>REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM AND 
                                                           vr_sup.vat_calc_type<>REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM)
                                      and iidr.rule          = 'TAX_AMT_NON_ZERO'
                                    union all
                                   select iidh.inject_id,
                                          iidh.inject_doc_id,
                                          iidr.rule
                                     from im_inject_doc_head iidh,
                                          im_inject_doc_rule iidr,
                                          (select store loc,
                                                  REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                                  vat_region
                                             from store
                                            union all
                                           select wh loc,
                                                  REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                                  vat_region
                                             from wh) locs,
                                          partner p
                                    where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                      and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                      and iidh.vendor_type   <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                                      and iidh.location      = locs.loc
                                      and iidh.loc_type      = locs.loc_type
                                      and iidh.vendor        = p.partner_id
                                      and locs.vat_region    <> p.vat_region
                                      and NVL(iidh.total_tax_amount, REIM_CONSTANTS.ZERO) <>  REIM_CONSTANTS.ZERO
                                      and iidr.rule = TAX_AMT_NON_ZERO) iidh_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_TAX_AMT_NON_ZERO;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_HDR_TAX(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_HDR_TAX';

   L_obj_vendor_tax_tbl OBJ_VENDOR_TAX_DATA_TBL     := NULL;
   L_user               IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   if GET_VENDOR_TAX_CODES(O_error_message,
                           L_obj_vendor_tax_tbl,
                           I_inject_id,
                           I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Header Tax code = ' || iidt.tax_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_tax iidt,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidh.inject_doc_id = iidt.inject_doc_id
                               and iidr.rule          = VALID_HDR_TAX
                               and iidt.tax_code      is NOT NULL
                               and NOT EXISTS (select 'x'
                                                 from table(cast(L_obj_vendor_tax_tbl as OBJ_VENDOR_TAX_DATA_TBL)) tbl
                                                where tbl.vendor_id   = DECODE(iidh.doc_type,
                                                                               REIM_CONSTANTS.DOC_TYPE_NMRCHI, iidh.ref_vendor,
                                                                               DECODE(iidh.deal_id,NULL,iidh.vendor,iidh.ref_vendor))
                                                  and tbl.vendor_type = iidh.vendor_type
                                                  and tbl.eff_date    = iidh.doc_date
                                                  and tbl.tax_code    = iidt.tax_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_HDR_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ACQ_TAX_DETAIL_REQ(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ACQ_TAX_DETAIL_REQ';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh_inner.inject_id,
                                   iidh_inner.inject_doc_id,
                                   iidh_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidh.vendor_type,
                                           iidh.vendor,
                                           iidh.location,
                                           iidh.loc_type,
                                           iidh.doc_type,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidr.rule          = ACQ_TAX_DETAIL_REQ) iidh_inner,
                                   (select store loc,
                                           REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                           vat_region
                                      from store
                                     union all
                                    select wh loc,
                                           REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                           vat_region
                                      from wh) locs,
                                   sups s,
                                   vat_region vr_loc,
                                   vat_region vr_sup
                             where iidh_inner.vendor_type     = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidh_inner.location        = locs.loc
                               and iidh_inner.loc_type        = locs.loc_type
                               and iidh_inner.vendor          = s.supplier
                               and vr_loc.vat_region          = locs.vat_region
                               and vr_sup.vat_region          = s.vat_region
                               and locs.vat_region            <> s.vat_region
                               and iidh_inner.doc_type        <> REIM_CONSTANTS.DOC_TYPE_NMRCHI
                               and vr_loc.acquisition_vat_ind =  REIM_CONSTANTS.YN_YES
                               and vr_sup.vat_region_type     IN (REIM_CONSTANTS.TAX_REGION_EU_BASE,
                                                                  REIM_CONSTANTS.TAX_REGION_EU_MEMBER)
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_detail iidd
                                                where iidd.inject_doc_id  = iidh_inner.inject_doc_id);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ACQ_TAX_DETAIL_REQ;
-------------------------------------------------------------------------------------------------------------
--Document Details validation
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUPLICATE_ITEM(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DUPLICATE_ITEM';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidr.rule,
                                   'Item Id = ' || iidd.item,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                               and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_ITEM_ID
                               and iidr.rule          = DUP_ITEM
                          group by iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidr.rule,
                                   iidd.item
                            having count(1) > 1;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DUPLICATE_ITEM;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUPLICATE_VPN(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DUPLICATE_VPN';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidr.rule,
                                   'VPN = ' || iidd.vpn,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                               and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_VPN
                               and iidr.rule          = DUP_VPN
                             group by iidd.inject_id,
                                      iidd.inject_doc_id,
                                      iidr.rule,
                                      iidd.vpn
                            having count(1) > 1;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DUPLICATE_VPN;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUPLICATE_UPC(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DUPLICATE_UPC';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidr.rule,
                                   'UPC = ' || iidd.upc,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                               and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_UPC
                               and iidr.rule          = DUP_UPC
                          GROUP BY iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidr.rule,
                                   iidd.upc
                            having count(1) > 1;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DUPLICATE_UPC;

-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ITEM(O_error_message IN OUT VARCHAR2,
                       I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                       I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                       I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ITEM';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'Item Id = ' || iidd.item,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_ITEM_ID
                               and iidr.rule          = 'VALID_ITEM'
                               and NOT EXISTS (select 'x'
                                                 from item_master im
                                                where im.item       = iidd.item
                                                  and im.tran_level = im.item_level)
                            union all
                            select iicdd.inject_id,
                                   iicdd.inject_doc_id,
                                   NULL,
                                   iidr.rule,
                                   'Item Id = ' || iicdd.item,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_complex_deal_detail iicdd,
                                   im_inject_doc_rule iidr
                             where iicdd.inject_doc_id = I_inject_doc_id
                               and iidr.rule          = 'VALID_ITEM'
                               and NOT EXISTS (select 'x'
                                                 from item_master im
                                                where im.item       = iicdd.item
                                                  and im.tran_level = im.item_level);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ITEM;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ITEM_SUPPLIER(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ITEM_SUPPLIER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'Item Id = ' || iidd.item || ' , Supplier = ' || NVL(iidh.ref_vendor, iidh.vendor),
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_ITEM_ID
                               and iidr.rule          = VALID_ITEM_SUPPLIER
                               and NOT EXISTS (select 'x'
                                                 from item_supplier its
                                                where its.item = iidd.item
                                                  and its.supplier IN (select s.supplier supplier
                                                                         from sups s
                                                                        where s.supplier_parent = iidh.ref_vendor
                                                                        union all
                                                                       select s.supplier supplier
                                                                         from im_supplier_group_members isgm_iidh,
                                                                              im_supplier_group_members isgm_its,
                                                                              sups s
                                                                        where isgm_iidh.supplier = iidh.ref_vendor
                                                                          and isgm_iidh.group_id = isgm_its.group_id
                                                                          and s.supplier_parent  = isgm_its.supplier
                                                                          and its.supplier       = s.supplier))
                            union all
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   NULL,
                                   iidr.rule,
                                   'Item Id = ' || iicdd.item || ' , Supplier = ' || iidh.vendor,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_complex_deal_detail iicdd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_doc_id  = I_inject_doc_id
                               and iicdd.inject_doc_id = iidh.inject_doc_id
                               and iidh.vendor_type    = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidr.rule           = VALID_ITEM_SUPPLIER
                               and NOT EXISTS (select 'x'
                                                 from item_supplier its
                                                where its.item = iicdd.item
                                                  and its.supplier IN (select s.supplier supplier
                                                                         from sups s
                                                                        where s.supplier_parent = iidh.ref_vendor
                                                                        union all
                                                                       select s.supplier supplier
                                                                         from im_supplier_group_members isgm_iidh,
                                                                              im_supplier_group_members isgm_its,
                                                                              sups s
                                                                        where isgm_iidh.supplier = iidh.ref_vendor
                                                                          and isgm_iidh.group_id = isgm_its.group_id
                                                                          and s.supplier_parent  = isgm_its.supplier
                                                                          and its.supplier       = s.supplier));
   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ITEM_SUPPLIER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ORDER_ITEM(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_ORDER_ITEM';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'Item Id = ' || iidd.item || ' , Order = ' || iidh.order_no,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id                             = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id                         = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id                         = iidh.inject_doc_id
                               and iidh.vendor_type                           = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidd.item_source                           = REIM_CONSTANTS.ITEM_SRC_ITEM_ID
                               and NVL(iidh.rtv_ind, REIM_CONSTANTS.YN_NO)    = REIM_CONSTANTS.YN_NO
                               and NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO) != REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT
                               and iidh.order_no                              is NOT NULL
                               and iidr.rule                                  = VALID_ORDER_ITEM
                               and NOT EXISTS (select 'x'
                                                 from ordsku os
                                                where os.order_no = iidh.order_no)
                            union all
                            select iicdd.inject_id,
                                   iicdd.inject_doc_id,
                                   NULL,
                                   iidr.rule,
                                   'Item Id = ' || iicdd.item || ' , Order = ' || iicdd.order_no,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_complex_deal_detail iicdd,
                                   im_inject_doc_rule iidr
                             where iicdd.inject_id     = NVL(I_inject_id, iicdd.inject_id)
                               and iicdd.inject_doc_id = NVL(I_inject_doc_id, iicdd.inject_doc_id)
                               and iicdd.order_no      is NOT NULL
                               and iidr.rule           = VALID_ORDER_ITEM
                               and NOT EXISTS (select 'x'
                                                 from ordsku os
                                                where os.order_no = iicdd.order_no);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ORDER_ITEM;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_RTV_ORDER_ITEM(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_RTV_ORDER_ITEM';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'Item Id = ' || iidd.item || ' , RTV Order = ' || iidh.rtv_order_no,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id                             = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id                         = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id                         = iidh.inject_doc_id
                               and iidh.vendor_type                           = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidd.item_source                           = REIM_CONSTANTS.ITEM_SRC_ITEM_ID
                               and NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO) != REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT
                               and iidh.rtv_order_no                          is NOT NULL
                               and iidr.rule                                  = VALID_RTV_ORDER_ITEM
                               and NOT EXISTS (select 'x'
                                                 from rtv_detail rd
                                                where rd.rtv_order_no = iidh.rtv_order_no
                                                  and rd.item         = iidd.item);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_RTV_ORDER_ITEM;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_VPN_SUPPLIER(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_VPN_SUPPLIER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'VPN = ' || iidd.vpn,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidh.order_no      is NOT NULL
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_VPN
                               and iidr.rule          = VALID_VPN_SUPPLIER
                               and NOT EXISTS (select 'x'
                                                 from item_supplier its
                                                where its.vpn = iidd.vpn
                                                  and its.supplier IN (select oh.supplier supplier
                                                                         from ordhead oh
                                                                        where oh.order_no = iidh.order_no
                                                                        union all
                                                                       select s_its.supplier supplier
                                                                         from ordhead oh,
                                                                              sups s_oh,
                                                                              im_supplier_group_members isgm_oh,
                                                                              im_supplier_group_members isgm_its,
                                                                              sups s_its
                                                                        where oh.order_no           = iidh.order_no
                                                                          and oh.supplier           = s_oh.supplier
                                                                          and isgm_oh.supplier      = s_oh.supplier_parent
                                                                          and isgm_oh.group_id      = isgm_its.group_id
                                                                          and s_its.supplier_parent = isgm_its.supplier));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_VPN_SUPPLIER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DUP_VPN_SUPPLIER(O_error_message IN OUT VARCHAR2,
                                   I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                   I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                   I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DUP_VPN_SUPPLIER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'VPN = ' || iidd.vpn,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidh.order_no      is NOT NULL
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_VPN
                               and iidr.rule = DUP_VPN_SUPPLIER
                               and EXISTS (select 'x'
                                             from item_supplier its
                                            where its.vpn = iidd.vpn
                                              and its.supplier IN (select oh.supplier supplier
                                                                     from ordhead oh
                                                                    where oh.order_no = iidh.order_no
                                                                    union all
                                                                   select s_its.supplier supplier
                                                                     from ordhead oh,
                                                                          sups s_oh,
                                                                          im_supplier_group_members isgm_oh,
                                                                          im_supplier_group_members isgm_its,
                                                                          sups s_its
                                                                    where oh.order_no      = iidh.order_no
                                                                      and oh.supplier      = s_oh.supplier
                                                                      and isgm_oh.supplier = s_oh.supplier
                                                                      and isgm_oh.group_id = isgm_its.group_id
                                                                      and s_its.supplier   = isgm_its.supplier)
                                            group by its.supplier,
                                                     its.vpn
                                           having count(*) > 1);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DUP_VPN_SUPPLIER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_UPC(O_error_message IN OUT VARCHAR2,
                      I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                      I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                      I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_UPC';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'UPC = ' || iidd.upc,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_UPC
                               and iidr.rule = VALID_UPC
                               and NOT EXISTS (select 'x'
                                                 from item_master im
                                                where im.item = iidd.upc
                                                  and im.tran_level < im.item_level);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_UPC;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_UPC_SUPPLIER(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_UPC_SUPPLIER';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'UPC = ' || iidd.upc,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                               and iidh.order_no      is NOT NULL
                               and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_UPC
                               and iidr.rule = VALID_UPC_SUPPLIER
                               and NOT EXISTS (select 'x'
                                                 from item_supplier its,
                                                      item_master im
                                                where im.item = iidd.upc
                                                  and im.tran_level < im.item_level
                                                  and its.item = DECODE(im.item_level,
                                                                        im.tran_level, im.item,
                                                                        im.item_parent)
                                                  and its.supplier IN (select oh.supplier supplier
                                                                         from ordhead oh
                                                                        where oh.order_no = iidh.order_no
                                                                        union all
                                                                       select s_its.supplier supplier
                                                                         from ordhead oh,
                                                                              sups s_oh,
                                                                              im_supplier_group_members isgm_oh,
                                                                              im_supplier_group_members isgm_its,
                                                                              sups s_its
                                                                        where oh.order_no      = iidh.order_no
                                                                          and oh.supplier      = s_oh.supplier
                                                                          and isgm_oh.supplier = s_oh.supplier
                                                                          and isgm_oh.group_id = isgm_its.group_id
                                                                          and s_its.supplier   = isgm_its.supplier));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_UPC_SUPPLIER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_TAX_NOT_IN_HDR(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                     I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DTL_TAX_NOT_IN_HDR';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'Tax code = ' || iiddt.tax_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_detail iidd,
                                   im_inject_doc_detail_tax iiddt,
                                   im_inject_doc_rule iidr
                             where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                               and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                               and iiddt.detail_id    = iidd.detail_id
                               and iidr.rule          = DTL_TAX_NOT_IN_HDR
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_tax iidt
                                                where iidt.inject_doc_id = iidd.inject_doc_id
                                                  and iidt.tax_code      = iiddt.tax_code)
                            union all
                            select iicdt.inject_id,
                                   iicdt.inject_doc_id,
                                   NULL detail_id,
                                   iidr.rule,
                                   'Tax code = ' || iicdt.tax_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_complex_deal_tax iicdt,
                                   im_inject_doc_rule iidr
                             where iicdt.inject_doc_id = I_inject_doc_id
                               and iidr.rule = DTL_TAX_NOT_IN_HDR
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_tax iidt
                                                where iidt.inject_doc_id = iicdt.inject_doc_id
                                                  and iidt.tax_code      = iicdt.tax_code)
                            union all
                            select iifdt.inject_id,
                                   iifdt.inject_doc_id,
                                   NULL detail_id,
                                   iidr.rule,
                                   'Tax code = ' || iifdt.tax_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_fixed_deal_tax iifdt,
                                   im_inject_doc_rule iidr
                             where iifdt.inject_doc_id = I_inject_doc_id
                               and iidr.rule = DTL_TAX_NOT_IN_HDR
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_tax iidt
                                                where iidt.inject_doc_id = iifdt.inject_doc_id
                                                  and iidt.tax_code      = iifdt.tax_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DTL_TAX_NOT_IN_HDR;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_TAX(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                          I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DTL_TAX';

   L_obj_vendor_tax_tbl OBJ_VENDOR_TAX_DATA_TBL := NULL;
   L_user               IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   if GET_VENDOR_TAX_CODES(O_error_message,
                           L_obj_vendor_tax_tbl,
                           I_inject_id,
                           I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Tax code = ' || iiddt.tax_code || ' for Item/vpn/upc = ' || DECODE(iidd.item_source,
                                                                                                       REIM_CONSTANTS.ITEM_SRC_ITEM_ID, iidd.item,
                                                                                                       REIM_CONSTANTS.ITEM_SRC_VPN, iidd.vpn,
                                                                                                       REIM_CONSTANTS.ITEM_SRC_UPC, iidd.upc) error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_detail_tax iiddt,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iiddt.detail_id    = iidd.detail_id
                               and iidr.rule          = VALID_DTL_TAX
                               and NOT EXISTS (select 'x'
                                                 from table(cast(L_obj_vendor_tax_tbl as OBJ_VENDOR_TAX_DATA_TBL)) tbl
                                                where tbl.vendor_id   = DECODE(iidh.doc_type,
                                                                               REIM_CONSTANTS.DOC_TYPE_NMRCHI, iidh.ref_vendor,
                                                                               decode(iidh.deal_id, NULL, iidh.vendor, iidh.ref_vendor))
                                                  and tbl.vendor_type = iidh.vendor_type
                                                  and tbl.eff_date    = iidh.doc_date
                                                  and tbl.tax_code    = iiddt.tax_code)
                            union all
                            select iicdd.inject_id,
                                   iicdd.inject_doc_id,
                                   iidr.rule,
                                   'Tax code = ' || iicdt.tax_code || ' for Item = ' || iicdd.item || ' Seq_no = ' || iicdd.seq_no error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_complex_deal_detail iicdd,
                                   im_inject_complex_deal_tax iicdt,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id      = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id  = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iicdd.inject_doc_id = iidh.inject_doc_id
                               and iicdt.inject_doc_id = iicdd.inject_doc_id
                               and iicdt.item          = iicdd.item
                               and iicdt.seq_no        = iicdd.seq_no
                               and iidr.rule          = VALID_DTL_TAX
                               and NOT EXISTS (select 'x'
                                                 from table(cast(L_obj_vendor_tax_tbl as OBJ_VENDOR_TAX_DATA_TBL)) tbl
                                                where tbl.vendor_id   = iidh.ref_vendor
                                                  and tbl.vendor_type = iidh.vendor_type
                                                  and tbl.eff_date    = iidh.doc_date
                                                  and tbl.tax_code    = iicdt.tax_code)
                            union all
                            select iifdd.inject_id,
                                   iifdd.inject_doc_id,
                                   iidr.rule,
                                   'Tax code = ' || iifdt.tax_code || ' Seq_no = ' || iifdd.seq_no error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_fixed_deal_detail iifdd,
                                   im_inject_fixed_deal_tax iifdt,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id      = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id  = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iifdd.inject_doc_id = iidh.inject_doc_id
                               and iifdt.inject_doc_id = iifdd.inject_doc_id
                               and iifdt.seq_no        = iifdd.seq_no
                               and iidr.rule          = VALID_DTL_TAX
                               and NOT EXISTS (select 'x'
                                                 from table(cast(L_obj_vendor_tax_tbl as OBJ_VENDOR_TAX_DATA_TBL)) tbl
                                                where tbl.vendor_id   = iidh.ref_vendor
                                                  and tbl.vendor_type = iidh.vendor_type
                                                  and tbl.eff_date    = iidh.doc_date
                                                  and tbl.tax_code    = iifdt.tax_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DTL_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_ITEM_TAX(O_error_message IN OUT VARCHAR2,
                           I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                           I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50)  := 'REIM_DOCUMENT_SQL.VALIDATE_ITEM_TAX';

   L_user                       IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_status                     NUMBER(1);
   L_obj_item_tax_crit_tbl      OBJ_ITEM_TAX_CRITERIA_TBL  := NULL;
   L_obj_item_tax_break_tbl     OBJ_ITEM_TAX_BREAK_TBL     := NULL;
   L_obj_item_tax_calc_ovrd_tbl OBJ_ITEM_TAX_CALC_OVRD_TBL := OBJ_ITEM_TAX_CALC_OVRD_TBL();
   L_exempt_ind                 VARCHAR2(1)                := 'N';

   cursor C_FETCH_ITEM_TAX_CRIT is
      select OBJ_ITEM_TAX_CRITERIA_REC(item,
                                       vendor,
                                       location,
                                       doc_date,
                                       unit_cost,
                                       NULL, -- mrp
                                       NULL, -- retail
                                       NULL, -- freight
                                       NULL) -- tax_type
        from (select distinct iidd.item,
                     iidh.vendor,
                     iidh.location,
                     iidh.doc_date,
                     iidd.unit_cost
                from im_inject_doc_head iidh,
                     sups s,
                     (select store loc,
                             REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                             vat_region
                        from store
                       union all
                      select wh loc,
                             REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                             vat_region
                        from wh) locs,
                     vat_region vr,
                     im_inject_doc_detail iidd
               where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                 and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                 and iidh.doc_type      = REIM_CONSTANTS.DOC_TYPE_MRCHI
                 and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                 and iidh.multi_loc_ind = REIM_CONSTANTS.YN_NO
                 and s.supplier         = iidh.vendor
                 and locs.loc           = iidh.location
                 and locs.loc_type      = iidh.loc_type
                 and locs.vat_region    = s.vat_region
                 and vr.vat_region      = locs.vat_region
                 and vr.vat_calc_type   <> REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT
                 and iidd.inject_doc_id = iidh.inject_doc_id);

BEGIN

   --Item Tax Validation
   open C_FETCH_ITEM_TAX_CRIT;
   fetch C_FETCH_ITEM_TAX_CRIT BULK COLLECT into L_obj_item_tax_crit_tbl;
   close C_FETCH_ITEM_TAX_CRIT;

   if (L_obj_item_tax_crit_tbl IS NOT NULL and L_obj_item_tax_crit_tbl.count > 0) then

      REIM_TAX_CALC_SQL.CALCULATE_ITEM_TAXES(L_status,
                                             O_error_message,
                                             L_obj_item_tax_crit_tbl,
                                             L_obj_item_tax_calc_ovrd_tbl,
                                             L_obj_item_tax_break_tbl);

      if (L_status <> REIM_CONSTANTS.SUCCESS) then
         return REIM_CONSTANTS.FAIL;
      end if;

      if (L_obj_item_tax_break_tbl IS NULL OR L_obj_item_tax_break_tbl.Count = 0) then
         insert into im_inject_doc_error(inject_id,
                                         inject_doc_id,
                                         detail_id,
                                         rule,
                                         error_context,
                                         fixable,
                                         status,
                                         creation_date,
                                         created_by,
                                         last_updated_by,
                                         last_update_date,
                                         object_version_id,
                                         trial_id)
                                  select iidd.inject_id,
                                         iidd.inject_doc_id,
                                         iidd.detail_id,
                                         iidr.rule,
                                         'Tax code = ' || iiddt.tax_code || ' for Item/vpn/upc = ' || DECODE(iidd.item_source,
                                                                                                             REIM_CONSTANTS.ITEM_SRC_ITEM_ID, iidd.item,
                                                                                                             REIM_CONSTANTS.ITEM_SRC_VPN, iidd.vpn,
                                                                                                             REIM_CONSTANTS.ITEM_SRC_UPC, iidd.upc) error_context,
                                         REIM_CONSTANTS.YN_YES,
                                         REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                         SYSDATE,
                                         L_user,
                                         L_user,
                                         SYSDATE,
                                         LP_object_version_id,
                                         I_trial_id
                                    from table(cast(L_obj_item_tax_crit_tbl as OBJ_ITEM_TAX_CRITERIA_TBL)) tbl,
                                         im_inject_doc_head iidh,
                                         im_inject_doc_detail iidd,
                                         im_inject_doc_detail_tax iiddt,
                                         im_inject_doc_rule iidr
                                   where iidd.inject_doc_id    = I_inject_doc_id
                                     and iidd.inject_doc_id    = iidh.inject_doc_id
                                     and iidd.detail_id        = iiddt.detail_id
                                     and iidh.reverse_vat_ind  = REIM_CONSTANTS.YN_NO
                                     and tbl.supplier          = iidh.vendor
                                     and tbl.location          = iidh.location
                                     and tbl.item              = iidd.item
                                     and tbl.eff_date          = iidh.doc_date
                                     and iidr.rule             = VALID_ITEM_TAX;
         return REIM_CONSTANTS.SUCCESS;
      end if;

      if (LP_tax_validation_type = REIM_CONSTANTS.TAX_VALID_TYPE_RETLR) then

         insert into im_inject_doc_error(inject_id,
                                         inject_doc_id,
                                         detail_id,
                                         rule,
                                         error_context,
                                         fixable,
                                         status,
                                         creation_date,
                                         created_by,
                                         last_updated_by,
                                         last_update_date,
                                         object_version_id,
                                         trial_id)
                                  select iidd.inject_id,
                                         iidd.inject_doc_id,
                                         iidd.detail_id,
                                         iidr.rule,
                                         'Tax code = ' || iiddt.tax_code || ' for Item/vpn/upc = ' || DECODE(iidd.item_source,
                                                                                                             REIM_CONSTANTS.ITEM_SRC_ITEM_ID, iidd.item,
                                                                                                             REIM_CONSTANTS.ITEM_SRC_VPN, iidd.vpn,
                                                                                                             REIM_CONSTANTS.ITEM_SRC_UPC, iidd.upc) error_context,
                                         REIM_CONSTANTS.YN_YES,
                                         REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                         SYSDATE,
                                         L_user,
                                         L_user,
                                         SYSDATE,
                                         LP_object_version_id,
                                         I_trial_id
                                    from table(cast(L_obj_item_tax_break_tbl as OBJ_ITEM_TAX_BREAK_TBL)) tbl,
                                         im_inject_doc_head iidh,
                                         im_inject_doc_detail iidd,
                                         im_inject_doc_detail_tax iiddt,
                                         im_inject_doc_rule iidr
                                   where iidd.inject_doc_id    = I_inject_doc_id
                                     and iidd.inject_doc_id    = iidh.inject_doc_id
                                     and iidd.detail_id        = iiddt.detail_id
                                     and iidh.reverse_vat_ind = REIM_CONSTANTS.YN_NO
                                     and tbl.supplier          = iidh.vendor
                                     and tbl.location          = iidh.location
                                     and tbl.item              = iidd.item
                                     and tbl.eff_date          = iidh.doc_date
                                     and (tbl.tax_code         <> iiddt.tax_code
                                          or tbl.tax_rate      <> iiddt.tax_rate)
                                     and iidr.rule             = VALID_ITEM_TAX;

      elsif (LP_tax_validation_type IN (REIM_CONSTANTS.TAX_VALID_TYPE_RECON,
                                        REIM_CONSTANTS.TAX_VALID_TYPE_VENDR)) then

         delete from im_inject_tax_discrepancy iitd
          where exists (select 'x'
                          from im_inject_doc_head iidh
                         where iidh.inject_doc_id = I_inject_doc_id
                           and iidh.inject_doc_id = iitd.inject_doc_id);

         --insert into inject tax discrepancy table
         insert into im_inject_tax_discrepancy(inject_doc_id,
                                               order_no,
                                               item,
                                               tax_code,
                                               doc_tax_rate,
                                               doc_tax_amount,
                                               verify_tax_rate,
                                               verify_tax_code,
                                               verify_tax_amount,
                                               verify_tax_src,
                                               verify_tax_formula,
                                               verify_tax_order)
                                        select iidh.inject_doc_id,
                                               iidh.order_no,
                                               iidd.item,
                                               iiddt.tax_code,
                                               iiddt.tax_rate,
                                               iiddt.tax_basis * (iiddt.tax_rate/100) doc_tax_amount,
                                               tbl.tax_rate,
                                               tbl.tax_code,
                                               iiddt.tax_basis * (tbl.tax_rate/100) verify_tax_amount,
                                               REIM_CONSTANTS.TAX_SRC_SYSTEM,
                                               tbl.tax_basis_formula,
                                               tbl.application_order
                                          from table(cast(L_obj_item_tax_break_tbl as OBJ_ITEM_TAX_BREAK_TBL)) tbl,
                                               im_inject_doc_head iidh,
                                               im_inject_doc_detail iidd,
                                               im_inject_doc_detail_tax iiddt
                                         where iidd.inject_doc_id    = I_inject_doc_id
                                           and iidd.inject_doc_id    = iidh.inject_doc_id
                                           and iiddt.detail_id       = iidd.detail_id
                                           and iidh.reverse_vat_ind  = REIM_CONSTANTS.YN_NO
                                           and iidd.item             = tbl.item
                                           and iidh.vendor           = tbl.supplier
                                           and iidh.location         = tbl.location
                                           and iidh.doc_date         = tbl.eff_date
                                           and (iiddt.tax_rate       <> tbl.tax_rate
                                                or iiddt.tax_code    <> tbl.tax_code);

      end if;
   end if;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_ITEM_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_COST(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DETAIL_COST';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_curr_cost_dec  NUMBER(1) := 0;

BEGIN

   if GET_CURR_COST_DEC(O_error_message,
                            L_curr_cost_dec,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule,
                                           iidh.total_cost,
                                           NVL(doc_dtl.total_dtl_cost, REIM_CONSTANTS.ZERO) + NVL(doc_nm.total_non_merch_amt, REIM_CONSTANTS.ZERO) total_dtl_cost
                                      from im_inject_doc_head iidh,
                                           (select iidd.inject_doc_id,
                                                   SUM(iidd.qty * iidd.unit_cost) total_dtl_cost
                                              from im_inject_doc_detail iidd
                                             where iidd.inject_id            = NVL(I_inject_id, iidd.inject_id)
                                               and iidd.inject_doc_id        = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                             GROUP BY iidd.inject_doc_id
                                            union all
                                            select iicdd.inject_doc_id,
                                                   SUM(iicdd.income_deal_curr) total_dtl_cost
                                              from im_inject_complex_deal_detail iicdd
                                             where iicdd.inject_id            = NVL(I_inject_id, iicdd.inject_id)
                                               and iicdd.inject_doc_id        = NVL(I_inject_doc_id, iicdd.inject_doc_id)
                                             GROUP BY iicdd.inject_doc_id
                                            union all
                                            select iifdd.inject_doc_id,
                                                   SUM(iifdd.income) total_dtl_cost
                                              from im_inject_fixed_deal_detail iifdd
                                             where iifdd.inject_id            = NVL(I_inject_id, iifdd.inject_id)
                                               and iifdd.inject_doc_id        = NVL(I_inject_doc_id, iifdd.inject_doc_id)
                                             GROUP BY iifdd.inject_doc_id) doc_dtl,
                                           (select iidnm.inject_doc_id,
                                                   SUM(iidnm.non_merch_amount) total_non_merch_amt
                                              from im_inject_doc_non_merch iidnm
                                             where iidnm.inject_id            = NVL(I_inject_id, iidnm.inject_id)
                                               and iidnm.inject_doc_id        = NVL(I_inject_doc_id, iidnm.inject_doc_id)
                                             GROUP BY iidnm.inject_doc_id) doc_nm,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id         = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id     = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id     = doc_dtl.inject_doc_id(+)
                                       and iidh.inject_doc_id     = doc_nm.inject_doc_id(+)
                                       and doc_dtl.total_dtl_cost is not NULL
                                       and iidr.rule              = DETAIL_COST
                                   ) iidt_inner
                             where iidt_inner.total_cost     is NOT NULL
                               and iidt_inner.total_dtl_cost is NOT NULL
                               and ABS(ABS(round(iidt_inner.total_cost,L_curr_cost_dec)) - ABS(round(iidt_inner.total_dtl_cost,L_curr_cost_dec))) > DECODE(LP_calc_tolerance_ind,
                                                                                                   REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(iidt_inner.total_dtl_cost) * (LP_calc_tolerance/100)),
                                                                                                   REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DETAIL_COST;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_TAX(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DETAIL_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_curr_cost_dec  NUMBER(1) := 0;

BEGIN

   if GET_CURR_COST_DEC(O_error_message,
                            L_curr_cost_dec,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule,
                                           iidh.total_tax_amount,
                                           doc_dtl.total_tax_basis_dt,
                                           doc_dtl.total_tax_amount_dt,
                                           doc_nm.total_tax_basis_nm,
                                           doc_nm.total_tax_amount_nm
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_rule iidr,
                                           (select iidd.inject_doc_id,
                                                   SUM(iiddt.tax_basis) total_tax_basis_dt,
                                                   SUM(iiddt.tax_basis * (iiddt.tax_rate/100)) total_tax_amount_dt
                                              from im_inject_doc_detail iidd,
                                                   im_inject_doc_detail_tax iiddt
                                             where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                               and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                               and iidd.detail_id     = iiddt.detail_id
                                             GROUP BY iidd.inject_doc_id
                                            union all
                                            select iicdt.inject_doc_id,
                                                   SUM(iicdt.tax_basis) total_tax_basis_dt,
                                                   SUM(iicdt.tax_amount) total_tax_amount_dt
                                              from im_inject_complex_deal_tax iicdt
                                             where iicdt.inject_id     = NVL(I_inject_id, iicdt.inject_id)
                                               and iicdt.inject_doc_id = NVL(I_inject_doc_id, iicdt.inject_doc_id)
                                             GROUP BY iicdt.inject_doc_id
                                            union all
                                            select iifdt.inject_doc_id,
                                                   SUM(iifdt.tax_basis) total_tax_basis_dt,
                                                   SUM(iifdt.tax_amount) total_tax_amount_dt
                                              from im_inject_fixed_deal_tax iifdt
                                             where iifdt.inject_id     = NVL(I_inject_id, iifdt.inject_id)
                                               and iifdt.inject_doc_id = NVL(I_inject_doc_id, iifdt.inject_doc_id)
                                             GROUP BY iifdt.inject_doc_id) doc_dtl,
                                           (select iidnmt.inject_doc_id,
                                                   SUM(iidnmt.tax_basis) total_tax_basis_nm,
                                                   SUM(iidnmt.tax_basis * (iidnmt.tax_rate/100)) total_tax_amount_nm
                                              from im_inject_doc_non_merch_tax iidnmt
                                             where iidnmt.inject_id     = NVL(I_inject_id, iidnmt.inject_id)
                                               and iidnmt.inject_doc_id = NVL(I_inject_doc_id, iidnmt.inject_doc_id)
                                             GROUP BY iidnmt.inject_doc_id) doc_nm
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id = doc_dtl.inject_doc_id(+)
                                       and iidh.inject_doc_id = doc_nm.inject_doc_id(+)
                                       and iidr.rule = DETAIL_TAX
                                   ) iidt_inner
                             where iidt_inner.total_tax_basis_dt is NOT NULL
                               and iidt_inner.total_tax_basis_nm is NULL
                               and ABS(ABS(round(iidt_inner.total_tax_amount,L_curr_cost_dec)) - ABS(round(iidt_inner.total_tax_amount_dt,L_curr_cost_dec))) > DECODE(LP_calc_tolerance_ind,
                                                                                                              REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(iidt_inner.total_tax_amount_dt) * (LP_calc_tolerance/100)),
                                                                                                              REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DETAIL_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DERIVED_ITEM(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DERIVED_ITEM';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   --Derive item from UPC
   merge into im_inject_doc_detail tgt
   using (select iidd.inject_doc_id,
                 iidd.detail_id,
                 DECODE(im.item_level, im.tran_level, im.item, im.item_parent) item_id
            from im_inject_doc_detail iidd,
                 item_master im
           where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
             and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
             and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_UPC
             and iidd.item          is NULL
             and im.item            = iidd.upc) src
   on (    src.inject_doc_id = tgt.inject_doc_id
       and src.detail_id     = tgt.detail_id)
   when MATCHED then
      update
         set tgt.item = src.item_id;

   --Derive item from VPN (direct)
   merge into im_inject_doc_detail tgt
   using (select iidd.inject_doc_id,
                 iidd.detail_id,
                 its.item item_id
            from im_inject_doc_head iidh,
                 im_inject_doc_detail iidd,
                 ordhead oh,
                 item_supplier its
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidd.inject_doc_id = iidh.inject_doc_id
             and iidd.item_source   = REIM_CONSTANTS.ITEM_SRC_VPN
             and iidd.item          is NULL
             and oh.order_no        = iidh.order_no
             and its.supplier       = oh.supplier
             and its.vpn            = iidd.vpn) src
   on (    src.inject_doc_id = tgt.inject_doc_id
       and src.detail_id     = tgt.detail_id)
   when MATCHED then
      update
         set tgt.item = src.item_id;

   --Derive item from VPN (supplier group)
   merge into im_inject_doc_detail tgt
   using (select DISTINCT iidd.inject_doc_id,
                          iidd.detail_id,
                          its.item item_id
                     from im_inject_doc_head iidh,
                          im_inject_doc_detail iidd,
                          ordhead oh,
                          sups s_oh,
                          im_supplier_group_members isgm_oh,
                          im_supplier_group_members isgm_its,
                          sups s_its,
                          item_supplier its
                    where iidh.inject_id        = NVL(I_inject_id, iidh.inject_id)
                      and iidh.inject_doc_id    = NVL(I_inject_doc_id, iidh.inject_doc_id)
                      and iidd.inject_doc_id    = iidh.inject_doc_id
                      and iidd.item_source      = REIM_CONSTANTS.ITEM_SRC_VPN
                      and iidd.item             is NULL
                      and oh.order_no           = iidh.order_no
                      and s_oh.supplier         = oh.supplier
                      and isgm_oh.supplier      = s_oh.supplier_parent
                      and isgm_its.group_id     = isgm_oh.group_id
                      and s_its.supplier_parent = isgm_its.supplier
                      and its.supplier          = s_its.supplier
                      and its.vpn               = iidd.vpn) src
   on (    src.inject_doc_id = tgt.inject_doc_id
       and src.detail_id     = tgt.detail_id)
   when MATCHED then
      update
         set tgt.item = src.item_id;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'Inject doc id = ' || iidd.inject_doc_id || ' and VPN or UPC = ' || DECODE(iidd.item_source,
                                                                                                              REIM_CONSTANTS.ITEM_SRC_UPC, iidd.upc,
                                                                                                              REIM_CONSTANTS.ITEM_SRC_VPN, iidd.vpn) error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                               and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                               and iidd.item_source   IN (REIM_CONSTANTS.ITEM_SRC_UPC,
                                                          REIM_CONSTANTS.ITEM_SRC_VPN)
                               and iidd.item          is NULL
                               and iidr.rule          = UNABLE_TO_RETRIEVE_ITEM;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DERIVED_ITEM;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TOTAL_BASIS(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_TOTAL_BASIS';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_rule iidr,
                                           (select iidt.inject_doc_id,
                                                   SUM(iidt.tax_basis) doc_tax_total_basis
                                              from im_inject_doc_tax iidt
                                             where iidt.inject_id     = NVL(I_inject_id, iidt.inject_id)
                                               and iidt.inject_doc_id = NVL(I_inject_doc_id, iidt.inject_doc_id)
                                             GROUP BY iidt.inject_doc_id) iidt
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id = iidt.inject_doc_id
                                       and iidr.rule          = TOTAL_BASIS
                                       and ABS(iidt.doc_tax_total_basis - iidh.total_cost) > DECODE(LP_calc_tolerance_ind,
                                                                                                    REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(iidh.total_cost) * (LP_calc_tolerance/100)),
                                                                                                    REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                   ) iidt_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_TOTAL_BASIS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_BASIS(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DETAIL_BASIS';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidh.total_cost,
                                           doc_nm.total_nm_tax_basis,
                                           doc_dtl.total_tax_basis_dt,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_rule iidr,
                                           (select iidd.inject_doc_id,
                                                      SUM(iiddt.tax_basis) total_tax_basis_dt,
                                                      SUM(iiddt.tax_basis * (iiddt.tax_rate/100)) total_tax_amount_dt
                                                 from im_inject_doc_detail iidd,
                                                      im_inject_doc_detail_tax iiddt
                                                where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                                  and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                                  and iidd.detail_id     = iiddt.detail_id
                                                GROUP BY iidd.inject_doc_id
                                               union all
                                               select iicdt.inject_doc_id,
                                                      SUM(iicdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iicdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_complex_deal_tax iicdt
                                                where iicdt.inject_id     = NVL(I_inject_id, iicdt.inject_id)
                                                  and iicdt.inject_doc_id = NVL(I_inject_doc_id, iicdt.inject_doc_id)
                                                GROUP BY iicdt.inject_doc_id
                                               union all
                                               select iifdt.inject_doc_id,
                                                      SUM(iifdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iifdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_fixed_deal_tax iifdt
                                                where iifdt.inject_id     = NVL(I_inject_id, iifdt.inject_id)
                                                  and iifdt.inject_doc_id = NVL(I_inject_doc_id, iifdt.inject_doc_id)
                                                GROUP BY iifdt.inject_doc_id) doc_dtl,
                                            (select iidnmt.inject_doc_id,
                                                    SUM(iidnmt.tax_basis) total_nm_tax_basis
                                               from im_inject_doc_non_merch_tax iidnmt
                                              where iidnmt.inject_id     = NVL(I_inject_id, iidnmt.inject_id)
                                                and iidnmt.inject_doc_id = NVL(I_inject_doc_id, iidnmt.inject_doc_id)
                                              GROUP BY iidnmt.inject_doc_id) doc_nm
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id = doc_dtl.inject_doc_id (+)
                                       and iidh.inject_doc_id = doc_nm.inject_doc_id (+)
                                       and iidr.rule          = DETAIL_BASIS
                                       and doc_dtl.total_tax_basis_dt is NOT NULL
                                       and doc_nm.total_nm_tax_basis   is NULL
                                       and ABS(iidh.total_cost - doc_dtl.total_tax_basis_dt) > DECODE(LP_calc_tolerance_ind,
                                                                                                      REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(doc_dtl.total_tax_basis_dt) * (LP_calc_tolerance/100)),
                                                                                                      REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                   ) iidt_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DETAIL_BASIS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_TOTAL_TAX(O_error_message IN OUT VARCHAR2,
                            I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                            I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                            I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_TOTAL_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_curr_cost_dec  NUMBER(1) := 0;

BEGIN

   if GET_CURR_COST_DEC(O_error_message,
                            L_curr_cost_dec,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           (select iidt.inject_doc_id,
                                                   SUM(iidt.tax_basis * (tax_rate/100)) total_dtl_tax_amount
                                              from im_inject_doc_tax iidt
                                             where iidt.inject_id     = NVL(I_inject_id, iidt.inject_id)
                                               and iidt.inject_doc_id = NVL(I_inject_doc_id, iidt.inject_doc_id)
                                             GROUP BY iidt.inject_doc_id) doc_tax,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id = doc_tax.inject_doc_id
                                       and iidr.rule          = TOTAL_TAX
                                       and ABS(ABS(round(doc_tax.total_dtl_tax_amount,L_curr_cost_dec)) - ABS(round(iidh.total_tax_amount,L_curr_cost_dec))) > DECODE(LP_calc_tolerance_ind,
                                                                                                              REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(iidh.total_tax_amount) * (LP_calc_tolerance/100)),
                                                                                                              REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                   ) iidt_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_TOTAL_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_HDR_DTL_QTY_MTCH(O_error_message IN OUT VARCHAR2,
                                   I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                   I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                   I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_HDR_DTL_QTY_MTCH';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule,
                                           iidh.doc_type,
                                           iidh.total_qty,
                                           iidh.ref_vendor vendor,
                                           SUM(iidd.qty) total_dtl_qty
                                      from im_inject_doc_head iidh,
                                           im_inject_doc_detail iidd,
                                           im_inject_doc_rule iidr,
                                           v_im_supp_site_attrib_expl ss
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id = iidd.inject_doc_id (+)
                                       and iidh.doc_type      <> REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                       and iidr.rule          = HDR_DTL_QTY_MTCH
                                       and ss.supplier        = iidh.vendor
                                       and ss.total_qty_required_ind = REIM_CONSTANTS.YN_YES
                                     GROUP BY iidh.inject_id,
                                              iidh.inject_doc_id,
                                              iidr.rule,
                                              iidh.doc_type,
                                              iidh.total_qty,
                                              iidh.ref_vendor
                                   ) iidt_inner
                             where iidt_inner.total_qty     is NOT NULL
                               and iidt_inner.total_dtl_qty is NOT NULL
                               and ABS(iidt_inner.total_qty - iidt_inner.total_dtl_qty) > REIM_CONSTANTS.ZERO;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_HDR_DTL_QTY_MTCH;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_REV_VAT_ITEM_ZERO_TAX(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50)    := 'REIM_DOCUMENT_SQL.VALIDATE_REV_VAT_ITEM_ZERO_TAX';

   L_user                    IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   --
   L_error_message           VARCHAR2(2000) := NULL;

BEGIN

   insert into im_rev_vat_doc_item_gtt (inject_id,
                                        inject_doc_id,
                                        transaction_id,
                                        doc_date,
                                        merch_type,
                                        detail_id,
                                        item,
                                        tax_code,
                                        tax_rate,
                                        tax_basis,
                                        vat_region,
                                        reverse_vat_threshold)
                                 --Merch invoices
                                 select iidh.inject_id,
                                        iidh.inject_doc_id,
                                        iidh.transaction_id,
                                        iidh.doc_date,
                                        NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO) merch_type,
                                        iidd.detail_id,
                                        iidd.item,
                                        iiddt.tax_code,
                                        iiddt.tax_rate,
                                        iiddt.tax_basis,
                                        vr.vat_region,
                                        vr.reverse_vat_threshold
                                   from im_inject_doc_head iidh,
                                        im_inject_doc_detail iidd,
                                        im_inject_doc_detail_tax iiddt,
                                        sups s,
                                        (select store loc,
                                                REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                                vat_region
                                           from store
                                         union all
                                         select wh loc,
                                                REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                                vat_region
                                           from wh) locs,
                                        vat_region vr,
                                        vat_item vi
                                  where iidh.inject_id           = NVL(I_inject_id, iidh.inject_id)
                                    and iidh.inject_doc_id       = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                    and iidh.doc_type            = REIM_CONSTANTS.DOC_TYPE_MRCHI
                                    and iidd.inject_doc_id       = iidh.inject_doc_id
                                    and iiddt.detail_id          = iidd.detail_id
                                    and s.supplier               = iidh.vendor
                                    and locs.loc                 = iidh.location
                                    and locs.loc_type            = iidh.loc_type
                                    and vr.vat_region            = locs.vat_region
                                    and s.vat_region             = locs.vat_region
                                    and vr.reverse_vat_threshold is NOT NULL
                                    and vi.item                  = iidd.item
                                    and vi.vat_region            = vr.vat_region
                                    and vi.reverse_vat_ind       = REIM_CONSTANTS.YN_YES
                                    and vi.vat_type              IN (REIM_CONSTANTS.TAX_TYPE_COST,
                                                                     REIM_CONSTANTS.TAX_TYPE_BOTH)
                                    and vi.active_date           = (select MAX(active_date)
                                                                      from vat_item v
                                                                     where v.item = vi.item
                                                                       and v.vat_region = vi.vat_region
                                                                       and v.vat_type   IN (REIM_CONSTANTS.TAX_TYPE_COST,
                                                                                            REIM_CONSTANTS.TAX_TYPE_BOTH)
                                                                       and v.active_date <= iidh.doc_date)
                                  union all
                                 -- Credit Notes whose reference docs have reverse vat
                                 select iidh.inject_id,
                                        iidh.inject_doc_id,
                                        iidh.transaction_id,
                                        iidh.doc_date,
                                        iidh.merch_type,
                                        iidd.detail_id,
                                        iidd.item,
                                        iiddt.tax_code,
                                        iiddt.tax_rate,
                                        iiddt.tax_basis,
                                        -9999 vat_region,
                                        -9999 reverse_vat_threshold
                                   from (select iidh.inject_id,
                                                iidh.inject_doc_id,
                                                iidh.transaction_id,
                                                iidh.doc_date,
                                                REIM_CONSTANTS.YN_NO merch_type
                                           from im_inject_doc_head iidh
                                          where iidh.inject_id                                                                  = NVL(I_inject_id, iidh.inject_id)
                                            and iidh.inject_doc_id                                                              = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                            and iidh.doc_type                                                                   = REIM_CONSTANTS.DOC_TYPE_CRDNT
                                            and REIM_INJECTOR_SQL.IS_CN_REVERSE_VAT_ELIGIBLE(NVL(iidh.ref_vendor, iidh.vendor),
                                                                                             iidh.doc_date,
                                                                                             iidh.ref_cnr_ext_doc_id,
                                                                                             iidh.ref_inv_ext_doc_id)           = REIM_CONSTANTS.YN_YES) iidh,
                                        im_inject_doc_detail iidd,
                                        im_inject_doc_detail_tax iiddt
                                  where iidd.inject_doc_id = iidh.inject_doc_id
                                    and iiddt.detail_id    = iidd.detail_id;

   --Documents from vendors which do not comply with reverse vat config would get rejected.
   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select inner_rvgtt.inject_id,
                                   inner_rvgtt.inject_doc_id,
                                   inner_rvgtt.rule,
                                   'Item Id = ' || inner_rvgtt.item,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (-- Non-RMS merch invoices eligible for reverse vat
                                    select rvgtt.inject_id,
                                           rvgtt.inject_doc_id,
                                           rvgtt.item,
                                           rvgtt.tax_rate,
                                           SUM(tax_basis) OVER (PARTITION BY rvgtt.inject_doc_id) tax_basis_sum,
                                           rvgtt.reverse_vat_threshold,
                                           REV_VAT_ITEM_ZERO_TAX rule
                                      from im_rev_vat_doc_item_gtt rvgtt
                                     where rvgtt.merch_type NOT IN (REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT,
                                                                    REIM_CONSTANTS.DOC_MERCH_TYPE_DSD,
                                                                    REIM_CONSTANTS.DOC_MERCH_TYPE_ERS)
                                       and rvgtt.reverse_vat_threshold <> -9999
                                    union all
                                    -- Credit notes eligible for reverse vat
                                    select rvgtt.inject_id,
                                           rvgtt.inject_doc_id,
                                           rvgtt.item,
                                           rvgtt.tax_rate,
                                           1 tax_basis_sum,         -- use constant value to pass threshold check in outer query
                                           1 reverse_vat_threshold, -- use constant value to pass threshold check in outer query
                                           REV_VAT_ITEM_ZERO_TAX rule
                                      from im_rev_vat_doc_item_gtt rvgtt
                                     where rvgtt.merch_type NOT IN (REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT,
                                                                    REIM_CONSTANTS.DOC_MERCH_TYPE_DSD,
                                                                    REIM_CONSTANTS.DOC_MERCH_TYPE_ERS)
                                       and rvgtt.reverse_vat_threshold = -9999) inner_rvgtt,
                                   im_inject_doc_rule iidr
                             where inner_rvgtt.reverse_vat_threshold <= inner_rvgtt.tax_basis_sum
                               and inner_rvgtt.tax_rate              <> REIM_CONSTANTS.ZERO
                               and inner_rvgtt.rule                  = iidr.rule;

   update im_inject_doc_head iidh
      set iidh.reverse_vat_ind = 'Y'
    where iidh.reverse_vat_ind = 'N'
      and EXISTS (select 'x'
                    from im_rev_vat_doc_item_gtt rvgtt,
                         im_inject_doc_error iide
                   where rvgtt.inject_id     = iidh.inject_id
                     and rvgtt.inject_doc_id = iidh.inject_doc_id
                     and rvgtt.inject_id     = iide.inject_id (+)
                     and rvgtt.inject_doc_id = iide.inject_doc_id (+)
                     and iide.inject_id      is NULL);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_REV_VAT_ITEM_ZERO_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_REASON_CODE(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                              I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_REASON_CODE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidd.inject_id,
                                   iidd.inject_doc_id,
                                   iidd.detail_id,
                                   iidr.rule,
                                   'Reason Code Id = ' || iidd.reason_code_id,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_detail iidd,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidd.inject_doc_id = iidh.inject_doc_id
                               and iidr.rule          = 'VALID_REASON_CODE_ID'
                               and (   (    iidh.doc_type       NOT IN (REIM_CONSTANTS.DOC_TYPE_CRDNT,
                                                                        REIM_CONSTANTS.DOC_TYPE_MRCHI,
                                                                        REIM_CONSTANTS.DOC_TYPE_NMRCHI)
                                        and iidd.reason_code_id is NULL)
                                    or (    iidd.reason_code_id is NOT NULL
                                        and iidh.doc_type       IN (REIM_CONSTANTS.DOC_TYPE_CRDNT,
                                                                    REIM_CONSTANTS.DOC_TYPE_MRCHI,
                                                                    REIM_CONSTANTS.DOC_TYPE_NMRCHI))
                                    or (    iidd.reason_code_id is NOT NULL
                                        and NOT EXISTS (select 'x'
                                                          from im_reason_codes irc
                                                         where irc.reason_code_id = iidd.reason_code_id))
                                    or (    iidd.reason_code_id is NOT NULL
                                        and EXISTS (select 'x'
                                                      from im_reason_codes irc
                                                     where irc.reason_code_id = iidd.reason_code_id
                                                       and Decode(iidh.doc_type,
                                                                  REIM_CONSTANTS.DOC_TYPE_DEBMEQ, REIM_CONSTANTS.REASON_CODE_ACTION_CBQ,
                                                                  REIM_CONSTANTS.DOC_TYPE_CRDNRQ, REIM_CONSTANTS.REASON_CODE_ACTION_CBQ,
                                                                  REIM_CONSTANTS.DOC_TYPE_DEBMEC, REIM_CONSTANTS.REASON_CODE_ACTION_CBC,
                                                                  REIM_CONSTANTS.DOC_TYPE_CRDNRC, REIM_CONSTANTS.REASON_CODE_ACTION_CBC,
                                                                  REIM_CONSTANTS.DOC_TYPE_CRDMEQ, REIM_CONSTANTS.REASON_CODE_ACTION_CMQ,
                                                                  REIM_CONSTANTS.DOC_TYPE_CRDMEC, REIM_CONSTANTS.REASON_CODE_ACTION_CMC) <> irc.action)));

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_REASON_CODE;
-------------------------------------------------------------------------------------------------------------
--Non-Merch Validation
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MERCH_CODE(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_NON_MERCH_CODE';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidnm.inject_id,
                                   iidnm.inject_doc_id,
                                   iidr.rule,
                                   'Non-Merchandise Code = ' || iidnm.non_merch_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_non_merch iidnm,
                                   im_inject_doc_rule iidr
                             where iidnm.inject_id     = NVL(I_inject_id, iidnm.inject_id)
                               and iidnm.inject_doc_id = NVL(I_inject_doc_id, iidnm.inject_doc_id)
                               and iidnm.non_merch_code is NOT NULL
                               and iidr.rule            = VALID_NMRCH_CODE
                               and NOT EXISTS (select 'x'
                                                 from non_merch_code_head
                                                where non_merch_code = iidnm.non_merch_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_NON_MERCH_CODE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_NM_TAX_NOT_IN_HDR(O_error_message IN OUT VARCHAR2,
                                        I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                        I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DTL_NM_TAX_NOT_IN_HDR';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   detail_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidnmt.inject_id,
                                   iidnmt.inject_doc_id,
                                   NULL detail_id,
                                   iidr.rule,
                                   'Tax code = ' ||iidnmt.tax_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_non_merch_tax iidnmt,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id       = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id   = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidnmt.inject_doc_id = iidh.inject_doc_id
                               and iidr.rule            = DTL_NM_TAX_NOT_IN_HDR
                               and NOT EXISTS (select 'x'
                                                 from im_inject_doc_tax iidt
                                                where iidt.inject_doc_id = iidnmt.inject_doc_id
                                                  and iidt.tax_code      = iidnmt.tax_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DTL_NM_TAX_NOT_IN_HDR;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MRCH_TAX(O_error_message IN OUT VARCHAR2,
                               I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_NON_MRCH_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_curr_cost_dec  NUMBER(1) := 0;

BEGIN

   if GET_CURR_COST_DEC(O_error_message,
                        L_curr_cost_dec,
                        I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (with doc_hdr as
                                      (select iidh.inject_id,
                                              iidh.inject_doc_id,
                                              iidh.doc_type,
                                              iidh.total_tax_amount,
                                              doc_dtl.total_tax_basis_dt total_tax_basis_dt,
                                              doc_dtl.total_tax_amount_dt total_tax_amount_dt,
                                              doc_nm.total_tax_basis_nm,
                                              doc_nm.total_tax_amount_nm,
                                              iidr.rule
                                         from im_inject_doc_head iidh,
                                              (select iidd.inject_doc_id,
                                                      SUM(iiddt.tax_basis) total_tax_basis_dt,
                                                      SUM(iiddt.tax_basis * (iiddt.tax_rate/100)) total_tax_amount_dt
                                                 from im_inject_doc_detail iidd,
                                                      im_inject_doc_detail_tax iiddt
                                                where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                                  and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                                  and iidd.detail_id     = iiddt.detail_id
                                                GROUP BY iidd.inject_doc_id
                                               union all
                                               select iicdt.inject_doc_id,
                                                      SUM(iicdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iicdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_complex_deal_tax iicdt
                                                where iicdt.inject_id     = NVL(I_inject_id, iicdt.inject_id)
                                                  and iicdt.inject_doc_id = NVL(I_inject_doc_id, iicdt.inject_doc_id)
                                                GROUP BY iicdt.inject_doc_id
                                               union all
                                               select iifdt.inject_doc_id,
                                                      SUM(iifdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iifdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_fixed_deal_tax iifdt
                                                where iifdt.inject_id     = NVL(I_inject_id, iifdt.inject_id)
                                                  and iifdt.inject_doc_id = NVL(I_inject_doc_id, iifdt.inject_doc_id)
                                                GROUP BY iifdt.inject_doc_id) doc_dtl,
                                              (select iidnmt.inject_doc_id,
                                                      SUM(iidnmt.tax_basis) total_tax_basis_nm,
                                                      SUM(iidnmt.tax_basis * (iidnmt.tax_rate/100)) total_tax_amount_nm
                                                 from im_inject_doc_non_merch_tax iidnmt
                                                where iidnmt.inject_id     = NVL(I_inject_id, iidnmt.inject_id)
                                                  and iidnmt.inject_doc_id = NVL(I_inject_doc_id, iidnmt.inject_doc_id)
                                                GROUP BY iidnmt.inject_doc_id) doc_nm,
                                              im_inject_doc_rule iidr
                                        where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                          and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                          and iidh.inject_doc_id = doc_dtl.inject_doc_id(+)
                                          and iidh.inject_doc_id = doc_nm.inject_doc_id(+)
                                          and iidr.rule          = NON_MRCH_TAX)
                                      ---
                                   select dh.inject_id,
                                          dh.inject_doc_id,
                                          dh.rule
                                     from doc_hdr dh
                                    where dh.doc_type = REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                      and dh.total_tax_basis_nm is NOT NULL
                                      and ABS(dh.total_tax_amount - dh.total_tax_amount_nm) > DECODE(LP_calc_tolerance_ind,
                                                                                                     REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(dh.total_tax_amount_nm) * (LP_calc_tolerance/100)),
                                                                                                     REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                    union all
                                   select dh.inject_id,
                                          dh.inject_doc_id,
                                          dh.rule
                                     from doc_hdr dh
                                    where dh.doc_type <> REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                      and dh.total_tax_basis_nm is NOT NULL
                                      and dh.total_tax_basis_dt is NOT NULL
                                      and ABS((ABS(round(dh.total_tax_amount,L_curr_cost_dec)) - ABS(round(dh.total_tax_amount_dt,L_curr_cost_dec))) - (round(dh.total_tax_amount_nm,L_curr_cost_dec))) > DECODE(LP_calc_tolerance_ind,
                                                                                                                                  REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(dh.total_tax_amount_nm) * (LP_calc_tolerance/100)),
                                                                                                                                  REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                   ) iidt_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_NON_MRCH_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MRCH_COST(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_NON_MRCH_COST';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (with doc_hdr as
                                      (select iidh.inject_id,
                                              iidh.inject_doc_id,
                                              iidh.doc_type,
                                              iidh.total_cost,
                                              doc_dtl.total_dtl_cost,
                                              doc_nm.total_non_merch_amt,
                                              iidr.rule
                                         from im_inject_doc_head iidh,
                                              (select iidd.inject_doc_id,
                                                      SUM(iidd.qty * iidd.unit_cost) total_dtl_cost
                                                 from im_inject_doc_detail iidd
                                                where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                                  and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                                GROUP BY iidd.inject_doc_id
                                               union all
                                               select iicdd.inject_doc_id,
                                                      SUM(iicdd.income_deal_curr) total_dtl_cost
                                                 from im_inject_complex_deal_detail iicdd
                                                where iicdd.inject_id     = NVL(I_inject_id, iicdd.inject_id)
                                                  and iicdd.inject_doc_id = NVL(I_inject_doc_id, iicdd.inject_doc_id)
                                                GROUP BY iicdd.inject_doc_id
                                               union all
                                               select iifdd.inject_doc_id,
                                                      SUM(iifdd.income) total_dtl_cost
                                                 from im_inject_fixed_deal_detail iifdd
                                                where iifdd.inject_id     = NVL(I_inject_id, iifdd.inject_id)
                                                  and iifdd.inject_doc_id = NVL(I_inject_doc_id, iifdd.inject_doc_id)
                                                GROUP BY iifdd.inject_doc_id) doc_dtl,
                                              (select iidnm.inject_doc_id,
                                                      SUM(iidnm.non_merch_amount) total_non_merch_amt
                                                 from im_inject_doc_non_merch iidnm
                                                where iidnm.inject_id     = NVL(I_inject_id, iidnm.inject_id)
                                                  and iidnm.inject_doc_id = NVL(I_inject_doc_id, iidnm.inject_doc_id)
                                                GROUP BY iidnm.inject_doc_id) doc_nm,
                                              im_inject_doc_rule iidr
                                        where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                          and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                          and iidh.inject_doc_id = doc_dtl.inject_doc_id(+)
                                          and iidh.inject_doc_id = doc_nm.inject_doc_id (+)
                                          and iidr.rule = NON_MRCH_COST)
                                      ---
                                   select dh.inject_id,
                                          dh.inject_doc_id,
                                          dh.rule
                                     from doc_hdr dh
                                    where dh.doc_type = REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                      and dh.total_non_merch_amt is NOT NULL
                                      and ABS(dh.total_cost - dh.total_non_merch_amt) > DECODE(LP_calc_tolerance_ind,
                                                                                               REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(dh.total_non_merch_amt) * (LP_calc_tolerance/100)),
                                                                                               REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                    union all
                                   select dh.inject_id,
                                          dh.inject_doc_id,
                                          dh.rule
                                     from doc_hdr dh
                                    where dh.doc_type <> REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                      and dh.total_non_merch_amt is NOT NULL
                                      and dh.total_dtl_cost is NOT NULL
                                      and ABS(ABS(ABS(dh.total_cost) - ABS(dh.total_dtl_cost)) - (ABS(dh.total_non_merch_amt))) > DECODE(LP_calc_tolerance_ind,
                                                                                                                       REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(dh.total_dtl_cost) * (LP_calc_tolerance/100)),
                                                                                                                       REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                  )  iidt_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_NON_MRCH_COST;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_NM_COST(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DETAIL_NM_COST';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidh.total_cost,
                                           doc_dtl.total_dtl_cost,
                                           doc_nm.total_non_merch_amt,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           (select iidd.inject_doc_id,
                                                      SUM(iidd.qty * iidd.unit_cost) total_dtl_cost
                                                 from im_inject_doc_detail iidd
                                                where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                                  and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                                GROUP BY iidd.inject_doc_id
                                               union all
                                               select iicdd.inject_doc_id,
                                                      SUM(iicdd.income_deal_curr) total_dtl_cost
                                                 from im_inject_complex_deal_detail iicdd
                                                where iicdd.inject_id     = NVL(I_inject_id, iicdd.inject_id)
                                                  and iicdd.inject_doc_id = NVL(I_inject_doc_id, iicdd.inject_doc_id)
                                                GROUP BY iicdd.inject_doc_id
                                               union all
                                               select iifdd.inject_doc_id,
                                                      SUM(iifdd.income) total_dtl_cost
                                                 from im_inject_fixed_deal_detail iifdd
                                                where iifdd.inject_id     = NVL(I_inject_id, iifdd.inject_id)
                                                  and iifdd.inject_doc_id = NVL(I_inject_doc_id, iifdd.inject_doc_id)
                                                GROUP BY iifdd.inject_doc_id) doc_dtl,
                                           (select iidnm.inject_doc_id,
                                                   SUM(iidnm.non_merch_amount) total_non_merch_amt
                                              from im_inject_doc_non_merch iidnm
                                             where iidnm.inject_id     = NVL(I_inject_id, iidnm.inject_id)
                                               and iidnm.inject_doc_id = NVL(I_inject_doc_id, iidnm.inject_doc_id)
                                             GROUP BY iidnm.inject_doc_id) doc_nm,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id = doc_dtl.inject_doc_id(+)
                                       and iidh.inject_doc_id = doc_nm.inject_doc_id(+)
                                       and iidr.rule          = DETAIL_NM_COST) iidt_inner
                             where iidt_inner.total_dtl_cost      is NOT NULL
                               and iidt_inner.total_non_merch_amt is NOT NULL
                               and ABS((iidt_inner.total_cost) - (iidt_inner.total_dtl_cost + iidt_inner.total_non_merch_amt)) > DECODE(LP_calc_tolerance_ind,
                                                                                                                                        REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(iidt_inner.total_dtl_cost + iidt_inner.total_non_merch_amt) * (LP_calc_tolerance/100)),
                                                                                                                                        REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DETAIL_NM_COST;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_NON_MRCH_BASIS(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_NON_MRCH_BASIS';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (with doc_hdr as
                                       (select iidh.inject_id,
                                               iidh.inject_doc_id,
                                               iidh.doc_type,
                                               iidh.total_cost,
                                               doc_dtl.total_tax_basis_dt,
                                               doc_nm.total_nm_tax_basis,
                                               iidr.rule
                                          from im_inject_doc_head iidh,
                                               (select iidd.inject_doc_id,
                                                      SUM(iiddt.tax_basis) total_tax_basis_dt,
                                                      SUM(iiddt.tax_basis * (iiddt.tax_rate/100)) total_tax_amount_dt
                                                 from im_inject_doc_detail iidd,
                                                      im_inject_doc_detail_tax iiddt
                                                where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                                  and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                                  and iidd.detail_id     = iiddt.detail_id
                                                GROUP BY iidd.inject_doc_id
                                               union all
                                               select iicdt.inject_doc_id,
                                                      SUM(iicdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iicdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_complex_deal_tax iicdt
                                                where iicdt.inject_id     = NVL(I_inject_id, iicdt.inject_id)
                                                  and iicdt.inject_doc_id = NVL(I_inject_doc_id, iicdt.inject_doc_id)
                                                GROUP BY iicdt.inject_doc_id
                                               union all
                                               select iifdt.inject_doc_id,
                                                      SUM(iifdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iifdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_fixed_deal_tax iifdt
                                                where iifdt.inject_id     = NVL(I_inject_id, iifdt.inject_id)
                                                  and iifdt.inject_doc_id = NVL(I_inject_doc_id, iifdt.inject_doc_id)
                                                GROUP BY iifdt.inject_doc_id) doc_dtl,
                                               (select iidnmt.inject_doc_id,
                                                       SUM(iidnmt.tax_basis) total_nm_tax_basis
                                                  from im_inject_doc_non_merch_tax iidnmt
                                                 where iidnmt.inject_id     = NVL(I_inject_id, iidnmt.inject_id)
                                                   and iidnmt.inject_doc_id = NVL(I_inject_doc_id, iidnmt.inject_doc_id)
                                                 GROUP BY iidnmt.inject_doc_id) doc_nm,
                                               im_inject_doc_rule iidr
                                         where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                           and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                           and iidh.inject_doc_id = doc_dtl.inject_doc_id(+)
                                           and iidh.inject_doc_id = doc_nm.inject_doc_id(+)
                                           and iidr.rule = NON_MRCH_BASIS)
                                        ---
                                     select dh.inject_id,
                                            dh.inject_doc_id,
                                            dh.rule
                                       from doc_hdr dh
                                      where dh.doc_type = REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                        and dh.total_nm_tax_basis is NOT NULL
                                        and ABS(dh.total_cost - dh.total_nm_tax_basis) > DECODE(LP_calc_tolerance_ind,
                                                                                                REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(dh.total_nm_tax_basis) * (LP_calc_tolerance/100)),
                                                                                                REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                      union all
                                     select dh.inject_id,
                                            dh.inject_doc_id,
                                            dh.rule
                                       from doc_hdr dh
                                      where dh.doc_type <> REIM_CONSTANTS.DOC_TYPE_NMRCHI
                                        and dh.total_nm_tax_basis is NOT NULL
                                        and dh.total_tax_basis_dt is NOT NULL
                                        and ABS((ABS(dh.total_cost) - ABS(dh.total_tax_basis_dt)) - (ABS(dh.total_nm_tax_basis))) > DECODE(LP_calc_tolerance_ind,
                                                                                                                            REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(dh.total_tax_basis_dt) * (LP_calc_tolerance/100)),
                                                                                                                            REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                   )  iidt_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_NON_MRCH_BASIS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_NM_BASIS(O_error_message IN OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DETAIL_NM_BASIS';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (select iidh.inject_id,
                                           iidh.inject_doc_id,
                                           iidr.rule
                                      from im_inject_doc_head iidh,
                                           (select iidd.inject_doc_id,
                                                      SUM(iiddt.tax_basis) total_tax_basis_dt,
                                                      SUM(iiddt.tax_basis * (iiddt.tax_rate/100)) total_tax_amount_dt
                                                 from im_inject_doc_detail iidd,
                                                      im_inject_doc_detail_tax iiddt
                                                where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                                  and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                                  and iidd.detail_id     = iiddt.detail_id
                                                GROUP BY iidd.inject_doc_id
                                               union all
                                               select iicdt.inject_doc_id,
                                                      SUM(iicdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iicdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_complex_deal_tax iicdt
                                                where iicdt.inject_id     = NVL(I_inject_id, iicdt.inject_id)
                                                  and iicdt.inject_doc_id = NVL(I_inject_doc_id, iicdt.inject_doc_id)
                                                GROUP BY iicdt.inject_doc_id
                                               union all
                                               select iifdt.inject_doc_id,
                                                      SUM(iifdt.tax_basis) total_tax_basis_dt,
                                                      SUM(iifdt.tax_amount) total_tax_amount_dt
                                                 from im_inject_fixed_deal_tax iifdt
                                                where iifdt.inject_id     = NVL(I_inject_id, iifdt.inject_id)
                                                  and iifdt.inject_doc_id = NVL(I_inject_doc_id, iifdt.inject_doc_id)
                                                GROUP BY iifdt.inject_doc_id) doc_dtl,
                                               (select iidnmt.inject_doc_id,
                                                       SUM(iidnmt.tax_basis) total_nm_tax_basis
                                                  from im_inject_doc_non_merch_tax iidnmt
                                                 where iidnmt.inject_id     = NVL(I_inject_id, iidnmt.inject_id)
                                                   and iidnmt.inject_doc_id = NVL(I_inject_doc_id, iidnmt.inject_doc_id)
                                                 GROUP BY iidnmt.inject_doc_id) doc_nm,
                                           im_inject_doc_rule iidr
                                     where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                       and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                       and iidh.inject_doc_id = doc_dtl.inject_doc_id(+)
                                       and iidh.inject_doc_id = doc_nm.inject_doc_id(+)
                                       and iidr.rule          = DETAIL_NM_BASIS
                                       and doc_dtl.total_tax_basis_dt is NOT NULL
                                       and doc_nm.total_nm_tax_basis  is NOT NULL
                                       and ABS((iidh.total_cost) - (doc_dtl.total_tax_basis_dt + doc_nm.total_nm_tax_basis)) > DECODE(LP_calc_tolerance_ind,
                                                                                                                                      REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(doc_dtl.total_tax_basis_dt + doc_nm.total_nm_tax_basis) * (LP_calc_tolerance/100)),
                                                                                                                                      REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance)
                                   )  iidt_inner;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DETAIL_NM_BASIS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DTL_NM_TAX(O_error_message IN OUT VARCHAR2,
                             I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                             I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DTL_NM_TAX';

   L_obj_vendor_tax_tbl OBJ_VENDOR_TAX_DATA_TBL     := NULL;
   L_user               IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   if GET_VENDOR_TAX_CODES(O_error_message,
                           L_obj_vendor_tax_tbl,
                           I_inject_id,
                           I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidh.inject_id,
                                   iidh.inject_doc_id,
                                   iidr.rule,
                                   'Tax code = ' || iidnmt.tax_code || ' for Non Merchandise Code = ' || iidnmt.non_merch_code,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from im_inject_doc_head iidh,
                                   im_inject_doc_non_merch iidnm,
                                   im_inject_doc_non_merch_tax iidnmt,
                                   im_inject_doc_rule iidr
                             where iidh.inject_id       = NVL(I_inject_id, iidh.inject_id)
                               and iidh.inject_doc_id   = NVL(I_inject_doc_id, iidh.inject_doc_id)
                               and iidnm.inject_doc_id  = iidh.inject_doc_id
                               and iidnm.inject_doc_id  = iidnmt.inject_doc_id
                               and iidnm.non_merch_code = iidnmt.non_merch_code
                               and iidr.rule            = VALID_DTL_NM_TAX
                               and NOT EXISTS (select 'x'
                                                from table(cast(L_obj_vendor_tax_tbl as OBJ_VENDOR_TAX_DATA_TBL)) tbl
                                               where tbl.vendor_id   = DECODE(iidh.doc_type,
                                                                               REIM_CONSTANTS.DOC_TYPE_NMRCHI, iidh.ref_vendor,
                                                                               DECODE(iidh.deal_id,NULL,iidh.vendor,iidh.ref_vendor))
                                                 and tbl.vendor_type = iidh.vendor_type
                                                 and tbl.eff_date    = iidh.doc_date
                                                 and tbl.tax_code    = iidnmt.tax_code);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DTL_NM_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DETAIL_NM_TAX(O_error_message IN OUT VARCHAR2,
                                I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DETAIL_NM_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select iidt_inner.inject_id,
                                   iidt_inner.inject_doc_id,
                                   iidt_inner.rule,
                                   NULL error_context,
                                   REIM_CONSTANTS.YN_YES,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                             from (select iidh.inject_id,
                                          iidh.inject_doc_id,
                                          iidh.total_tax_amount,
                                          doc_dtl.total_tax_basis_dt,
                                          doc_dtl.total_tax_amount_dt,
                                          doc_nm.total_tax_basis_nm,
                                          doc_nm.total_tax_amount_nm,
                                          iidr.rule
                                     from im_inject_doc_head iidh,
                                          im_inject_doc_rule iidr,
                                          (select iidd.inject_doc_id,
                                                   SUM(iiddt.tax_basis) total_tax_basis_dt,
                                                   SUM(iiddt.tax_basis * (iiddt.tax_rate/100)) total_tax_amount_dt
                                              from im_inject_doc_detail iidd,
                                                   im_inject_doc_detail_tax iiddt
                                             where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
                                               and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
                                               and iidd.detail_id     = iiddt.detail_id
                                             GROUP BY iidd.inject_doc_id
                                            union all
                                            select iicdt.inject_doc_id,
                                                   SUM(iicdt.tax_basis) total_tax_basis_dt,
                                                   SUM(iicdt.tax_amount) total_tax_amount_dt
                                              from im_inject_complex_deal_tax iicdt
                                             where iicdt.inject_id     = NVL(I_inject_id, iicdt.inject_id)
                                               and iicdt.inject_doc_id = NVL(I_inject_doc_id, iicdt.inject_doc_id)
                                             GROUP BY iicdt.inject_doc_id
                                            union all
                                            select iifdt.inject_doc_id,
                                                   SUM(iifdt.tax_basis) total_tax_basis_dt,
                                                   SUM(iifdt.tax_amount) total_tax_amount_dt
                                              from im_inject_fixed_deal_tax iifdt
                                             where iifdt.inject_id     = NVL(I_inject_id, iifdt.inject_id)
                                               and iifdt.inject_doc_id = NVL(I_inject_doc_id, iifdt.inject_doc_id)
                                             GROUP BY iifdt.inject_doc_id) doc_dtl,
                                           (select iidnmt.inject_doc_id,
                                                   SUM(iidnmt.tax_basis) total_tax_basis_nm,
                                                   SUM(iidnmt.tax_basis * (iidnmt.tax_rate/100)) total_tax_amount_nm
                                              from im_inject_doc_non_merch_tax iidnmt
                                             where iidnmt.inject_id     = NVL(I_inject_id, iidnmt.inject_id)
                                               and iidnmt.inject_doc_id = NVL(I_inject_doc_id, iidnmt.inject_doc_id)
                                             GROUP BY iidnmt.inject_doc_id) doc_nm
                                    where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                                      and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                                      and iidh.inject_doc_id = doc_dtl.inject_doc_id(+)
                                      and iidh.inject_doc_id = doc_nm.inject_doc_id(+)
                                      and iidr.rule          = DETAIL_NM_TAX
                                  ) iidt_inner
                            where iidt_inner.total_tax_basis_dt is NOT NULL
                              and iidt_inner.total_tax_basis_nm is NOT NULL
                              and ABS((iidt_inner.total_tax_amount) - (iidt_inner.total_tax_amount_dt + iidt_inner.total_tax_amount_nm)) > DECODE(LP_calc_tolerance_ind,
                                                                                                                                                  REIM_CONSTANTS.CALC_TOL_IND_PERCENT, (ABS(iidt_inner.total_tax_amount_dt + iidt_inner.total_tax_amount_nm) * (LP_calc_tolerance/100)),
                                                                                                                                                  REIM_CONSTANTS.CALC_TOL_IND_AMOUNT, LP_calc_tolerance);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DETAIL_NM_TAX;

-------------------------------------------------------------------------------------------------------------
FUNCTION MOVE_ERROR_DOCUMENTS(O_error_message IN OUT VARCHAR2,
                              I_old_inject_id IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_new_inject_id IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.MOVE_ERROR_DOCUMENTS';

BEGIN

   LOGGER.LOG_INFORMATION('Start '             || L_program ||
                          ' I_old_inject_id: ' || I_old_inject_id ||
                          ' I_new_inject_id: ' || I_new_inject_id);

   delete from gtt_num_num_str_str_date_date;
   insert into gtt_num_num_str_str_date_date(number_1)
   select iide.inject_doc_id
     from im_inject_doc_error iide
    where iide.inject_id = I_old_inject_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert docs with errors into gtt - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   update im_inject_doc_error iide
      set iide.inject_id     = I_new_inject_id
    where iide.inject_id     = I_old_inject_id
      and iide.inject_doc_id IN (select number_1
                                   from gtt_num_num_str_str_date_date);

   update im_inject_doc_comments iidc
      set iidc.inject_id     = I_new_inject_id
    where iidc.inject_id     = I_old_inject_id
      and iidc.inject_doc_id IN (select number_1
                                   from gtt_num_num_str_str_date_date);

   update im_inject_doc_detail iidd
      set iidd.inject_id     = I_new_inject_id
    where iidd.inject_id     = I_old_inject_id
      and iidd.inject_doc_id IN (select number_1
                                   from gtt_num_num_str_str_date_date);

   update im_inject_doc_non_merch iidnm
      set iidnm.inject_id     = I_new_inject_id
    where iidnm.inject_id     = I_old_inject_id
      and iidnm.inject_doc_id IN (select number_1
                                   from gtt_num_num_str_str_date_date);

   update im_inject_doc_tax iidt
      set iidt.inject_id     = I_new_inject_id
    where iidt.inject_id     = I_old_inject_id
      and iidt.inject_doc_id IN (select number_1
                                   from gtt_num_num_str_str_date_date);

   update im_inject_doc_head iidh
      set iidh.inject_id     = I_new_inject_id
    where iidh.inject_id     = I_old_inject_id
      and iidh.inject_doc_id IN (select number_1
                                   from gtt_num_num_str_str_date_date);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END MOVE_ERROR_DOCUMENTS;
-------------------------------------------------------------------------------------------------------------
FUNCTION POP_DEFLT_VALUES(O_error_message IN OUT VARCHAR2,
                          I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                          I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.POP_DEFLT_VALUES';

BEGIN

   -- Populate Vendor based on Supplier Site
   merge into im_inject_doc_head tgt
   using (select s.supplier_parent ref_vendor,
                 iidh.inject_doc_id
            from im_inject_doc_head iidh,
                 sups s
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
             and s.supplier         = iidh.vendor
             and iidh.ref_vendor    is NULL) src
   on (src.inject_doc_id = tgt.inject_doc_id)
   when MATCHED then
   update
      set tgt.ref_vendor = src.ref_vendor;

   LOGGER.LOG_INFORMATION(L_program||' Populate Vendor based on Supplier Site - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate Terms from PO/ Supp Site/partner
   merge into im_inject_doc_head tgt
   using (select NVL(oh.terms, s.terms) terms,
                 iidh.inject_doc_id
            from im_inject_doc_head iidh,
                 ordhead oh,
                 sups s
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
             and iidh.terms         is NULL
             and s.supplier         = iidh.vendor
             and oh.order_no (+)    = iidh.order_no
          union all
          select p.terms,
                 iidh.inject_doc_id
            from im_inject_doc_head iidh,
                 partner p
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidh.vendor_type   <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
             and iidh.terms         is NULL
             and p.partner_id       = iidh.vendor) src
   on (src.inject_doc_id = tgt.inject_doc_id)
   when MATCHED then
   update
      set tgt.terms = src.terms;

   LOGGER.LOG_INFORMATION(L_program||' Populate Terms from PO/ Supp Site/partner - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate Due date based on terms
   merge into im_inject_doc_head tgt
   using(select case
                   when d.fixed_date is NOT NULL then
                      d.fixed_date
                   when Nvl(d.discdays, 0) > 0 then
                      case
                         when iidh.doc_date + d.discdays >= get_vdate then
                            iidh.doc_date + d.discdays
                         else
                            iidh.doc_date + d.duedays
                      end
                   when Nvl(d.duedays, -1) >= 0  then
                      iidh.doc_date + d.duedays
                   when Nvl(d.disc_dom, 0) > 0 then
                      case
                         when LP_vdate <= (case
                                              when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(iidh.doc_date, d.disc_mm_fwd),'DD') then
                                                 case
                                                    when d.disc_dom = 31 or (d.disc_dom > 28 AND '02' = To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.disc_mm_fwd),1), 'MON'),'MM')) then
                                                       Last_Day(Trunc(Add_Months(Add_Months(iidh.doc_date, d.disc_mm_fwd),1), 'MON'))
                                                    else
                                                       To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.disc_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                                 end
                                              else
                                                 case
                                                    when d.disc_dom = 31 or (d.disc_dom > 28 AND '02' = To_Char(Trunc(Add_Months(iidh.doc_date, d.disc_mm_fwd), 'MON'),'MM')) then
                                                       Last_Day(Trunc(Add_Months(iidh.doc_date, d.disc_mm_fwd), 'MON'))
                                                    else
                                                       To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(iidh.doc_date, d.disc_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                                 end
                                           end) then
                            case
                               when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(iidh.doc_date, d.disc_mm_fwd),'DD') then
                                  case
                                     when d.disc_dom = 31 or (d.disc_dom > 28 AND '02' = To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.disc_mm_fwd),1), 'MON'),'MM')) then
                                        Last_Day(Trunc(Add_Months(Add_Months(iidh.doc_date, d.disc_mm_fwd),1), 'MON'))
                                     else
                                        To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.disc_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                  end
                               else
                                  case
                                     when d.disc_dom = 31 or (d.disc_dom > 28 AND '02' = To_Char(Trunc(Add_Months(iidh.doc_date, d.disc_mm_fwd), 'MON'),'MM')) then
                                        Last_Day(Trunc(Add_Months(iidh.doc_date, d.disc_mm_fwd), 'MON'))
                                     else
                                        To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(iidh.doc_date, d.disc_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                  end
                            end
                         when Nvl(d.due_dom, 0) > 0  then
                            case
                               when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(iidh.doc_date, d.due_mm_fwd),'DD') then
                                  case
                                     when d.due_dom = 31 or (d.due_dom > 28 AND '02' = To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.due_mm_fwd),1), 'MON'),'MM')) then
                                        Last_Day(Trunc(Add_Months(Add_Months(iidh.doc_date, d.due_mm_fwd),1), 'MON'))
                                     else
                                        To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.due_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                     end
                               else
                                  case
                                     when d.due_dom = 31 or (d.due_dom > 28 AND '02' = To_Char(Trunc(Add_Months(iidh.doc_date, d.due_mm_fwd), 'MON'),'MM')) then
                                        Last_Day(Trunc(Add_Months(iidh.doc_date, d.due_mm_fwd), 'MON'))
                                     else
                                        To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(iidh.doc_date, d.due_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                  end
                            end
                         else
                            iidh.doc_date
                      end
                   when Nvl(d.due_dom, 0) > 0 then
                      case
                         when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(iidh.doc_date, d.due_mm_fwd),'DD') then
                            case
                               when d.due_dom = 31 or (d.due_dom > 28 AND '02' = To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.due_mm_fwd),1), 'MON'),'MM')) then
                                  Last_Day(Trunc(Add_Months(Add_Months(iidh.doc_date, d.due_mm_fwd),1), 'MON'))
                               else
                                  To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(iidh.doc_date, d.due_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                            end
                         else
                            case
                               when d.due_dom = 31 or (d.due_dom > 28 AND '02' = To_Char(Trunc(Add_Months(iidh.doc_date, d.due_mm_fwd), 'MON'),'MM')) then
                                  Last_Day(Trunc(Add_Months(iidh.doc_date, d.due_mm_fwd), 'MON'))
                               else
                                  To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(iidh.doc_date, d.due_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                            end
                      end
                   else
                      iidh.doc_date
                end due_date,
                iidh.inject_doc_id
           from im_inject_doc_head iidh,
                terms_head h,
                terms_detail d
          where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
            and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
            and iidh.due_date      is NULL
            and iidh.terms         is NOT NULL
            and h.terms            = iidh.terms
            and d.terms            = h.terms
            and d.enabled_flag     = REIM_CONSTANTS.YN_YES
            and iidh.doc_date      between nvl(d.start_date_active, iidh.doc_date) and nvl(d.end_date_active, iidh.doc_date)) src
        on (src.inject_doc_id = tgt.inject_doc_id)
   when MATCHED then
      update
         set tgt.due_date = src.due_date;

   LOGGER.LOG_INFORMATION(L_program||' Populate Due date based on terms - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate currency_code from PO/Supp Site/partner
   merge into im_inject_doc_head tgt
   using (select NVL(oh.currency_code, s.currency_code) currency_code,
                 iidh.inject_doc_id
            from im_inject_doc_head iidh,
                 ordhead oh,
                 sups s
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidh.vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
             and iidh.currency_code is NULL
             and s.supplier         = iidh.vendor
             and oh.order_no (+)    = iidh.order_no
          union all
          select p.currency_code,
                 iidh.inject_doc_id
            from im_inject_doc_head iidh,
                 partner p
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidh.vendor_type   <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
             and iidh.currency_code is NULL
             and p.partner_id       = iidh.vendor) src
   on (src.inject_doc_id = tgt.inject_doc_id)
   when MATCHED then
   update
      set tgt.currency_code = src.currency_code;

   LOGGER.LOG_INFORMATION(L_program||' Populate currency_code from PO/Supp Site/partner - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate exchange_rate from PO 

   merge into im_inject_doc_head tgt
   using (select iidh.inject_doc_id,
                 oh.exchange_rate
            from im_inject_doc_head iidh,
                 ordhead oh
            where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
              and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
              and iidh.exchange_rate is NULL
              and iidh.RTV_IND       = REIM_CONSTANTS.YN_NO
              and iidh.order_no      is NOT NULL
              and oh.order_no        = iidh.order_no
              and not exists (select 'x'
                                from im_inject_doc_error iide
                               where iide.inject_doc_id  = iidh.inject_doc_id
                                 and iide.status         IN (REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                                             REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_ROUTED))) src
    on (src.inject_doc_id = tgt.inject_doc_id)
    when matched then
       update set tgt.exchange_rate = src.exchange_rate;

   -- ORDER NUMBER NULL OR ORDER IS NOT YET APPROVED POPULATE BASED ON DOC_DATE

   merge into im_inject_doc_head tgt
   using (with docs as (select iidh.inject_doc_id,
                               iidh.currency_code,
                               NVL(oh.orig_approval_date, iidh.doc_date) exch_date
                          from im_inject_doc_head iidh,
                               ordhead oh
                         where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
                           and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
                           and oh.order_no (+)    = iidh.order_no
                           and iidh.exchange_rate is NULL)
          select d.inject_doc_id,
                 cc.exchange_rate,
                 RANK() OVER (PARTITION BY d.inject_doc_id,
                                           from_currency,
                                           to_currency,
                                           exchange_type
                                  ORDER BY effective_date desc) date_rank
            from docs d,
                 mv_currency_conversion_rates cc,
                 system_config_options so
           where cc.exchange_type  = DECODE(so.consolidation_ind,
                                            REIM_CONSTANTS.YN_YES, REIM_CONSTANTS.EXCH_TYPE_CONSOLIDATED,
                                            REIM_CONSTANTS.EXCH_TYPE_OPERATIONAL)
             and cc.from_currency  = so.currency_code
             and cc.to_currency    = d.currency_code
             and cc.effective_date <= d.exch_date) src
   on (    src.inject_doc_id = tgt.inject_doc_id
       and src.date_rank     = REIM_CONSTANTS.ONE)
   when MATCHED then
   update
      set tgt.exchange_rate = src.exchange_rate;

   LOGGER.LOG_INFORMATION(L_program||' Populate exchange_rate from currency and PO date/doc date - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate Tax Rates on im_inject_doc_tax based on tax code and doc date
   merge into im_inject_doc_tax tgt
   using (select iidt.inject_doc_id,
                 iidt.tax_code,
                 vcr.vat_rate,
                 RANK() OVER (PARTITION BY iidt.inject_doc_id,
                                           iidt.tax_code
                                  ORDER BY vcr.active_date desc) date_rank
            from im_inject_doc_head iidh,
                 im_inject_doc_tax iidt,
                 vat_code_rates vcr
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidt.inject_doc_id = iidh.inject_doc_id
             and iidt.tax_rate      is NULL
             and vcr.vat_code       = iidt.tax_code
             and vcr.active_date    <= iidh.doc_date) src
   on (    src.inject_doc_id = tgt.inject_doc_id
       and src.tax_code      = tgt.tax_code
       and src.date_rank     = REIM_CONSTANTS.ONE)
   when MATCHED then
   update
      set tgt.tax_rate   = src.vat_rate,
          tgt.tax_amount = NVL(tgt.tax_amount, tgt.tax_basis * (src.vat_rate/100));

   LOGGER.LOG_INFORMATION(L_program||' Populate tax rate on im_inject_doc_tax based on tax code and doc date - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate Tax Rates on im_inject_doc_detail_tax based on tax code and doc date
   merge into im_inject_doc_detail_tax tgt
   using (select iiddt.detail_id,
                 iiddt.tax_code,
                 vcr.vat_rate,
                 RANK() OVER (PARTITION BY iiddt.detail_id,
                                           iiddt.tax_code
                                  ORDER BY vcr.active_date desc) date_rank
            from im_inject_doc_head iidh,
                 im_inject_doc_detail iidd,
                 im_inject_doc_detail_tax iiddt,
                 vat_code_rates vcr
           where iidh.inject_id     = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidd.inject_doc_id = iidh.inject_doc_id
             and iiddt.detail_id    = iidd.detail_id
             and iiddt.tax_rate     is NULL
             and vcr.vat_code       = iiddt.tax_code
             and vcr.active_date    <= iidh.doc_date) src
   on (    src.detail_id = tgt.detail_id
       and src.tax_code  = tgt.tax_code
       and src.date_rank = REIM_CONSTANTS.ONE)
   when MATCHED then
   update
      set tgt.tax_rate   = src.vat_rate,
          --tgt.tax_amount = NVL(tgt.tax_amount, tgt.tax_basis * (src.vat_rate/100));
          tgt.tax_amount = DECODE(tgt.tax_amount,-1,tgt.tax_basis * (src.vat_rate/100),NVL(tgt.tax_amount, tgt.tax_basis * (src.vat_rate/100)));

   LOGGER.LOG_INFORMATION(L_program||' Populate Tax Rates on im_inject_doc_detail_tax based on tax code and doc date - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate Tax Rates on im_inject_doc_non_merch_tax based on tax code and doc date
   merge into im_inject_doc_non_merch_tax tgt
   using (select iidnmt.inject_doc_id,
                 iidnmt.non_merch_code,
                 iidnmt.tax_code,
                 vcr.vat_rate,
                 RANK() OVER (PARTITION BY iidnmt.inject_doc_id,
                                           iidnmt.non_merch_code,
                                           iidnmt.tax_code
                                  ORDER BY vcr.active_date desc) date_rank
            from im_inject_doc_head iidh,
                 im_inject_doc_non_merch_tax iidnmt,
                 vat_code_rates vcr
           where iidh.inject_id       = NVL(I_inject_id, iidh.inject_id)
             and iidh.inject_doc_id   = NVL(I_inject_doc_id, iidh.inject_doc_id)
             and iidnmt.inject_doc_id = iidh.inject_doc_id
             and iidnmt.tax_rate      is NULL
             and vcr.vat_code         = iidnmt.tax_code
             and vcr.active_date      <= iidh.doc_date) src
   on (    src.inject_doc_id  = tgt.inject_doc_id
       and src.non_merch_code = tgt.non_merch_code
       and src.tax_code       = tgt.tax_code
       and src.date_rank      = REIM_CONSTANTS.ONE)
   when MATCHED then
   update
      set tgt.tax_rate   = src.vat_rate,
          tgt.tax_amount = NVL(tgt.tax_amount, tgt.tax_basis * (src.vat_rate/100));

   LOGGER.LOG_INFORMATION(L_program||' Populate Tax Rates on im_inject_doc_non_merch_tax based on tax code and doc date - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   -- Populate total_qty from currency and PO date/doc date
   merge into im_inject_doc_head tgt
   using (select iidd.inject_id,
                 iidd.inject_doc_id,
                 SUM(iidd.qty) total_dtl_qty
            from im_inject_doc_detail iidd
           where iidd.inject_id     = NVL(I_inject_id, iidd.inject_id)
             and iidd.inject_doc_id = NVL(I_inject_doc_id, iidd.inject_doc_id)
           GROUP BY iidd.inject_id,
                    iidd.inject_doc_id) src
   on (src.inject_doc_id = tgt.inject_doc_id)
   when MATCHED then
   update
      set tgt.total_qty = src.total_dtl_qty
    where tgt.total_qty is NULL;

   LOGGER.LOG_INFORMATION(L_program||' Populate total_qty based on details - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END POP_DEFLT_VALUES;
-------------------------------------------------------------------------------------------------------------
FUNCTION PRE_VALIDATE_TEMPLATE_DATA(O_error_message IN OUT VARCHAR2,
                                    I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                    I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.PRE_VALIDATE_TEMPLATE_DATA';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   insert into im_inject_doc_error(inject_id,
                                   inject_doc_id,
                                   rule,
                                   error_context,
                                   fixable,
                                   status,
                                   creation_date,
                                   created_by,
                                   last_updated_by,
                                   last_update_date,
                                   object_version_id,
                                   trial_id)
                            select inner.inject_id,
                                   inner.inject_doc_id,
                                   iidr.rule,
                                   inner.error_context,
                                   REIM_CONSTANTS.YN_NO,
                                   REIM_CONSTANTS.INJ_DOC_ERROR_STATUS_NEW,
                                   SYSDATE,
                                   L_user,
                                   L_user,
                                   SYSDATE,
                                   LP_object_version_id,
                                   I_trial_id
                              from (with inject_docs as (select distinct inject_id,
                                                                inject_doc_id
                                                           from im_inject_doc_row iidr
                                                          where iidr.inject_id = I_inject_id),
                                         mandtry_wksht as (select idr.inject_id,
                                                                  stwd.wksht_key
                                                             from im_inject_request idr,
                                                                  s9t_tmpl_wksht_def stwd
                                                            where idr.inject_id     = I_inject_id
                                                              and stwd.template_key = idr.template_key
                                                              and stwd.mandatory    = 'Y')
                                    select id.inject_id,
                                           id.inject_doc_id,
                                           mw.wksht_key error_context
                                      from inject_docs id,
                                           mandtry_wksht mw,
                                           im_inject_doc_head iidh
                                     where mw.inject_id       = id.inject_id
                                       and mw.wksht_key       = 'DOC_HEADER'
                                       and iidh.inject_id (+) = id.inject_id
                                       and iidh.inject_id     is NULL
                                    union all
                                    select id.inject_id,
                                           id.inject_doc_id,
                                           mw.wksht_key error_context
                                      from inject_docs id,
                                           mandtry_wksht mw,
                                           im_inject_doc_tax iidt
                                     where mw.inject_id       = id.inject_id
                                       and mw.wksht_key       = 'DOC_TAX_BREAKDOWN'
                                       and iidt.inject_id (+) = id.inject_id
                                       and iidt.inject_id     is NULL
                                    union all
                                    select id.inject_id,
                                           id.inject_doc_id,
                                           mw.wksht_key error_context
                                      from inject_docs id,
                                           mandtry_wksht mw,
                                           im_inject_doc_non_merch iidnm
                                     where mw.inject_id        = id.inject_id
                                       and mw.wksht_key        = 'DOC_NON_MERCH'
                                       and iidnm.inject_id (+) = id.inject_id
                                       and iidnm.inject_id     is NULL
                                    union all
                                    select id.inject_id,
                                           id.inject_doc_id,
                                           mw.wksht_key error_context
                                      from inject_docs id,
                                           mandtry_wksht mw,
                                           im_inject_doc_detail iidd
                                     where mw.inject_id       = id.inject_id
                                       and mw.wksht_key       IN ('DOC_REASON_CODES',
                                                                  'DOC_DETAILS')
                                       and iidd.inject_id (+) = id.inject_id
                                       and iidd.inject_id     is NULL) inner,
                                   im_inject_doc_rule iidr
                             where iidr.rule = PV_TEMPLATE_DATA;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END PRE_VALIDATE_TEMPLATE_DATA;
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-- PUBLIC FUNCTIONS:
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOCUMENT(O_error_message   IN OUT VARCHAR2,
                           I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                           I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOCUMENT';

   L_status NUMBER(1)                   := REIM_CONSTANTS.SUCCESS;
   L_exists VARCHAR2(1)                 := NULL;

   cursor C_CHECK_TRIAL_ID is
      select 'x'
        from im_inject_doc_error
       where inject_doc_id = I_inject_doc_id
         and trial_id = I_trial_id;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_HEADER(O_error_message,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   ---
   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_HEADER_TAX(O_error_message,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   ---
   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_DETAIL(O_error_message,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   ---
   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_FIXED_DEAL_DETAIL(O_error_message,
                                        I_inject_doc_id,
                                        I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   ---
   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_CMPLX_DEAL_DETAIL(O_error_message,
                                        I_inject_doc_id,
                                        I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   ---
   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_NON_MERCH(O_error_message,
                                I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   ---
   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_COMMENTS(O_error_message,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   ---
   open C_CHECK_TRIAL_ID;
   fetch C_CHECK_TRIAL_ID into L_exists;

   if C_CHECK_TRIAL_ID%NOTFOUND then
      if VALIDATE_DOC_LVL(O_error_message,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;
   end if;

   close C_CHECK_TRIAL_ID;

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return L_status;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOCUMENT;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_WKSHT_DOC(O_error_message   IN OUT VARCHAR2,
                            I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                            I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_WKSHT_DOC';

   cursor C_GET_NUM_TAX_ALLOW is
      select num_tax_allow
        from im_system_options;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   if VALIDATE_DUP_VENDOR_DOC_NUMBER(O_error_message,
                                     NULL,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPP_OPTION_UNDEFINED(O_error_message,
                                     NULL,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORDER(O_error_message,
                     NULL,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_VEND(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_VEND(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV(O_error_message,
                   NULL,
                   I_inject_doc_id,
                   I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_LOC(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOC_DATE(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_STORE(O_error_message,
                     NULL,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_WH(O_error_message,
                  NULL,
                  I_inject_doc_id,
                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPPLIER(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PARTNER(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_LOC(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PAID_IND(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_EXCHANGE_RATE(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_WKSHT_DOC_COST(O_error_message,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   open C_GET_NUM_TAX_ALLOW;
   fetch C_GET_NUM_TAX_ALLOW into LP_num_tax_allow;
   close C_GET_NUM_TAX_ALLOW;

   if VALIDATE_NOT_ALLOWED_TAX(O_error_message,
                               NULL,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_EXEMPT_DOCS(O_error_message,
                           NULL,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_WKSHT_DOC;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_HEADER(O_error_message   IN OUT VARCHAR2,
                             I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_HEADER';

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   if VALIDATE_DUP_VENDOR_DOC_NUMBER(O_error_message,
                                     NULL,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUE_DATE(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CURRENCY_CODE(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CROSS_REF_DOC(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_CURR(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_FR8_TYPE(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_VEND(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_VEND(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV(O_error_message,
                   NULL,
                   I_inject_doc_id,
                   I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_LOC(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TERMS(O_error_message,
                     NULL,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOC_DATE(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_STORE(O_error_message,
                     NULL,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_WH(O_error_message,
                  NULL,
                  I_inject_doc_id,
                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPPLIER(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PARTNER(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_LOC(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PAID_IND(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_EXCHANGE_RATE(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_WKSHT_DOC_COST(O_error_message,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_REQ_TOTAL_HDR_QTY(O_error_message,
                                 NULL,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_FIXED_DEAL(O_error_message,
                          NULL,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;


   if VALIDATE_COMPLEX_DEAL(O_error_message,
                            NULL,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_HEADER;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_HEADER_TAX(O_error_message   IN OUT VARCHAR2,
                                 I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_HEADER_TAX';

   cursor C_GET_NUM_TAX_ALLOW is
      select num_tax_allow
        from im_system_options;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   open C_GET_NUM_TAX_ALLOW;
   fetch C_GET_NUM_TAX_ALLOW into LP_num_tax_allow;
   close C_GET_NUM_TAX_ALLOW;

   if VALIDATE_NOT_ALLOWED_TAX(O_error_message,
                               NULL,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TAX_AMT_NON_ZERO(O_error_message,
                                NULL,
                                I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ACQ_TAX_DETAIL_REQ(O_error_message,
                                  NULL,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_HEADER_TAX;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_DETAIL(O_error_message   IN OUT VARCHAR2,
                             I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                             I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_DETAIL';

   cursor C_GET_TAX_VALIDATION_TYPE is
      select tax_validation_type
        from im_system_options;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   open C_GET_TAX_VALIDATION_TYPE;
   fetch C_GET_TAX_VALIDATION_TYPE into LP_tax_validation_type;
   close C_GET_TAX_VALIDATION_TYPE;

   if VALIDATE_DUPLICATE_ITEM(O_error_message,
                              NULL,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM(O_error_message,
                    NULL,
                    I_inject_doc_id,
                    I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM_SUPPLIER(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DTL_TAX(O_error_message,
                       NULL,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM_TAX(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;



   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_DETAIL;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_NON_MERCH(O_error_message   IN OUT VARCHAR2,
                                I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_NON_MERCH';

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   if VALIDATE_NON_MERCH_CODE(O_error_message,
                              NULL,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_NON_MERCH;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_COMMENTS(O_error_message   IN OUT VARCHAR2,
                               I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                               I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_COMMENTS';

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_COMMENTS;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_FIXED_DEAL_DETAIL(O_error_message   IN OUT VARCHAR2,
                                        I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_FIXED_DEAL_DETAIL';

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   if VALIDATE_LOCATION_FOR_DEAL(O_error_message,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_MERCH_HIER(O_error_message,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_FIXED_DEAL_LOC(O_error_message,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_FIXED_DEAL_DETAIL;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_DOC_CMPLX_DEAL_DETAIL(O_error_message   IN OUT VARCHAR2,
                                        I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                        I_trial_id        IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_DOC_CMPLX_DEAL_DETAIL';

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id || 'I_trial_id: ' || I_trial_id);

   if VALIDATE_COMPLEX_DEAL_DETAIL(O_error_message,
                                   I_inject_doc_id,
                                   I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM(O_error_message,
                    NULL,
                    I_inject_doc_id,
                    I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM_SUPPLIER(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_COMPLEX_DEAL_CURR(O_error_message,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_LOCATION_FOR_DEAL(O_error_message,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_DOC_CMPLX_DEAL_DETAIL;
-------------------------------------------------------------------------------------------------------------
FUNCTION DEFAULT_DETL_FROM_PO(O_error_message   IN OUT VARCHAR2,
                              I_order_no        IN     ORDHEAD.ORDER_NO%TYPE,
                              I_location        IN     IM_INJECT_DOC_HEAD.LOCATION%TYPE,
                              I_doc_date        IN     IM_INJECT_DOC_HEAD.DOC_DATE%TYPE,
                              I_inject_id       IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.DEFAULT_DETL_FROM_PO';

   L_user             IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_status           NUMBER(1);
   L_tran_type        VARCHAR2(1) := PO_TRAN_TYPE;
   L_transaction_id   NUMBER(1)   := REIM_CONSTANTS.ONE;
   L_exempt_ind       VARCHAR2(1) := 'N';

   L_items            OBJ_VARCHAR_ID_TABLE;
   L_tax_breakup      OBJ_ITEM_TAX_BREAKUP_TBL;

   cursor C_FETCH_PO_ITEMS is
      select iidt.item
        from im_inject_doc_detail iidt,
             im_inject_doc_head iidh
       where iidh.inject_doc_id = iidt.inject_doc_id
         and iidh.inject_doc_id = I_inject_doc_id
         and iidh.order_no      = I_order_no;

   cursor C_GET_NUM_TAX_ALLOW is
      select num_tax_allow
        from im_system_options;

BEGIN

   LOGGER.LOG_INFORMATION('Call made to ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id);

   delete from im_inject_doc_detail_tax
    where detail_id in (select detail_id
                          from im_inject_doc_detail
                         where inject_doc_id = I_inject_doc_id);

   delete from im_inject_doc_detail iidd
    where iidd.inject_doc_id = I_inject_doc_id;

   insert into im_inject_doc_detail(inject_id,
                                    transaction_id,
                                    inject_doc_id,
                                    detail_id,
                                    item,
                                    vpn,
                                    upc,
                                    item_source,
                                    upc_supplement,
                                    qty,
                                    unit_cost,
                                    total_allowance,
                                    last_updated_by,
                                    last_update_date,
                                    created_by,
                                    creation_date,
                                    object_version_id,
                                    status,
                                    tax_discrepancy_ind)
                             select I_inject_id,
                                    L_transaction_id,
                                    I_inject_doc_id,
                                    im_inject_doc_detail_seq.NEXTVAL detail_id,
                                    v.item,
                                    its.vpn vpn,
                                    NULL upc,
                                    REIM_CONSTANTS.ITEM_SRC_ITEM_ID item_source,
                                    NULL upc_supplement,
                                    v.qty,
                                    v.unit_cost,
                                    NULL total_allowance,
                                    L_user last_updated_by,
                                    SYSDATE last_update_date,
                                    L_user created_by,
                                    SYSDATE creation_date,
                                    LP_object_version_id,
                                    REIM_CONSTANTS.DOC_ITEM_STATUS_UNMTCH,
                                    REIM_CONSTANTS.YN_NO tax_discrepancy_ind
                               from (select DISTINCT(vim.item),
                                            SUM(vim.qty_ordered) OVER (PARTITION BY vim.item, vim.order_no) qty,
                                            vim.unit_cost,
                                            DECODE(vim.loc_type,
                                                   REIM_CONSTANTS.LOC_TYPE_STORE, loc.loc,
                                                   REIM_CONSTANTS.LOC_TYPE_WH, loc.physical_loc) location,
                                            vim.order_no
                                       from v_im_ordloc vim,
                                            (select store loc,
                                                    REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                                    store physical_loc
                                               from store
                                              union all
                                             select wh loc,
                                                    REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                                    physical_wh physical_loc
                                               from wh) loc
                                       where vim.order_no     = I_order_no
                                         and loc.physical_loc = I_location
                                         and vim.location     = loc.loc
                                         and vim.loc_type     = loc.loc_type) v,
                                    item_supplier its,
                                    im_inject_doc_head iidh
                              where v.item             = its.item
                                and v.qty              <> REIM_CONSTANTS.ZERO
                                and iidh.order_no      = v.order_no
                                and iidh.vendor        = its.supplier
                                and iidh.location      = v.location
                                and iidh.inject_doc_id = I_inject_doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   open C_GET_NUM_TAX_ALLOW;
   fetch C_GET_NUM_TAX_ALLOW into LP_num_tax_allow;
   close C_GET_NUM_TAX_ALLOW;

   if LP_num_tax_allow = REIM_CONSTANTS.NUM_TAX_ALLOW_NONE then
      return REIM_CONSTANTS.SUCCESS;
   end if;

   if GET_TAX_EXEMPT_STATUS(O_error_message,
                            L_exempt_ind,
                            I_inject_id,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if L_exempt_ind = 'Y' then
      return REIM_CONSTANTS.SUCCESS;
   end if;

   open C_FETCH_PO_ITEMS;
   fetch C_FETCH_PO_ITEMS BULK COLLECT INTO L_items;
   close C_FETCH_PO_ITEMS;

   REIM_TAX_DATA_SQL.GET_TAX_BREAKUP(L_status,
                                     O_error_message,
                                     L_tran_type,
                                     OBJ_NUMERIC_ID_TABLE(I_order_no),
                                     L_items,
                                     OBJ_NUMERIC_ID_TABLE(I_location),
                                     I_doc_date,
                                     L_tax_breakup);

   if (L_status <> REIM_CONSTANTS.SUCCESS) then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_detail_tax(detail_id ,
                                        tax_code,
                                        tax_rate,
                                        tax_basis,
                                        reverse_vat_ind,
                                        last_updated_by,
                                        last_update_date,
                                        created_by,
                                        creation_date,
                                        object_version_id,
                                        tax_amount)
                                 select distinct iidd.detail_id,
                                        tax_breakup.tax_code,
                                        tax_breakup.tax_rate,
                                        (iidd.unit_cost * iidd.qty) tax_basis,
                                        tax_breakup.reverse_vat_ind,
                                        L_user,
                                        SYSDATE,
                                        L_user,
                                        SYSDATE,
                                        LP_object_version_id object_version_id,
                                        DECODE(tax_breakup.tax_rate, NULL, 0, ROUND((iidd.unit_cost * iidd.qty) * (tax_breakup.tax_rate/100), DEFAULT_DECIMAL_DIGITS)) tax_amount
                                   from im_inject_doc_detail iidd,
                                        table(cast(L_tax_breakup as OBJ_ITEM_TAX_BREAKUP_TBL)) tax_breakup
                                  where tax_breakup.item     = iidd.item
                                    and tax_breakup.location = I_location
                                    and iidd.inject_doc_id   = I_inject_doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END DEFAULT_DETL_FROM_PO;
-------------------------------------------------------------------------------------------------------------
FUNCTION FETCH_RCPT_FOR_INVOICE(O_error_message   IN OUT VARCHAR2,
                                I_inject_id       IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.FETCH_RCPT_FOR_INVOICE';

   L_match_key    IM_SUPPLIER_GROUPS.MATCH_KEY%TYPE;
   L_vendor       IM_INJECT_DOC_HEAD.VENDOR%TYPE;
   L_ref_vendor   IM_INJECT_DOC_HEAD.REF_VENDOR%TYPE;
   L_order_no     IM_INJECT_DOC_HEAD.ORDER_NO%TYPE;
   L_location     IM_INJECT_DOC_HEAD.LOCATION%TYPE;
   L_loc_type     IM_INJECT_DOC_HEAD.LOC_TYPE%TYPE;
   L_group_id     IM_SUPPLIER_GROUPS.GROUP_ID%TYPE;

   cursor C_FETCH_MATCH_KEY is
      select iidh.vendor,
             iidh.ref_vendor,
             iidh.order_no,
             iidh.location,
             iidh.loc_type,
             isgm.group_id,
             NVL(isg.match_key, iso.match_key)
        from im_supplier_options iso,
             im_inject_doc_head iidh,
             im_supplier_group_members isgm,
             im_supplier_groups isg
       where iidh.inject_doc_id  = I_inject_doc_id
         and iidh.ref_vendor     = iso.supplier
         and iidh.ref_vendor     = isgm.supplier (+)
         and isg.group_id (+)    = isgm.group_id;

BEGIN

   LOGGER.LOG_INFORMATION('Call made to ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id);

   open C_FETCH_MATCH_KEY;
   fetch C_FETCH_MATCH_KEY into L_vendor,
                                L_ref_vendor,
                                L_order_no,
                                L_location,
                                L_loc_type,
                                L_group_id,
                                L_match_key;
   close C_FETCH_MATCH_KEY;

   delete from im_invc_detl_rcpt_ws
    where inject_id     = I_inject_id
      and inject_doc_id = I_inject_doc_id;

   insert into im_invc_detl_rcpt_ws(inject_id,
                                    inject_doc_id,
                                    shipment,
                                    bill_to_loc,
                                    bill_to_loc_desc,
                                    order_no,
                                    total_cost,
                                    total_qty,
                                    total_avail_qty,
                                    ship_date,
                                    receive_date,
                                    currency_code,
                                    set_of_books_id,
                                    supp_vat_region,
                                    loc_vat_region)
                             select I_inject_id,
                                    I_inject_doc_id,
                                    ship_inner.shipment,
                                    ship_inner.bill_to_loc,
                                    ship_inner.bill_to_loc_desc,
                                    ship_inner.order_no,
                                    0 total_cost,
                                    0 total_qty,
                                    0 total_avail_qty,
                                    ship_inner.ship_date,
                                    ship_inner.receive_date,
                                    ship_inner.currency_code,
                                    ship_inner.set_of_books_id,
                                    ship_inner.supp_vat_region,
                                    ship_inner.loc_vat_region
                               from (with order_detl as
                                       (select oh.order_no,
                                               oh.supplier,
                                               DECODE(L_match_key,
                                                      REIM_CONSTANTS.MATCH_KEY_PO_LOC,
                                                      L_location,
                                                      NULL) location,
                                               oh.currency_code,
                                               s.vat_region
                                          from ordhead oh,
                                               sups s
                                         where oh.order_no = L_order_no
                                           and oh.supplier = s.supplier
                                           and L_match_key IN (REIM_CONSTANTS.MATCH_KEY_PO,
                                                               REIM_CONSTANTS.MATCH_KEY_PO_LOC)
                                         union all
                                        select oh.order_no,
                                               oh.supplier,
                                               DECODE(L_match_key,
                                                      REIM_CONSTANTS.MATCH_KEY_SUPP_SITE_LOC,
                                                      L_location,
                                                      NULL) location,
                                               oh.currency_code,
                                               s.vat_region
                                          from ordhead oh,
                                               sups s
                                         where oh.supplier = L_vendor
                                           and oh.supplier = s.supplier
                                           and L_match_key IN (REIM_CONSTANTS.MATCH_KEY_SUPP_SITE,
                                                               REIM_CONSTANTS.MATCH_KEY_SUPP_SITE_LOC)
                                         union all
                                        select oh.order_no,
                                               oh.supplier,
                                               DECODE(L_match_key,
                                                      REIM_CONSTANTS.MATCH_KEY_SUPP_LOC,
                                                      L_location,
                                                      NULL) location,
                                               oh.currency_code,
                                               s.vat_region
                                          from ordhead oh,
                                               sups s
                                         where s.supplier_parent = L_ref_vendor
                                           and oh.supplier       = s.supplier
                                           and L_match_key       IN (REIM_CONSTANTS.MATCH_KEY_SUPPLIER,
                                                                     REIM_CONSTANTS.MATCH_KEY_SUPP_LOC)
                                         union all
                                        select oh.order_no,
                                               oh.supplier,
                                               DECODE(L_match_key,
                                                      REIM_CONSTANTS.MATCH_KEY_SUPP_GROUP_LOC,
                                                      L_location,
                                                      NULL) location,
                                               oh.currency_code,
                                               s.vat_region
                                          from ordhead oh,
                                               sups s,
                                               im_supplier_group_members isgm
                                         where isgm.group_id     = L_group_id
                                           and s.supplier_parent = isgm.supplier
                                           and oh.supplier       = s.supplier
                                           and L_match_key       IN (REIM_CONSTANTS.MATCH_KEY_SUPP_GROUP,
                                                                     REIM_CONSTANTS.MATCH_KEY_SUPP_GROUP_LOC)),
                                    locs as
                                       (select REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                               store loc,
                                               store physical_loc,
                                               store_name loc_desc,
                                               vat_region loc_vat_region
                                          from store
                                         union all
                                        select REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                               wh.wh loc,
                                               wh.physical_wh physical_loc,
                                               wh.wh_name loc_desc,
                                               wh.vat_region loc_vat_region
                                          from wh
                                         where wh.physical_wh = wh.wh),
                                    set_of_books as
                                       (select mls.set_of_books_id,
                                               ol.order_no
                                          from mv_loc_sob mls,
                                               (select order_no,
                                                       MIN(location) location
                                                  from ordloc
                                                 GROUP BY order_no) ol
                                         where mls.location      = ol.location
                                           and mls.location_type IN (REIM_CONSTANTS.LOC_TYPE_WH, REIM_CONSTANTS.LOC_TYPE_STORE))
                                    ---
                                    select s.shipment,
                                           s.bill_to_loc,
                                           l.loc_desc bill_to_loc_desc,
                                           od.order_no,
                                           s.ship_date,
                                           s.receive_date,
                                           od.currency_code,
                                           sob.set_of_books_id,
                                           od.vat_region supp_vat_region,
                                           l.loc_vat_region
                                      from order_detl od,
                                           shipment s,
                                           locs l,
                                           set_of_books sob
                                     where od.order_no         = s.order_no
                                       and s.bill_to_loc       = NVL(od.location, s.bill_to_loc)
                                       and s.bill_to_loc       = l.physical_loc
                                       and s.bill_to_loc_type  = l.loc_type
                                       and s.order_no          = sob.order_no
                                       and s.invc_match_status <> REIM_CONSTANTS.SHIP_IM_STATUS_MTCH
                                       and s.receive_date      is NOT NULL) ship_inner;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INVC_DETL_RCPT_WS - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   delete from im_transform_shipsku_gtt;

   insert into im_transform_shipsku_gtt (shipment,
                                         item,
                                         seq_no,
                                         ss_qty_received,
                                         ss_qty_matched,
                                         ss_unit_cost,
                                         weight_received,
                                         weight_received_uom,
                                         carton,
                                         catch_weight_type,
                                         order_no,
                                         supplier,
                                         sup_qty_level,
                                         transform_qty_received,
                                         transform_qty_matched,
                                         transform_unit_cost)
                                  select iidrw.shipment,
                                         ss.item,
                                         ss.seq_no,
                                         ss.qty_received,
                                         ss.qty_matched,
                                         ss.unit_cost,
                                         ss.weight_received,
                                         ss.weight_received_uom,
                                         ss.carton,
                                         im.catch_weight_type,
                                         oh.order_no,
                                         oh.supplier,
                                         s.sup_qty_level,
                                         ss.qty_received,
                                         ss.qty_matched,
                                         ss.unit_cost
                                    from im_invc_detl_rcpt_ws iidrw,
                                         shipsku ss,
                                         ordhead oh,
                                         sups s,
                                         item_master im
                                   where iidrw.inject_doc_id                                             = I_inject_doc_id
                                     and ss.shipment                                                     = iidrw.shipment
                                     and NVL(ss.invc_match_status, REIM_CONSTANTS.SSKU_IM_STATUS_UNMTCH) = REIM_CONSTANTS.SSKU_IM_STATUS_UNMTCH
                                     and oh.order_no                                                     = iidrw.order_no
                                     and s.supplier                                                      = oh.supplier
                                     and ss.item                                                         = im.item;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_TRANSFORM_SHIPSKU_GTT - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if REIM_XFORM_SHIPSKU_SQL.TRANSFORM_SHIPSKU_GTT(O_error_message) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   merge into im_invc_detl_rcpt_ws target
   using (with im_invc_detl_rcpt_ws_temp as 
                (select itsg.shipment,
                 SUM(itsg.transform_unit_cost * NVL(itsg.transform_qty_received, 0)) - SUM(NVL(ipmr.qty_matched, 0) * (itsg.transform_unit_cost)) total_cost,
                 SUM(NVL(itsg.transform_qty_received, 0)) total_qty,
                 SUM(NVL(itsg.transform_qty_received, 0)) - SUM(NVL(ipmr.qty_matched, 0)) total_avail_qty
                 from im_transform_shipsku_gtt itsg,
                 im_partially_matched_receipts ipmr
                 where ipmr.shipment (+) = itsg.shipment
                   and ipmr.item (+)     = itsg.item
                 group by itsg.shipment, ipmr.qty_matched, itsg.transform_unit_cost)
           select iidrwt.shipment shipment, 
           SUM(iidrwt.total_cost) total_cost, 
           SUM(iidrwt.total_qty) total_qty, 
           SUM(iidrwt.total_avail_qty) total_avail_qty
           from im_invc_detl_rcpt_ws_temp iidrwt
           group by iidrwt.shipment) src
    on (    target.shipment      = src.shipment
        and target.inject_id     = I_inject_id
        and target.inject_doc_id = I_inject_doc_id)
    when MATCHED then
    update
       set target.total_cost      = src.total_cost,
           target.total_qty       = src.total_qty,
           target.total_avail_qty = src.total_avail_qty;

   LOGGER.LOG_INFORMATION(L_program||' Update total_cost/total_qty/total_avail_qty - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END FETCH_RCPT_FOR_INVOICE;
-------------------------------------------------------------------------------------------------------------
FUNCTION DEFAULT_DETL_FROM_RCPT(O_error_message   IN OUT VARCHAR2,
                                I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.DEFAULT_DETL_FROM_RCPT';

   L_user              IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   L_transaction_id    NUMBER(1)  := REIM_CONSTANTS.ONE;
   L_tran_type         VARCHAR2(1):= SHIPMENT_TRAN_TYPE;
   L_status            NUMBER(1);
   L_exists            VARCHAR2(1);
   L_doc_date          IM_INJECT_DOC_HEAD.DOC_DATE%TYPE;
   L_exempt_ind        VARCHAR2(1) := 'N';

   L_tax_breakup       OBJ_ITEM_TAX_BREAKUP_TBL;
   L_shipments         OBJ_NUMERIC_ID_TABLE     := OBJ_NUMERIC_ID_TABLE();
   L_items             OBJ_VARCHAR_ID_TABLE     := OBJ_VARCHAR_ID_TABLE();
   L_locations         OBJ_NUMERIC_ID_TABLE     := OBJ_NUMERIC_ID_TABLE();

   cursor C_FETCH_SHIPMENT is
      select iidrw.shipment
        from im_invc_detl_rcpt_ws iidrw
       where inject_doc_id     = I_inject_doc_id
         and iidrw.choice_flag = 'Y';

   cursor C_FETCH_ITEMS is
      select iidd.item
        from im_inject_doc_detail iidd
       where inject_doc_id = I_inject_doc_id;

   cursor C_FETCH_LOCATIONS is
     select distinct iidrw.bill_to_loc
       from im_invc_detl_rcpt_ws iidrw,
            im_inject_doc_head iidh
      where iidrw.choice_flag   = 'Y'
        and iidrw.inject_doc_id = I_inject_doc_id
        and iidrw.inject_doc_id = iidh.inject_doc_id;

   cursor C_GET_DOC_DATE is
      select iidh.doc_date
        from im_inject_doc_head iidh
       where iidh.inject_doc_id = I_inject_doc_id;

   cursor C_CHECK_DUP_ITEM is
      select 'x'
        from (select ss.item,
                     MAX(ss.unit_cost) max_cost,
                     MIN(unit_cost) min_cost
                from im_invc_detl_rcpt_ws iidrw,
                     shipsku ss
               where iidrw.inject_doc_id            = I_inject_doc_id
                 and ss.shipment                    = iidrw.shipment
                 and NVL(ss.invc_match_status, REIM_CONSTANTS.SSKU_IM_STATUS_UNMTCH) = REIM_CONSTANTS.SSKU_IM_STATUS_UNMTCH
                 and iidrw.choice_flag              = 'Y'
               group by ss.item
              having COUNT(ss.item) > 1) i
       where i.max_cost <> i.min_cost;

   cursor C_GET_NUM_TAX_ALLOW is
      select num_tax_allow
        from im_system_options;

BEGIN

   LOGGER.LOG_INFORMATION('Call made to ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id);

   delete from im_transform_shipsku_gtt;

   insert into im_transform_shipsku_gtt(shipment,
                                        item,
                                        seq_no,
                                        ss_qty_received,
                                        ss_qty_matched,
                                        ss_unit_cost,
                                        weight_received,
                                        weight_received_uom,
                                        carton,
                                        catch_weight_type,
                                        order_no,
                                        supplier,
                                        sup_qty_level,
                                        transform_qty_received,
                                        transform_qty_matched,
                                        transform_unit_cost)
                                 select iidrw.shipment,
                                        ss.item,
                                        ss.seq_no,
                                        ss.qty_received,
                                        ss.qty_matched,
                                        ss.unit_cost,
                                        ss.weight_received,
                                        ss.weight_received_uom,
                                        ss.carton,
                                        im.catch_weight_type,
                                        oh.order_no,
                                        oh.supplier,
                                        s.sup_qty_level,
                                        ss.qty_received,
                                        ss.qty_matched,
                                        ss.unit_cost
                                   from im_invc_detl_rcpt_ws iidrw,
                                        shipsku ss,
                                        ordhead oh,
                                        sups s,
                                        item_master im
                                  where iidrw.inject_doc_id = I_inject_doc_id
                                    and ss.shipment         = iidrw.shipment
                                    and NVL(ss.invc_match_status, REIM_CONSTANTS.SSKU_IM_STATUS_UNMTCH) = REIM_CONSTANTS.SSKU_IM_STATUS_UNMTCH
                                    and oh.order_no         = iidrw.order_no
                                    and s.supplier          = oh.supplier
                                    and ss.item             = im.item
                                    and (ss.qty_received is not null and ss.qty_received > 0)
                                    and iidrw.choice_flag   = 'Y';

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_TRANSFORM_SHIPSKU_GTT - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if REIM_XFORM_SHIPSKU_SQL.TRANSFORM_SHIPSKU_GTT(O_error_message) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   open C_CHECK_DUP_ITEM;
   fetch C_CHECK_DUP_ITEM into L_exists;
   close C_CHECK_DUP_ITEM;

   if L_exists is NOT NULL then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            'One or more items have multiple unit costs.  Please fix before inserting record/s.',
                                            L_program,
                                            TO_CHAR(SQLCODE));
      return REIM_CONSTANTS.FAIL;
   end if;

   delete from im_inject_doc_detail_tax
    where detail_id in (select detail_id
                          from im_inject_doc_detail
                         where inject_doc_id = I_inject_doc_id);

   delete from im_inject_doc_detail iidd
    where iidd.inject_doc_id = I_inject_doc_id;

   insert into im_inject_doc_detail(inject_id,
                                    transaction_id,
                                    inject_doc_id,
                                    detail_id,
                                    item,
                                    vpn,
                                    upc,
                                    item_source,
                                    upc_supplement,
                                    qty,
                                    unit_cost,
                                    total_allowance,
                                    last_updated_by,
                                    last_update_date,
                                    created_by,
                                    creation_date,
                                    object_version_id,
                                    status,
                                    tax_discrepancy_ind)
                             select i.inject_id,
                                    L_transaction_id,
                                    i.inject_doc_id,
                                    im_inject_doc_detail_seq.NEXTVAL detail_id,
                                    i.item,
                                    i.vpn,
                                    NULL,       --upc
                                    REIM_CONSTANTS.ITEM_SRC_ITEM_ID,
                                    NULL,       --upc_supplement
                                    i.qty,
                                    i.unit_cost,
                                    NULL,       --total_allowance
                                    L_user last_updated_by,
                                    SYSDATE last_update_date,
                                    L_user created_by,
                                    SYSDATE creation_date,
                                    LP_object_version_id,
                                    REIM_CONSTANTS.DOC_ITEM_STATUS_UNMTCH,
                                    REIM_CONSTANTS.YN_NO tax_discrepancy_ind
                              from (select iidrw.inject_id,
                                           iidrw.inject_doc_id,
                                           gtt.item,
                                           its.vpn,
                                           SUM(nvl(gtt.transform_qty_received,0)-nvl(gtt.transform_qty_matched,0)) qty,
                                           gtt.transform_unit_cost unit_cost
                                      from im_invc_detl_rcpt_ws iidrw,
                                           im_transform_shipsku_gtt gtt,
                                           item_supplier its
                                     where iidrw.inject_doc_id = I_inject_doc_id
                                       and iidrw.choice_flag   = 'Y'
                                       and iidrw.shipment      = gtt.shipment
                                       and gtt.item            = its.item
                                       and gtt.supplier        = its.supplier
                                     group by iidrw.inject_id,
                                              iidrw.inject_doc_id,
                                              gtt.item,
                                              its.vpn,
                                              gtt.transform_unit_cost) i;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   open C_GET_NUM_TAX_ALLOW;
   fetch C_GET_NUM_TAX_ALLOW into LP_num_tax_allow;
   close C_GET_NUM_TAX_ALLOW;

   if LP_num_tax_allow = REIM_CONSTANTS.NUM_TAX_ALLOW_NONE then
      return REIM_CONSTANTS.SUCCESS;
   end if;

   if GET_TAX_EXEMPT_STATUS(O_error_message,
                            L_exempt_ind,
                            NULL,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if L_exempt_ind = 'Y' then
      return REIM_CONSTANTS.SUCCESS;
   end if;

   open C_FETCH_SHIPMENT;
   fetch C_FETCH_SHIPMENT BULK COLLECT into L_shipments;
   close C_FETCH_SHIPMENT;

   open C_FETCH_ITEMS;
   fetch C_FETCH_ITEMS BULK COLLECT into L_items;
   close C_FETCH_ITEMS;

   open C_FETCH_LOCATIONS;
   fetch C_FETCH_LOCATIONS BULK COLLECT into L_locations;
   close C_FETCH_LOCATIONS;

   open C_GET_DOC_DATE;
   fetch C_GET_DOC_DATE into L_doc_date;
   close C_GET_DOC_DATE;

   REIM_TAX_DATA_SQL.GET_TAX_BREAKUP(L_status,
                                     O_error_message,
                                     L_tran_type,
                                     L_shipments,
                                     L_items,
                                     L_locations,
                                     L_doc_date,
                                     L_tax_breakup);

   if (L_status <> REIM_CONSTANTS.SUCCESS) then
      return REIM_CONSTANTS.FAIL;
   end if;

   insert into im_inject_doc_detail_tax(detail_id,
                                        tax_code,
                                        tax_rate,
                                        tax_basis,
                                        reverse_vat_ind,
                                        last_updated_by,
                                        last_update_date,
                                        created_by,
                                        creation_date,
                                        object_version_id,
                                        tax_amount)
                                 select iidd.detail_id,
                                        tax_breakup.tax_code,
                                        tax_breakup.tax_rate,
                                        (iidd.unit_cost * iidd.qty) tax_basis,
                                        tax_breakup.reverse_vat_ind,
                                        L_user,
                                        SYSDATE,
                                        L_user,
                                        SYSDATE,
                                        LP_object_version_id object_version_id,
                                        DECODE(tax_breakup.tax_rate, NULL, 0, ROUND((iidd.unit_cost * iidd.qty)* tax_breakup.tax_rate/100, DEFAULT_DECIMAL_DIGITS)) tax_amount
                                   from im_inject_doc_detail iidd,
                                        (select tax_tbl.item,
                                                max(tax_tbl.tax_code) tax_code,
                                                max(tax_tbl.tax_rate) tax_rate,
                                                max(tax_tbl.reverse_vat_ind) reverse_vat_ind
                                           from table(cast(L_tax_breakup as OBJ_ITEM_TAX_BREAKUP_TBL)) tax_tbl
                                          GROUP BY tax_tbl.item) tax_breakup
                                  where iidd.inject_doc_id   = I_inject_doc_id
                                    and tax_breakup.item     = iidd.item;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END DEFAULT_DETL_FROM_RCPT;
-------------------------------------------------------------------------------------------------------------
FUNCTION DEFAULT_NON_MERCH_FROM_PO(O_error_message   IN OUT VARCHAR2,
                                   I_inject_doc_id   IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.DEFAULT_NON_MERCH_FROM_PO';

   L_user           IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_transaction_id NUMBER(1)                   := REIM_CONSTANTS.ONE;

BEGIN

   LOGGER.LOG_INFORMATION('Call made to ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id);

   insert into im_inject_doc_non_merch(inject_id,
                                       transaction_id,
                                       inject_doc_id,
                                       non_merch_code,
                                       non_merch_amount,
                                       service_performed,
                                       store,
                                       last_updated_by,
                                       last_update_date,
                                       created_by,
                                       creation_date,
                                       object_version_id,
                                       ref_object_version_id)
                                select distinct iidh.inject_id,
                                       L_transaction_id,
                                       iidh.inject_doc_id,
                                       nmcc.non_merch_code,
                                       NULL non_merch_amount,
                                       NULL service_performed,
                                       DECODE(loc.loc_type, 'W', NULL, 'S', loc.loc) store,
                                       L_user,
                                       SYSDATE,
                                       L_user,
                                       SYSDATE,
                                       LP_object_version_id,
                                       NULL ref_object_version_id
                                  from im_inject_doc_head iidh,
                                       ordloc_exp oe,
                                       non_merch_code_comp nmcc,
                                       (select REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                               s.store loc,
                                               s.store physical_loc
                                          from store s
                                         union all
                                        select REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                               w.wh loc,
                                               w.physical_wh physical_loc
                                          from wh w) loc
                                where iidh.inject_doc_id = I_inject_doc_id
                                  and iidh.order_no      = oe.order_no
                                  and iidh.location      = loc.physical_loc
                                  and oe.comp_id         = nmcc.comp_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_NON_MERCH - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END DEFAULT_NON_MERCH_FROM_PO;
-------------------------------------------------------------------------------------------------------------
FUNCTION SAVE_DOCUMENT(O_error_message     IN OUT VARCHAR2,
                       I_inject_doc_id     IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                       I_add_non_merch_tax IN     VARCHAR2 DEFAULT 'N')
RETURN NUMBER
IS

   L_program VARCHAR2(35) := 'REIM_DOCUMENT_SQL.SAVE_DOCUMENT';

   L_user            IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_vdate           DATE                    := GET_VDATE;
   L_dirty_doc_count NUMBER                  := REIM_CONSTANTS.ZERO;
   L_editable        NUMBER                  := REIM_CONSTANTS.ZERO;
   L_src_doc_id      IM_DOC_HEAD.DOC_ID%TYPE := NULL;
   L_tgt_doc_id      IM_DOC_HEAD.DOC_ID%TYPE := NULL;
   dirty_record      EXCEPTION;
   records_locked    EXCEPTION;
   PRAGMA            EXCEPTION_INIT(records_locked, -54);

   L_tax_validation_type IM_SYSTEM_OPTIONS.TAX_VALIDATION_TYPE%TYPE := NULL;

   cursor C_CHK_DOC is
      select COUNT(1)
        from im_inject_doc_head iidh,
             im_doc_head idh
       where iidh.inject_doc_id         = I_inject_doc_id
         and iidh.src_doc_id            = idh.doc_id
         and iidh.ref_object_version_id <> idh.object_version_id;

   cursor C_LOCK_DOC_HEAD is
      select 'x'
        from im_doc_head idh
       where EXISTS (select 'x'
                       from im_inject_doc_head iidh
                      where iidh.inject_doc_id = I_inject_doc_id
                        and iidh.src_doc_id    = idh.doc_id)
         for UPDATE NOWAIT;
BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program || ' with input params: ' || 'I_inject_doc_id: ' || I_inject_doc_id);

   open C_CHK_DOC;
   fetch C_CHK_DOC into L_dirty_doc_count;
   close C_CHK_DOC;

   if L_dirty_doc_count > REIM_CONSTANTS.ZERO then
      RAISE dirty_record;
   end if;

   open C_LOCK_DOC_HEAD;
   close C_LOCK_DOC_HEAD;

   if NVL(I_add_non_merch_tax, 'N') = 'Y' then

      delete from im_inject_doc_non_merch_tax
       where inject_doc_id = I_inject_doc_id;

      LOGGER.LOG_INFORMATION(L_program||' Delete existing IM_INJECT_DOC_NON_MERCH_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      insert into im_inject_doc_non_merch_tax(inject_doc_id,
                                              non_merch_code,
                                              tax_code,
                                              tax_rate,
                                              tax_basis,
                                              last_updated_by,
                                              last_update_date,
                                              created_by,
                                              creation_date,
                                              object_version_id,
                                              inject_id,
                                              tax_amount,
                                              ref_object_version_id)
                                       select iidnm.inject_doc_id,
                                              iidnm.non_merch_code,
                                              iidt.tax_code,
                                              iidt.tax_rate,
                                              iidnm.non_merch_amount,
                                              iidnm.last_updated_by,
                                              iidnm.last_update_date,
                                              iidnm.created_by,
                                              iidnm.creation_date,
                                              iidnm.object_version_id,
                                              iidnm.inject_id,
                                              iidnm.non_merch_amount * (iidt.tax_rate/100),
                                              iidnm.ref_object_version_id
                                         from im_inject_doc_non_merch iidnm,
                                              im_inject_doc_tax iidt
                                        where iidnm.inject_doc_id  = I_inject_doc_id
                                          and iidt.inject_doc_id   = iidnm.inject_doc_id
                                          and iidnm.non_merch_code is NOT NULL
                                          and iidt.tax_code        is NOT NULL;

      LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_NON_MERCH_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   end if;

   select iso.tax_validation_type
     into L_tax_validation_type
     from im_system_options iso;

   select src_doc_id,
          NVL(src_doc_id, im_doc_head_seq.NEXTVAL)
     into L_src_doc_id,
          L_tgt_doc_id
     from im_inject_doc_head iidh
    where iidh.inject_doc_id = I_inject_doc_id;

   merge into im_inject_doc_head tgt
   using (select iidh.inject_doc_id,
                 t.percent terms_dscnt_pct
            from im_inject_doc_head iidh,
                 terms t
           where iidh.inject_doc_id                         = I_inject_doc_id
             and NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO) <> REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT
             and t.terms                                    = iidh.terms
             and t.enabled_flag                             = REIM_CONSTANTS.YN_YES
             and iidh.doc_date                              between nvl(t.start_date_active, iidh.doc_date) and nvl(t.end_date_active, iidh.doc_date)
             and rownum                                     < 2) src
   on (tgt.inject_doc_id = src.inject_doc_id)
   when MATCHED then
      update
         set tgt.terms_dscnt_pct = src.terms_dscnt_pct;

/*CREDIT/DEBIT MEMOS SHOULD BE IN WORKSHEET STATUS UNTIL THE DETAILS ARE ADDED
ONCE THE DETAILS ARE ADDED, ONLY THEN THESE DOCUMENTS CAN GO TO APPROVED STATUS*/
   UPDATE im_inject_doc_head iidh
   SET iidh.status = REIM_CONSTANTS.DOC_STATUS_WORKSHEET
   WHERE iidh.inject_doc_id = I_inject_doc_id
   AND not exists (select 1
                   from im_inject_doc_detail iidd
                   where iidd.inject_doc_id = I_inject_doc_id
                   and iidh.inject_doc_id = iidd.inject_doc_id)
   AND iidh.doc_type in (REIM_CONSTANTS.DOC_TYPE_CRDMEC,
                       REIM_CONSTANTS.DOC_TYPE_CRDMEQ,
                       REIM_CONSTANTS.DOC_TYPE_DEBMEC,
                       REIM_CONSTANTS.DOC_TYPE_DEBMEQ,
                       REIM_CONSTANTS.DOC_TYPE_DEBMET)
   AND iidh.status = REIM_CONSTANTS.DOC_STATUS_APPRVE;         

   merge into im_doc_head tgt
   using (select L_tgt_doc_id doc_id,
                 iidh.doc_type type,
                 NVL(iidh.status,
                     case
                        when iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_MRCHI then
                            REIM_CONSTANTS.DOC_STATUS_RMTCH
                        else
                            REIM_CONSTANTS.DOC_STATUS_APPRVE
                    end) as status,
                 iidh.order_no,
                 iidh.rtv_order_no,
                 iidh.location,
                 iidh.loc_type,
                 iidh.total_discount,
                 iidh.group_id,
                 NULL parent_id,
                 iidh.doc_date,
                 sysdate creation_date,
                 L_user created_by, -- cleanup NVL
                 iidh.vendor_type,
                 iidh.ref_vendor vendor,
                 iidh.ext_doc_id ext_doc_id,
                 REIM_CONSTANTS.YN_NO edi_download_ind,
                 iidh.terms,
                 iidh.terms_dscnt_pct,
                 iidh.due_date,
                 iidh.payment_method,
                 NULL match_id, --match_id,
                 NULL match_date,
                 case
                        when iidh.doc_type <> REIM_CONSTANTS.DOC_TYPE_MRCHI and iidh.status = REIM_CONSTANTS.DOC_STATUS_APPRVE then
                            L_user -- cleanup NVL
                        else
                            iidh.approval_id
                    end as approval_id, --approval_id,
                 case
                        when iidh.doc_type <> REIM_CONSTANTS.DOC_TYPE_MRCHI and iidh.status = REIM_CONSTANTS.DOC_STATUS_APPRVE then
                            L_vdate
                        else
                            iidh.approval_date
                    end as approval_date,
                 REIM_CONSTANTS.YN_NO pre_paid_ind,
                 NULL pre_paid_id,
                 iidh.post_date,
                 iidh.currency_code,
                 iidh.exchange_rate,
                 iidh.total_cost,
                 iidh.total_qty,
                 iidh.manually_paid_ind,
                 iidh.custom_doc_ref1 custom_doc_ref_1,
                 iidh.custom_doc_ref2 custom_doc_ref_2,
                 iidh.custom_doc_ref3 custom_doc_ref_3,
                 iidh.custom_doc_ref4 custom_doc_ref_4,
                 L_user last_updated_by, -- cleanup NVL
                 sysdate last_update_date,
                 iidh.freight_type,
                 iidh.cross_ref_doc ref_doc,
                 iidh.ref_auth_no,
                 REIM_CONSTANTS.YN_NO cost_pre_match,
                 REIM_CONSTANTS.YN_NO detail_matched,
                 iidh.best_terms,
                 iidh.best_terms_source,
                 iidh.best_terms_date,
                 NULL best_terms_date_source,
                 NULL variance_within_tolerance,
                 iidh.total_cost resolution_adjusted_total_cost,
                 iidh.total_qty resolution_adjusted_total_qty,
                 DECODE(NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO),
                        REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT, REIM_CONSTANTS.YN_YES,
                        REIM_CONSTANTS.YN_NO) consignment_ind,
                 iidh.deal_id,
                 NVL(iidh.rtv_ind, REIM_CONSTANTS.YN_NO) rtv_ind,
                 NULL discount_date,
                 iidh.deal_type,
                 iidh.hold_status,
                 iidh.total_cost_inc_tax,
                 NULL tax_disc_create_date,
                 DECODE(NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO),
                        REIM_CONSTANTS.DOC_MERCH_TYPE_DSD, REIM_CONSTANTS.YN_YES,
                        REIM_CONSTANTS.YN_NO) dsd_ind,
                 DECODE(NVL(iidh.merch_type, REIM_CONSTANTS.YN_NO),
                        REIM_CONSTANTS.DOC_MERCH_TYPE_ERS, REIM_CONSTANTS.YN_YES,
                        REIM_CONSTANTS.YN_NO) ers_ind,
                 iidh.vendor supplier_site_id,
                 iidh.reverse_vat_ind,
                 REIM_CONSTANTS.ONE object_version_id,
                 case
                    when iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_MRCHI then
                       case
                          when exists (select 'x'
                                        from im_inject_doc_detail iidd
                                       where iidd.inject_doc_id = iidh.inject_doc_id) then
                            REIM_CONSTANTS.YN_NO
                         else
                            REIM_CONSTANTS.YN_YES
                    end
                    when iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_NMRCHI then
                       REIM_CONSTANTS.YN_NO
                    when iidh.doc_type in (REIM_CONSTANTS.DOC_TYPE_CRDNT,
                                       REIM_CONSTANTS.DOC_TYPE_CRDNRC,
                                       REIM_CONSTANTS.DOC_TYPE_CRDNRQ,
                                       REIM_CONSTANTS.DOC_TYPE_CRDNRT,
                                       REIM_CONSTANTS.DOC_TYPE_CRDMEC,
                                       REIM_CONSTANTS.DOC_TYPE_CRDMEQ,
                                       REIM_CONSTANTS.DOC_TYPE_DEBMEC,
                                       REIM_CONSTANTS.DOC_TYPE_DEBMEQ,
                                       REIM_CONSTANTS.DOC_TYPE_DEBMET) then
                       case
                          when NVL(iidh.deal_type, REIM_CONSTANTS.YN_NO) = REIM_CONSTANTS.YN_NO and
                               exists (select 'x'
                                             from im_inject_doc_detail iidd
                                            where iidd.inject_doc_id = iidh.inject_doc_id) then
                              REIM_CONSTANTS.YN_NO
                          when NVL(iidh.deal_type, REIM_CONSTANTS.YN_NO) = REIM_CONSTANTS.DEAL_TYPE_FIXED then
                              REIM_CONSTANTS.YN_NO
                          when NVL(iidh.deal_type, REIM_CONSTANTS.YN_NO) = REIM_CONSTANTS.DEAL_TYPE_COMPLEX and
                               exists (select 'x'
                                            from im_inject_complex_deal_detail iicdd
                                           where iicdd.inject_doc_id = iidh.inject_doc_id) then
                              REIM_CONSTANTS.YN_NO
                          else
                             REIM_CONSTANTS.YN_YES
                      end
                 else
                    REIM_CONSTANTS.YN_YES
                 end header_only,
                 iidh.src_doc_id,
                 REIM_CONSTANTS.DOC_SOURCE_MANL doc_source,
                 case
                    when iidh.status = REIM_CONSTANTS.DOC_STATUS_MTCH then
                       REIM_CONSTANTS.MATCH_TYPE_EXTERNAL
                    else
                       NULL
                 end match_type,
                 iidh.deal_detail_id,
                 case when iidh.doc_type in( 'CRDNRC','CRDNRQ','CRDNRT') then
                                   NVL(iidh.ref_cnr_ext_doc_id,iidh.ext_doc_id)
                                  else
                                  iidh.ref_cnr_ext_doc_id
                 end ref_cnr_ext_doc_id,
                 iidh.ref_inv_ext_doc_id
            from im_inject_doc_head iidh
           where iidh.inject_doc_id = I_inject_doc_id) src
   on (tgt.doc_id = NVL(src.src_doc_id, -9999))
   when MATCHED then
      update
         set tgt.status                         = src.status,
             tgt.ext_doc_id                     = src.ext_doc_id,
             tgt.doc_date                       = src.doc_date,
             tgt.terms                          = src.terms,
             tgt.terms_dscnt_pct                = src.terms_dscnt_pct,
             tgt.due_date                       = src.due_date,
             tgt.approval_id                    = src.approval_id,
             tgt.approval_date                  = src.approval_date,
             tgt.currency_code                  = src.currency_code,
             tgt.exchange_rate                  = src.exchange_rate,
             tgt.total_cost                     = src.total_cost,
             tgt.total_qty                      = src.total_qty,
             tgt.custom_doc_ref_1               = src.custom_doc_ref_1,
             tgt.custom_doc_ref_2               = src.custom_doc_ref_2,
             tgt.custom_doc_ref_3               = src.custom_doc_ref_3,
             tgt.custom_doc_ref_4               = src.custom_doc_ref_4,
             tgt.last_updated_by                = src.last_updated_by,
             tgt.last_update_date               = src.last_update_date,
             tgt.freight_type                   = src.freight_type,
             tgt.ref_doc                        = src.ref_doc,
             tgt.ref_auth_no                    = src.ref_auth_no,
             tgt.resolution_adjusted_total_cost = src.resolution_adjusted_total_cost,
             tgt.resolution_adjusted_total_qty  = src.resolution_adjusted_total_qty,
             tgt.hold_status                    = src.hold_status,
             tgt.total_cost_inc_tax             = src.total_cost_inc_tax,
             tgt.reverse_vat_ind                = src.reverse_vat_ind,
             tgt.object_version_id              = tgt.object_version_id + REIM_CONSTANTS.ONE,
             tgt.header_only                    = src.header_only,
             tgt.ref_cnr_ext_doc_id             = src.ref_cnr_ext_doc_id,
             tgt.ref_inv_ext_doc_id             = src.ref_inv_ext_doc_id,
             tgt.deal_id                        = src.deal_id,
             tgt.deal_detail_id                 = src.deal_detail_id,
             tgt.deal_type                      = src.deal_type,
             tgt.manually_paid_ind              = src.manually_paid_ind
   when NOT MATCHED then
      insert (doc_id,
              type,
              status,
              order_no,
              rtv_order_no,
              location,
              loc_type,
              total_discount,
              group_id,
              parent_id,
              doc_date,
              creation_date,
              created_by,
              vendor_type,
              vendor,
              ext_doc_id,
              edi_download_ind,
              terms,
              terms_dscnt_pct,
              due_date,
              payment_method,
              match_id,
              match_date,
              approval_id,
              approval_date,
              pre_paid_ind,
              pre_paid_id,
              post_date,
              currency_code,
              exchange_rate,
              total_cost,
              total_qty,
              manually_paid_ind,
              custom_doc_ref_1,
              custom_doc_ref_2,
              custom_doc_ref_3,
              custom_doc_ref_4,
              last_updated_by,
              last_update_date,
              freight_type,
              ref_doc,
              ref_auth_no,
              cost_pre_match,
              detail_matched,
              best_terms,
              best_terms_source,
              best_terms_date,
              best_terms_date_source,
              variance_within_tolerance,
              resolution_adjusted_total_cost,
              resolution_adjusted_total_qty,
              consignment_ind,
              deal_id,
              rtv_ind,
              discount_date,
              deal_type,
              hold_status,
              total_cost_inc_tax,
              tax_disc_create_date,
              dsd_ind,
              ers_ind,
              supplier_site_id,
              reverse_vat_ind,
              object_version_id,
              header_only,
              doc_source,
              match_type,
              deal_detail_id,
              ref_cnr_ext_doc_id,
              ref_inv_ext_doc_id
              )
      values (src.doc_id,
              src.type,
              src.status,
              src.order_no,
              src.rtv_order_no,
              src.location,
              src.loc_type,
              src.total_discount,
              src.group_id,
              src.parent_id,
              src.doc_date,
              src.creation_date,
              src.created_by,
              src.vendor_type,
              src.vendor,
              src.ext_doc_id,
              src.edi_download_ind,
              src.terms,
              src.terms_dscnt_pct,
              src.due_date,
              src.payment_method,
              src.match_id,
              src.match_date,
              src.approval_id,
              src.approval_date,
              src.pre_paid_ind,
              src.pre_paid_id,
              src.post_date,
              src.currency_code,
              src.exchange_rate,
              src.total_cost,
              src.total_qty,
              src.manually_paid_ind,
              src.custom_doc_ref_1,
              src.custom_doc_ref_2,
              src.custom_doc_ref_3,
              src.custom_doc_ref_4,
              src.last_updated_by,
              src.last_update_date,
              src.freight_type,
              src.ref_doc,
              src.ref_auth_no,
              src.cost_pre_match,
              src.detail_matched,
              src.best_terms,
              src.best_terms_source,
              src.best_terms_date,
              src.best_terms_date_source,
              src.variance_within_tolerance,
              src.resolution_adjusted_total_cost,
              src.resolution_adjusted_total_qty,
              src.consignment_ind,
              src.deal_id,
              src.rtv_ind,
              src.discount_date,
              src.deal_type,
              src.hold_status,
              src.total_cost_inc_tax,
              src.tax_disc_create_date,
              src.dsd_ind,
              src.ers_ind,
              src.supplier_site_id,
              src.reverse_vat_ind,
              src.object_version_id,
              src.header_only,
              src.doc_source,
              src.match_type,
              src.deal_detail_id,
              src.ref_cnr_ext_doc_id,
              src.ref_inv_ext_doc_id);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_HEAD - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   --TODO delete stmts for all child tables
   if L_src_doc_id is NOT NULL then

      delete
        from im_doc_tax idt
       where idt.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_doc_tax iidt
                          where iidt.inject_doc_id = I_inject_doc_id
                            and idt.tax_code      = iidt.tax_code);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_DOC_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_doc_non_merch_tax idnmt
       where idnmt.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_doc_non_merch_tax iidnmt
                          where iidnmt.inject_doc_id = I_inject_doc_id
                            and idnmt.non_merch_code = iidnmt.non_merch_code
                            and idnmt.tax_code       = iidnmt.tax_code);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_DOC_NON_MERCH_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_doc_non_merch idnm
       where idnm.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_doc_non_merch iidnm
                          where iidnm.inject_doc_id = I_inject_doc_id
                            and idnm.non_merch_code = iidnm.non_merch_code);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_DOC_NON_MERCH - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_invoice_detail_tax iidt
       where iidt.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_doc_detail iidd,
                                im_inject_doc_detail_tax iiddt
                          where iidd.inject_doc_id = I_inject_doc_id
                            and iiddt.detail_id    = iidd.detail_id
                            and iidt.item          = iidd.item
                            and iidt.tax_code      = iiddt.tax_code);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_INVOICE_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_invoice_detail iid
       where iid.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_doc_detail iidd
                          where iidd.inject_doc_id = I_inject_doc_id
                            and iid.item           = iidd.item);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_INVOICE_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete from gtt_num_num_str_str_date_date;

      insert into gtt_num_num_str_str_date_date(number_1)
         select im_doc_detail_reason_codes_id
           from im_doc_detail_reason_codes iddrc
          where iddrc.doc_id = L_src_doc_id
            and NOT EXISTS (select 'x'
                              from im_inject_doc_detail iidd
                             where iidd.inject_doc_id              = I_inject_doc_id
                               and iddrc.item                      = iidd.item
                               and NVL(iddrc.reason_code_id, -999) = NVL(iidd.reason_code_id, -999));

      LOGGER.LOG_INFORMATION(L_program||' Insert GTT with IM_DOC_DETAIL_REASON_CODES_ID- SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_doc_detail_rc_tax iddrct
       where im_doc_detail_reason_codes_id IN (select gtt.number_1
                                                 from gtt_num_num_str_str_date_date gtt);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_DOC_DETAIL_RC_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_doc_detail_reason_codes iddrc
       where im_doc_detail_reason_codes_id IN (select gtt.number_1
                                                 from gtt_num_num_str_str_date_date gtt);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_DOC_DETAIL_REASON_CODES - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_fixed_deal_detail_tax ifddt
       where ifddt.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_fixed_deal_tax iifdt
                          where iifdt.inject_doc_id = I_inject_doc_id
                            AND ifddt.seq_no        = iifdt.seq_no);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_FIXED_DEAL_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_fixed_deal_detail ifdd
       where ifdd.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_fixed_deal_detail iifdd
                          where iifdd.inject_doc_id = I_inject_doc_id
                            and iifdd.seq_no        = ifdd.seq_no);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_FIXED_DEAL_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_complex_deal_detail_tax icddt
       where icddt.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_complex_deal_tax iicdt
                          where iicdt.inject_doc_id = I_inject_doc_id
                            AND iicdt.item          = icddt.item
                            AND iicdt.seq_no        = icddt.seq_no);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_COMPLEX_DEAL_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_complex_deal_detail icdd
       where icdd.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_complex_deal_detail iicdd
                          where iicdd.inject_doc_id = I_inject_doc_id
                            and iicdd.item          = icdd.item
                            and iicdd.seq_no        = icdd.seq_no);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_COMPLEX_DEAL_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      delete
        from im_doc_detail_comments iddc
       where iddc.doc_id = L_src_doc_id
         and NOT EXISTS (select 'x'
                           from im_inject_doc_comments iidc
                          where iidc.inject_doc_id = I_inject_doc_id
                            and iddc.comment_id    = iidc.comment_id);

      LOGGER.LOG_INFORMATION(L_program||' Delete IM_DOC_DETAIL_COMMENTS - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   end if;


   merge into im_invoice_detail tgt
   using (select L_tgt_doc_id doc_id,
                 iidd.item item,
                 iidd.unit_cost unit_cost,
                 iidd.qty qty,
                 iidd.unit_cost resolution_adjusted_unit_cost,
                 iidd.qty resolution_adjusted_qty,
                 REIM_CONSTANTS.DOC_ITEM_STATUS_UNMTCH status,
                 REIM_CONSTANTS.YN_NO cost_matched,
                 REIM_CONSTANTS.YN_NO qty_matched,
                 NULL cost_variance_within_tolerance,
                 NULL qty_variance_within_tolerance,
                 REIM_CONSTANTS.YN_NO adjustment_pending,
                 L_user last_updated_by, --cleanup NVL
                 sysdate last_update_date,
                 REIM_CONSTANTS.YN_NO tax_discrepancy_ind,
                 NULL unit_freight,
                 NULL unit_mrp,
                 L_user created_by, -- cleanup NVL
                 sysdate creation_date,
                 REIM_CONSTANTS.ONE object_version_id,
                 iidh.src_doc_id
            from im_inject_doc_head iidh,
                 im_inject_doc_detail iidd
           where iidh.inject_doc_id = I_inject_doc_id
             and iidh.doc_type      = REIM_CONSTANTS.DOC_TYPE_MRCHI
             and iidd.inject_doc_id = iidh.inject_doc_id) src
   on (    tgt.doc_id = NVL(src.src_doc_id, -9999)
       and tgt.item   = src.item)
   when MATCHED then
      update
         set tgt.unit_cost = src.unit_cost,
             tgt.qty       = src.qty,
             tgt.resolution_adjusted_unit_cost = src.resolution_adjusted_unit_cost,
             tgt.resolution_adjusted_qty       = src.resolution_adjusted_qty,
             tgt.last_updated_by               = src.last_updated_by,
             tgt.last_update_date              = src.last_update_date,
             tgt.object_version_id             = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              item,
              unit_cost,
              qty,
              resolution_adjusted_unit_cost,
              resolution_adjusted_qty,
              status,
              cost_matched,
              qty_matched,
              cost_variance_within_tolerance,
              qty_variance_within_tolerance,
              adjustment_pending,
              last_updated_by,
              last_update_date,
              tax_discrepancy_ind,
              unit_freight,
              unit_mrp,
              created_by,
              creation_date,
              object_version_id)
      values (src.doc_id,
              src.item,
              src.unit_cost,
              src.qty,
              src.resolution_adjusted_unit_cost,
              src.resolution_adjusted_qty,
              src.status,
              src.cost_matched,
              src.qty_matched,
              src.cost_variance_within_tolerance,
              src.qty_variance_within_tolerance,
              src.adjustment_pending,
              src.last_updated_by,
              src.last_update_date,
              src.tax_discrepancy_ind,
              src.unit_freight,
              src.unit_mrp,
              src.created_by,
              src.creation_date,
              src.object_version_id);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_INVOICE_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_detail_reason_codes tgt
   using (select L_tgt_doc_id doc_id,
                 iidd.item item,
                 iidd.reason_code_id,
                 iidd.unit_cost unit_cost,
                 iidd.qty qty,
                 iidh.src_doc_id
            from im_inject_doc_head iidh,
                 im_inject_doc_detail iidd
           where iidh.inject_doc_id                        = I_inject_doc_id
             and iidh.doc_type                             <> REIM_CONSTANTS.DOC_TYPE_MRCHI
             and NVL(iidh.deal_type, REIM_CONSTANTS.YN_NO) = REIM_CONSTANTS.YN_NO
             and iidd.inject_doc_id                        = iidh.inject_doc_id) src
   on (    tgt.doc_id                    = NVL(src.src_doc_id, -9999)
       and tgt.item                      = src.item
       and NVL(tgt.reason_code_id, -999) = NVL(src.reason_code_id, -999))
   when MATCHED then
      update
         set tgt.adjusted_unit_cost = src.unit_cost,
             tgt.adjusted_qty       = src.qty,
             tgt.orig_unit_cost     = src.unit_cost,
             tgt.orig_qty           = src.qty,
             tgt.last_updated_by    = L_user,
             tgt.last_update_date   = sysdate,
             tgt.object_version_id  = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (im_doc_detail_reason_codes_id,
              doc_id,
              item,
              reason_code_id,
              status,
              cost_matched,
              qty_matched,
              adjusted_unit_cost,
              adjusted_qty,
              last_updated_by,
              last_update_date,
              orig_unit_cost,
              orig_qty,
              tax_matched,
              unit_freight,
              unit_mrp,
              unit_retail,
              created_by,
              creation_date,
              object_version_id)
      values (im_doc_detail_reason_codes_seq.NEXTVAL,
              src.doc_id,
              src.item,
              src.reason_code_id,
              REIM_CONSTANTS.DOC_ITEM_STATUS_APPRVE,
              REIM_CONSTANTS.YN_NO,
              REIM_CONSTANTS.YN_NO,
              src.unit_cost,
              src.qty,
              L_user,
              sysdate,
              src.unit_cost,
              src.qty,
              NULL,
              NULL,
              NULL,
              NULL,
              L_user,
              sysdate,
              REIM_CONSTANTS.ONE);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_DETAIL_REASON_CODES - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_fixed_deal_detail tgt
   using (select L_tgt_doc_id doc_id,
                 iifdd.seq_no,
                 iifdd.loc_type,
                 iifdd.location,
                 iifdd.dept,
                 iifdd.class,
                 iifdd.subclass,
                 iifdd.income,
                 L_user created_by, -- cleanup NVL
                 sysdate creation_date,
                 L_user last_updated_by, --cleanup NVL
                 sysdate last_update_date,
                 REIM_CONSTANTS.ONE object_version_id,
                 iidh.src_doc_id
            from im_inject_doc_head iidh,
                 im_inject_fixed_deal_detail iifdd
           where iidh.inject_doc_id  = I_inject_doc_id
             AND iifdd.inject_doc_id = iidh.inject_doc_id) src
   on (    tgt.doc_id = NVL(src.src_doc_id, -9999)
       and tgt.seq_no   = src.seq_no)
   when MATCHED then
      update
         set tgt.loc_type          = src.loc_type,
             tgt.location          = src.location,
             tgt.dept              = src.dept,
             tgt.class             = src.class,
             tgt.subclass          = src.subclass,
             tgt.income            = src.income,
             tgt.last_updated_by   = src.last_updated_by,
             tgt.last_update_date  = src.last_update_date,
             tgt.object_version_id = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              seq_no,
              loc_type,
              location,
              dept,
              class,
              subclass,
              income,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.seq_no,
              src.loc_type,
              src.location,
              src.dept,
              src.class,
              src.subclass,
              src.income,
              src.created_by,
              src.creation_date,
              src.last_updated_by,
              src.last_update_date,
              src.object_version_id);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_FIXED_DEAL_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_complex_deal_detail tgt
   using (select L_tgt_doc_id doc_id,
                 iicdd.seq_no,
                 iicdd.item,
                 iicdd.loc_type,
                 iicdd.location,
                 iicdd.order_no,
                 iicdd.local_currency,
                 iicdd.income_local_curr,
                 iicdd.income_deal_curr,
                 iicdd.actual_turnover_units,
                 iicdd.actual_turnover_revenue,
                 L_user created_by, -- cleanup NVL
                 sysdate creation_date,
                 L_user last_updated_by, --cleanup NVL
                 sysdate last_update_date,
                 REIM_CONSTANTS.ONE object_version_id,
                 iidh.src_doc_id
            from im_inject_doc_head iidh,
                 im_inject_complex_deal_detail iicdd
           where iidh.inject_doc_id  = I_inject_doc_id
             and iicdd.inject_doc_id = iidh.inject_doc_id) src
   on (    tgt.doc_id = NVL(src.src_doc_id, -9999)
       and tgt.seq_no = src.seq_no
       and tgt.item   = src.item)
   when MATCHED then
      update
         set tgt.loc_type                = src.loc_type,
             tgt.location                = src.location,
             tgt.order_no                = src.order_no,
             tgt.local_currency          = src.local_currency,
             tgt.income_local_curr       = src.income_local_curr,
             tgt.income_deal_curr        = src.income_deal_curr,
             tgt.actual_turnover_units   = src.actual_turnover_units,
             tgt.actual_turnover_revenue = src.actual_turnover_revenue,
             tgt.last_updated_by         = src.last_updated_by,
             tgt.last_update_date        = src.last_update_date,
             tgt.object_version_id       = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              seq_no,
              loc_type,
              location,
              item,
              order_no,
              local_currency,
              income_local_curr,
              income_deal_curr,
              actual_turnover_units,
              actual_turnover_revenue,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.seq_no,
              src.loc_type,
              src.location,
              src.item,
              src.order_no,
              src.local_currency,
              src.income_local_curr,
              src.income_deal_curr,
              src.actual_turnover_units,
              src.actual_turnover_revenue,
              src.created_by,
              src.creation_date,
              src.last_updated_by,
              src.last_update_date,
              src.object_version_id);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_COMPLEX_DEAL_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_non_merch tgt
   using (select L_tgt_doc_id doc_id,
                 iidnm.non_merch_code,
                 iidnm.non_merch_amount non_merch_amt,
                 L_src_doc_id src_doc_id
            from im_inject_doc_non_merch iidnm
           where iidnm.inject_doc_id = I_inject_doc_id
             and iidnm.non_merch_code is not null) src
   on (    tgt.doc_id = NVL(src.src_doc_id, -9999)
       and tgt.non_merch_code = src.non_merch_code)
   when MATCHED then
      update
         set tgt.non_merch_amt      = src.non_merch_amt,
             tgt.last_updated_by    = L_user,
             tgt.last_update_date   = sysdate,
             tgt.object_version_id  = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              non_merch_code,
              non_merch_amt,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.non_merch_code,
              src.non_merch_amt,
              L_user,
              sysdate,
              L_user,
              sysdate,
              REIM_CONSTANTS.ONE);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_NON_MERCH - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_tax tgt
   using (select L_tgt_doc_id doc_id,
                 iidt.tax_code,
                 iidt.tax_rate,
                 iidt.tax_basis,
                 iidt.tax_amount,
                 L_src_doc_id src_doc_id
            from im_inject_doc_tax iidt
           where iidt.inject_doc_id = I_inject_doc_id
             and iidt.tax_code is not null) src
   on (    tgt.doc_id   = NVL(src.src_doc_id, -9999)
       and tgt.tax_code = src.tax_code)
   when MATCHED then
      update
         set tgt.tax_rate           = src.tax_rate,
             tgt.tax_basis          = src.tax_basis,
             tgt.tax_amount         = src.tax_amount,
             tgt.last_updated_by    = L_user,
             tgt.last_update_date   = sysdate,
             tgt.object_version_id  = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              tax_code,
              tax_rate,
              tax_basis,
              tax_amount,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.tax_code,
              src.tax_rate,
              src.tax_basis,
              src.tax_amount,
              L_user,
              sysdate,
              L_user,
              sysdate,
              REIM_CONSTANTS.ONE);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_invoice_detail_tax tgt
   using (select L_tgt_doc_id doc_id,
                 iidd.item,
                 iiddt.tax_code,
                 iiddt.tax_rate,
                 iiddt.tax_basis,
                 iiddt.tax_amount,
                 iiddt.reverse_vat_ind,
                 L_src_doc_id src_doc_id
            from im_inject_doc_head iidh,
                 im_inject_doc_detail iidd,
                 im_inject_doc_detail_tax iiddt
           where iidh.inject_doc_id = I_inject_doc_id
             and iidh.doc_type      = REIM_CONSTANTS.DOC_TYPE_MRCHI
             and iidd.inject_doc_id = iidh.inject_doc_id
             and iiddt.detail_id    = iidd.detail_id) src
   on (    tgt.doc_id   = NVL(src.src_doc_id, -9999)
       and tgt.item     = src.item
       and tgt.tax_code = src.tax_code)
   when MATCHED then
      update
         set tgt.tax_rate           = src.tax_rate,
             tgt.tax_basis          = src.tax_basis,
             tgt.tax_amount         = src.tax_amount,
             tgt.reverse_vat_ind    = src.reverse_vat_ind,
             tgt.last_updated_by    = L_user,
             tgt.last_update_date   = sysdate,
             tgt.object_version_id  = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              item,
              tax_code,
              tax_rate,
              tax_basis,
              tax_amount,
              tax_formula,
              tax_order,
              tax_formula_type,
              reverse_vat_ind,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.item,
              src.tax_code,
              src.tax_rate,
              src.tax_basis,
              src.tax_amount,
              REIM_CONSTANTS.TAX_FORMULA_COST,
              REIM_CONSTANTS.TAX_DEFLT_APP_ORDER,
              REIM_CONSTANTS.TAX_FORM_TYPE_COST_ONLY,
              src.reverse_vat_ind,
              L_user,
              sysdate,
              L_user,
              sysdate,
              REIM_CONSTANTS.ONE);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_INVOICE_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_detail_rc_tax tgt
   using (select iddrc.im_doc_detail_reason_codes_id,
                 iiddt.tax_code,
                 iiddt.tax_rate,
                 iiddt.tax_basis,
                 iiddt.tax_amount,
                 iiddt.reverse_vat_ind
            from im_inject_doc_head iidh,
                 im_inject_doc_detail iidd,
                 im_inject_doc_detail_tax iiddt,
                 im_doc_detail_reason_codes iddrc
           where iidh.inject_doc_id                        = I_inject_doc_id
             and iidh.doc_type                             <> REIM_CONSTANTS.DOC_TYPE_MRCHI
             and NVL(iidh.deal_type, REIM_CONSTANTS.YN_NO) = REIM_CONSTANTS.YN_NO
             and iidd.inject_doc_id                        = iidh.inject_doc_id
             and iiddt.detail_id                           = iidd.detail_id
             and iddrc.doc_id                              = L_tgt_doc_id
             and iddrc.item                                = iidd.item
             and NVL(iddrc.reason_code_id, -999)           = NVL(iidd.reason_code_id, -999)) src
   on (tgt.im_doc_detail_reason_codes_id = src.im_doc_detail_reason_codes_id)
   when MATCHED then
      update
         set tgt.tax_rate           = src.tax_rate,
             tgt.tax_basis          = src.tax_basis,
             tgt.tax_amount         = src.tax_amount,
             tgt.reverse_vat_ind    = src.reverse_vat_ind,
             tgt.last_updated_by    = L_user,
             tgt.last_update_date   = sysdate,
             tgt.object_version_id  = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (im_doc_detail_reason_codes_id,
              tax_code,
              tax_rate,
              tax_basis,
              tax_amount,
              tax_formula,
              tax_order,
              tax_formula_type,
              reverse_vat_ind,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.im_doc_detail_reason_codes_id,
              src.tax_code,
              src.tax_rate,
              src.tax_basis,
              src.tax_amount,
              REIM_CONSTANTS.TAX_FORMULA_COST,
              REIM_CONSTANTS.TAX_DEFLT_APP_ORDER,
              REIM_CONSTANTS.TAX_FORM_TYPE_COST_ONLY,
              src.reverse_vat_ind,
              L_user,
              sysdate,
              L_user,
              sysdate,
              REIM_CONSTANTS.ONE);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_DETAIL_RC_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_fixed_deal_detail_tax tgt
   using (select L_tgt_doc_id doc_id,
                 iifdt.seq_no,
                 iifdt.tax_code,
                 iifdt.tax_rate,
                 iifdt.tax_basis,
                 iifdt.tax_amount,
                 L_user created_by, -- cleanup NVL
                 SYSDATE creation_date,
                 L_user last_updated_by, --cleanup NVL
                 SYSDATE last_update_date,
                 REIM_CONSTANTS.ONE object_version_id,
                 iidh.src_doc_id
            from im_inject_doc_head iidh,
                 im_inject_fixed_deal_tax iifdt
           where iidh.inject_doc_id  = I_inject_doc_id
             and iifdt.inject_doc_id = iidh.inject_doc_id) src
   on (    tgt.doc_id = NVL(src.src_doc_id, -9999)
       and tgt.seq_no   = src.seq_no)
   when MATCHED then
      update
         set tgt.tax_code          = src.tax_code,
             tgt.tax_rate          = src.tax_rate,
             tgt.tax_basis         = src.tax_basis,
             tgt.tax_amount        = src.tax_amount,
             tgt.last_updated_by   = src.last_updated_by,
             tgt.last_update_date  = src.last_update_date,
             tgt.object_version_id = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              seq_no,
              tax_code,
              tax_rate,
              tax_basis,
              tax_amount,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.seq_no,
              src.tax_code,
              src.tax_rate,
              src.tax_basis,
              src.tax_amount,
              src.created_by,
              src.creation_date,
              src.last_updated_by,
              src.last_update_date,
              src.object_version_id);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_FIXED_DEAL_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_complex_deal_detail_tax tgt
   using (select L_tgt_doc_id doc_id,
                 iicdt.seq_no,
                 iicdt.item,
                 iicdt.tax_code,
                 iicdt.tax_rate,
                 iicdt.tax_basis,
                 iicdt.tax_amount,
                 iicdt.reverse_vat_ind,
                 L_user created_by, -- cleanup NVL
                 sysdate creation_date,
                 L_user last_updated_by, --cleanup NVL
                 sysdate last_update_date,
                 REIM_CONSTANTS.ONE object_version_id,
                 iidh.src_doc_id
            from im_inject_doc_head iidh,
                 im_inject_complex_deal_tax iicdt
           where iidh.inject_doc_id  = I_inject_doc_id
             and iicdt.inject_doc_id = iidh.inject_doc_id) src
   on (    tgt.doc_id = NVL(src.src_doc_id, -9999)
       and tgt.seq_no = src.seq_no
       and tgt.item   = src.item)
   when MATCHED then
      update
         set tgt.tax_code          = src.tax_code,
             tgt.tax_rate          = src.tax_rate,
             tgt.tax_basis         = src.tax_basis,
             tgt.tax_amount        = src.tax_amount,
             tgt.reverse_vat_ind   = src.reverse_vat_ind,
             tgt.last_updated_by   = src.last_updated_by,
             tgt.last_update_date  = src.last_update_date,
             tgt.object_version_id = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              seq_no,
              item,
              tax_code,
              tax_rate,
              tax_basis,
              tax_amount,
              reverse_vat_ind,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.seq_no,
              src.item,
              src.tax_code,
              src.tax_rate,
              src.tax_basis,
              src.tax_amount,
              src.reverse_vat_ind,
              src.created_by,
              src.creation_date,
              src.last_updated_by,
              src.last_update_date,
              src.object_version_id);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_COMPLEX_DEAL_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_non_merch_tax tgt
   using (select L_tgt_doc_id doc_id,
                 iidnmt.non_merch_code,
                 iidnmt.tax_code,
                 iidnmt.tax_rate,
                 iidnmt.tax_basis,
                 iidnmt.tax_amount,
                 L_src_doc_id src_doc_id
            from im_inject_doc_non_merch_tax iidnmt
           where iidnmt.inject_doc_id = I_inject_doc_id) src
   on (    tgt.doc_id         = NVL(src.src_doc_id, -9999)
       and tgt.non_merch_code = src.non_merch_code
       and tgt.tax_code       = src.tax_code)
   when MATCHED then
      update
         set tgt.tax_rate          = src.tax_rate,
             tgt.tax_basis         = src.tax_basis,
             tgt.tax_amount        = src.tax_amount,
             tgt.last_updated_by   = L_user,
             tgt.last_update_date  = sysdate,
             tgt.object_version_id = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (doc_id,
              non_merch_code,
              tax_code,
              tax_rate,
              tax_basis,
              tax_amount,
              created_by,
              creation_date,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.doc_id,
              src.non_merch_code,
              src.tax_code,
              src.tax_rate,
              src.tax_basis,
              src.tax_amount,
              L_user,
              sysdate,
              L_user,
              sysdate,
              REIM_CONSTANTS.ONE);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_NON_MERCH_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_detail_comments tgt
   using (select L_tgt_doc_id src_doc_id,
                 iidc.comment_id,
                 iidc.comment_type,
                 iidc.text,
                 iidc.create_id,
                 iidc.create_datetime,
                 iidc.item,
                 iidc.discrepancy_type,
                 iidc.reason_code_id,
                 iidc.debit_reason_code,
                 iidc.object_version_id,
                 iidc.ref_object_version_id
            from im_inject_doc_comments iidc
           where iidc.inject_doc_id = I_inject_doc_id
         ) src
   on (    tgt.doc_id     = src.src_doc_id
       and tgt.comment_id = src.comment_id)
   when MATCHED then
      update
         set tgt.comment_type       = src.comment_type,
             tgt.text               = src.text,
             tgt.item               = src.item,
             tgt.discrepancy_type   = src.discrepancy_type,
             tgt.reason_code_id     = src.reason_code_id,
             tgt.debit_reason_code  = src.debit_reason_code,
             tgt.last_updated_by    = L_user,
             tgt.last_update_date   = sysdate,
             tgt.object_version_id  = tgt.object_version_id + REIM_CONSTANTS.ONE
   when NOT MATCHED then
      insert (comment_id,
              comment_type,
              text,
              created_by,
              creation_date,
              doc_id,
              item,
              discrepancy_type,
              reason_code_id,
              debit_reason_code,
              last_updated_by,
              last_update_date,
              object_version_id)
      values (src.comment_id,
              src.comment_type,
              src.text,
              L_user,
              sysdate,
              src.src_doc_id,
              src.item,
              src.discrepancy_type,
              src.reason_code_id,
              src.debit_reason_code,
              L_user,
              sysdate,
              REIM_CONSTANTS.ONE);

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_DETAIL_COMMENTS - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   SELECT Count(*) editable into L_editable
    FROM im_inject_doc_head iidh 
    WHERE iidh.inject_doc_id = I_inject_doc_id 
      AND (   EXISTS (SELECT 'x' 
                   FROM im_resolution_action ira 
                  WHERE ira.doc_id = iidh.src_doc_id) 
        OR EXISTS (SELECT 'x' 
                   FROM im_invoice_detail iid 
                  WHERE iid.doc_id = iidh.src_doc_id 
                    AND iid.status = 'MTCH'));

   if L_tax_validation_type = REIM_CONSTANTS.TAX_VALID_TYPE_RECON AND L_editable = 0 then

   --delete old tax disc
      delete
        from im_tax_discrepancy itd
       where itd.doc_id = L_tgt_doc_id;

      insert into im_tax_discrepancy(doc_id,
                                     order_no,
                                     item,
                                     tax_code,
                                     doc_tax_rate,
                                     doc_tax_amount,
                                     verify_tax_rate,
                                     verify_tax_code,
                                     verify_tax_amount,
                                     verify_tax_src,
                                     verify_tax_formula,
                                     verify_tax_order,
                                     created_by,
                                     creation_date,
                                     last_updated_by,
                                     last_update_date,
                                     object_version_id)
                             select L_tgt_doc_id doc_id,
                                    iitd.order_no,
                                    iitd.item,
                                    iitd.tax_code,
                                    iitd.doc_tax_rate,
                                    iitd.doc_tax_amount,
                                    iitd.verify_tax_rate,
                                    iitd.verify_tax_code,
                                    iitd.verify_tax_amount,
                                    iitd.verify_tax_src,
                                    iitd.verify_tax_formula,
                                    iitd.verify_tax_order,
                                    iitd.created_by,
                                    iitd.creation_date,
                                    iitd.last_updated_by,
                                    iitd.last_update_date,
                                    REIM_CONSTANTS.ONE
                               from im_inject_tax_discrepancy iitd
                              where iitd.inject_doc_id = I_inject_doc_id;

      LOGGER.LOG_INFORMATION(L_program||' Insert IM_TAX_DISCREPANCY- SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      --Update Tax discrepancy
      update im_doc_head idh
         set idh.status = REIM_CONSTANTS.DOC_STATUS_TAXDIS,
             idh.tax_disc_create_date = L_vdate,
             idh.last_updated_by      = L_user,
             idh.last_update_date     = sysdate
       where idh.doc_id = L_tgt_doc_id
         and EXISTS (select 'x'
                       from im_tax_discrepancy itd
                      where itd.doc_id = idh.doc_id);

      LOGGER.LOG_INFORMATION(L_program||' Update IM_DOC_HEAD Tax Disc- SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      --Update Tax discrepancy
      merge into im_invoice_detail tgt
      using (select L_tgt_doc_id doc_id,
                    iid.item
               from im_invoice_detail iid,
                    im_tax_discrepancy itd
              where iid.doc_id = L_tgt_doc_id
                and itd.doc_id = L_tgt_doc_id
                and itd.item   = iid.item) src
      on (tgt.doc_id = src.doc_id and
          tgt.item   = src.item)
      when MATCHED then
         update set tgt.tax_discrepancy_ind  = REIM_CONSTANTS.YN_YES,
                    tgt.last_updated_by      = L_user,
                    tgt.last_update_date     = sysdate;

      LOGGER.LOG_INFORMATION(L_program||' Update IM_INVOICE_DETAIL Tax Disc- SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   elsif L_tax_validation_type = REIM_CONSTANTS.TAX_VALID_TYPE_VENDR then

      --delete old tax disc
      delete
        from im_item_tax_audit iita
       where iita.doc_id = L_tgt_doc_id;

      insert into im_item_tax_audit(doc_id,
                                    item,
                                    order_no,
                                    tax_code,
                                    sys_tax_rate,
                                    sys_tax_amount,
                                    sys_tax_formula,
                                    sys_tax_order,
                                    doc_tax_rate,
                                    doc_tax_amount,
                                    doc_tax_formula,
                                    doc_tax_order,
                                    created_by,
                                    creation_date,
                                    last_updated_by,
                                    last_update_date,
                                    object_version_id)
                             select L_tgt_doc_id doc_id,
                                    iitd.item,
                                    iitd.order_no,
                                    iitd.tax_code,
                                    iitd.verify_tax_rate,
                                    iitd.verify_tax_amount,
                                    iitd.verify_tax_formula,
                                    iitd.verify_tax_order,
                                    iitd.doc_tax_rate,
                                    iitd.doc_tax_amount,
                                    REIM_CONSTANTS.TAX_FORMULA_COST,
                                    REIM_CONSTANTS.TAX_DEFLT_APP_ORDER,
                                    iitd.created_by,
                                    iitd.creation_date,
                                    iitd.last_updated_by,
                                    iitd.last_update_date,
                                    REIM_CONSTANTS.ONE
                               from im_inject_tax_discrepancy iitd
                              where iitd.inject_doc_id = I_inject_doc_id;

      LOGGER.LOG_INFORMATION(L_program||' Insert IM_ITEM_TAX_AUDIT - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   end if; --tax_validation_type

   merge into im_inject_doc_head tgt
   using (select iidh.inject_doc_id,
                 idh.doc_id src_doc_id,
                 idh.object_version_id ref_object_version_id,
                 idh.ext_doc_id ext_doc_id,
                 idh.status,
                 idh.created_by,
                 idh.creation_date,
                 idh.approval_id,
                 idh.approval_date,
                 idh.last_updated_by,
                 idh.last_update_date,
                 idh.rtv_ind,
                 idh.header_only,
                 idh.doc_source
            from im_inject_doc_head iidh,
                 im_doc_head idh
           where iidh.inject_doc_id = I_inject_doc_id
             and idh.doc_id         = L_tgt_doc_id) src
   on (tgt.inject_doc_id = src.inject_doc_id)
   when MATCHED then
      update
         set tgt.ref_object_version_id = src.ref_object_version_id,
             tgt.src_doc_id            = src.src_doc_id,
             tgt.ext_doc_id            = src.ext_doc_id,
             tgt.status                = src.status,
             tgt.created_by            = src.created_by,
             tgt.creation_date         = src.creation_date,
             tgt.approval_id           = src.approval_id,
             tgt.approval_date         = src.approval_date,
             tgt.last_updated_by       = src.last_updated_by,
             tgt.last_update_date      = src.last_update_date,
             tgt.rtv_ind               = src.rtv_ind,
             tgt.header_only           = src.header_only,
             tgt.doc_source            = src.doc_source;

   LOGGER.LOG_INFORMATION(L_program||' Merge back object_version_id and src_doc_id - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.LOG_INFORMATION('End of ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when dirty_record then
      O_error_message := SQL_LIB.CREATE_MSG('DIRTY_RECORDS', --constant
                                            --L_dirty_object,
                                            L_program);
      return REIM_CONSTANTS.FAIL;
   when records_locked then
      O_error_message := SQL_LIB.CREATE_MSG('RECORDS_LOCKED', --constant
                                            --L_table_name,
                                            L_program);
      return REIM_CONSTANTS.FAIL;
   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END SAVE_DOCUMENT;
-------------------------------------------------------------------------------------------------------------
-- Name:    LOAD_DOCUMENT
-- Purpose: This function loads documents from Operational Tables to Injector tables for the user to edit Online.
-------------------------------------------------------------------------------------------------------------
FUNCTION LOAD_DOCUMENT(O_error_message IN OUT VARCHAR2,
                       O_inject_id        OUT IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                       O_inject_doc_id    OUT IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                       I_doc_id        IN     IM_DOC_HEAD.DOC_ID%TYPE,
                       I_group_id      IN     IM_DOC_HEAD.GROUP_ID%TYPE DEFAULT NULL)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.LOAD_DOCUMENT';

   cursor C_FETCH_INJECT_DOC_ID is
      select inject_doc_id
        from im_inject_doc_xform_gtt
       where rownum < 2;
BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program ||
                          'I_doc_id: ' || I_doc_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('LOAD_DOC');

   O_inject_id     := im_inject_seq.NEXTVAL;

   delete from im_inject_doc_xform_gtt;
   insert into im_inject_doc_xform_gtt(inject_doc_id,
                                       doc_id)
   select im_inject_doc_seq.NEXTVAL,
          idh.doc_id
     from im_doc_head idh
    where idh.doc_id            = NVL(I_doc_id, idh.doc_id)
      and NVL(idh.group_id, -1) = NVL(I_group_id, NVL(idh.group_id, -1))
      and idh.status            <> REIM_CONSTANTS.DOC_STATUS_DELETE;

   LOGGER.LOG_INFORMATION(L_program||' Insert im_inject_doc_xform_gtt - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if I_group_id is NULL then
      open C_FETCH_INJECT_DOC_ID;
      fetch C_FETCH_INJECT_DOC_ID into O_inject_doc_id;
      close C_FETCH_INJECT_DOC_ID;
      LOGGER.LOG_INFORMATION(L_program||' Generated O_inject_doc_id: ' || O_inject_doc_id);
   end if;

   insert into im_inject_doc_head(inject_id,
                                  transaction_id,
                                  inject_doc_id,
                                  ext_doc_id,
                                  doc_type,
                                  order_no,
                                  rtv_order_no,
                                  location,
                                  loc_type,
                                  vendor,
                                  vendor_type,
                                  ref_vendor,
                                  currency_code,
                                  total_cost,
                                  total_qty,
                                  total_discount,
                                  doc_date,
                                  due_date,
                                  terms,
                                  total_tax_amount,
                                  rtv_ind,
                                  manually_paid_ind,
                                  exchange_rate,
                                  deal_id,
--                                  deal_approval_ind,
                                  freight_type,
                                  merch_type,
                                  payment_method,
                                  custom_doc_ref1,
                                  custom_doc_ref2,
                                  custom_doc_ref3,
                                  custom_doc_ref4,
                                  cross_ref_doc,
                                  group_id,
                                  multi_loc_ind,
                                  reverse_vat_ind,
                                  thread_id,
                                  object_version_id,
                                  status,
                                  terms_dscnt_pct,
                                  approval_id,
                                  approval_date,
                                  pre_paid_ind,
                                  pre_paid_id,
                                  post_date,
                                  ref_auth_no,
                                  deal_type,
                                  hold_status,
                                  total_cost_inc_tax,
                                  header_only,
                                  src_doc_id,
                                  ref_object_version_id,
                                  last_updated_by,
                                  last_update_date,
                                  created_by,
                                  creation_date,
                                  doc_source,
                                  best_terms_source,
                                  best_terms,
                                  best_terms_date,
                                  match_id,
                                  match_date,
                                  workspace_type,
                                  deal_detail_id,
                                  ref_cnr_ext_doc_id,
                                  ref_inv_ext_doc_id)
                           select O_inject_id,
                                  REIM_CONSTANTS.ONE transaction_id,
                                  gtt.inject_doc_id,
                                  idh.ext_doc_id,
                                  idh.type doc_type,
                                  idh.order_no,
                                  idh.rtv_order_no,
                                  idh.location,
                                  idh.loc_type,
                                  idh.supplier_site_id vendor,
                                  idh.vendor_type,
                                  idh.vendor ref_vendor,
                                  idh.currency_code,
                                  idh.total_cost,
                                  idh.total_qty,
                                  idh.total_discount,
                                  idh.doc_date,
                                  idh.due_date,
                                  idh.terms,
                                  NVL((idh.total_cost_inc_tax - idh.total_cost), REIM_CONSTANTS.ZERO) total_tax_amount,
                                  idh.rtv_ind,
                                  idh.manually_paid_ind manually_paid_ind,
                                  idh.exchange_rate,
                                  idh.deal_id,
--                                  NULL deal_approval_ind,
                                  idh.freight_type,
                                  DECODE(idh.consignment_ind,
                                         REIM_CONSTANTS.YN_YES, REIM_CONSTANTS.DOC_MERCH_TYPE_CONSIGNMENT,
                                         DECODE(idh.dsd_ind,
                                                REIM_CONSTANTS.YN_YES, REIM_CONSTANTS.DOC_MERCH_TYPE_DSD,
                                                DECODE(idh.ers_ind,
                                                       REIM_CONSTANTS.YN_YES, REIM_CONSTANTS.DOC_MERCH_TYPE_ERS,
                                                       REIM_CONSTANTS.YN_NO))) merch_type,
                                  idh.payment_method,
                                  idh.custom_doc_ref_1 custom_doc_ref1,
                                  idh.custom_doc_ref_2 custom_doc_ref2,
                                  idh.custom_doc_ref_3 custom_doc_ref3,
                                  idh.custom_doc_ref_4 custom_doc_ref4,
                                  idh.ref_doc cross_ref_doc,
                                  idh.group_id,
                                  REIM_CONSTANTS.YN_NO multi_loc_ind,
                                  idh.reverse_vat_ind,
                                  REIM_CONSTANTS.ONE thread_id,
                                  REIM_CONSTANTS.ONE object_version_id,
                                  idh.status,
                                  idh.terms_dscnt_pct,
                                  idh.approval_id,
                                  idh.approval_date,
                                  idh.pre_paid_ind,
                                  idh.pre_paid_id,
                                  idh.post_date,
                                  idh.ref_auth_no,
                                  idh.deal_type,
                                  idh.hold_status,
                                  idh.total_cost_inc_tax,
                                  idh.header_only,
                                  idh.doc_id src_doc_id,
                                  idh.object_version_id ref_object_version_id,
                                  idh.last_updated_by last_updated_by,
                                  idh.last_update_date last_update_date,
                                  idh.created_by created_by,
                                  idh.creation_date creation_date,
                                  idh.doc_source,
                                  idh.best_terms_source,
                                  idh.best_terms,
                                  idh.best_terms_date,
                                  idh.match_id,
                                  idh.match_date,
                                  REIM_CONSTANTS.INJECT_WORKSPACE_DOC_MAINTAIN,
                                  idh.deal_detail_id,
                                  idh.ref_cnr_ext_doc_id,
                                  idh.ref_inv_ext_doc_id
                             from im_inject_doc_xform_gtt gtt,
                                  im_doc_head idh
                            where idh.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_HEAD - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_doc_tax(inject_id,
                                 transaction_id,
                                 inject_doc_id,
                                 tax_code,
                                 tax_rate,
                                 tax_basis,
                                 tax_amount,
                                 ref_object_version_id,
                                 object_version_id,
                                 last_updated_by,
                                 last_update_date,
                                 created_by,
                                 creation_date)
                          select O_inject_id,
                                 REIM_CONSTANTS.ONE transaction_id,
                                 gtt.inject_doc_id,
                                 idt.tax_code,
                                 idt.tax_rate,
                                 idt.tax_basis,
                                 idt.tax_amount,
                                 idt.object_version_id ref_object_version_id,
                                 REIM_CONSTANTS.ONE object_version_id,
                                 idt.last_updated_by last_updated_by,
                                 idt.last_update_date last_update_date,
                                 idt.created_by created_by,
                                 idt.creation_date creation_date
                            from im_inject_doc_xform_gtt gtt,
                                 im_doc_tax idt
                           where idt.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_doc_non_merch(inject_id,
                                       transaction_id,
                                       inject_doc_id,
                                       non_merch_code,
                                       non_merch_amount,
--                                       service_performed,
--                                       store,
                                       object_version_id,
                                       ref_object_version_id,
                                       last_updated_by,
                                       last_update_date,
                                       created_by,
                                       creation_date)
                                select O_inject_id,
                                       REIM_CONSTANTS.ONE transaction_id,
                                       gtt.inject_doc_id,
                                       idnm.non_merch_code,
                                       idnm.non_merch_amt,
--                                       NULL service_performed,
--                                       NULL store,
                                       REIM_CONSTANTS.ONE object_version_id,
                                       idnm.object_version_id,
                                       idnm.last_updated_by last_updated_by,
                                       idnm.last_update_date last_update_date,
                                       idnm.created_by created_by,
                                       idnm.creation_date creation_date
                                  from im_inject_doc_xform_gtt gtt,
                                       im_doc_non_merch idnm
                                 where idnm.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_NON_MERCH - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_doc_non_merch_tax(inject_doc_id,
                                           inject_id,
                                           non_merch_code,
                                           tax_code,
                                           tax_rate,
                                           tax_basis,
                                           object_version_id,
                                           tax_amount,
                                           ref_object_version_id,
                                           last_updated_by,
                                           last_update_date,
                                           created_by,
                                           creation_date)
                                    select gtt.inject_doc_id,
                                           O_inject_id,
                                           idnmt.non_merch_code,
                                           idnmt.tax_code,
                                           idnmt.tax_rate,
                                           idnmt.tax_basis,
                                           REIM_CONSTANTS.ONE object_version_id,
                                           idnmt.tax_amount,
                                           idnmt.object_version_id,
                                           idnmt.last_updated_by last_updated_by,
                                           idnmt.last_update_date last_update_date,
                                           idnmt.created_by created_by,
                                           idnmt.creation_date creation_date
                                      from im_inject_doc_xform_gtt gtt,
                                           im_doc_non_merch_tax idnmt
                                     where idnmt.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_NON_MERCH_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   delete from gtt_6_num_6_str_6_date;
   insert into gtt_6_num_6_str_6_date(number_1, --doc_id/iddrc_id
                                      number_2, --inject_doc_detail_id
                                      number_3, --doc_id
                                      varchar2_1)
                                      select inner.number_1,
                                             im_inject_doc_detail_seq.NEXTVAL,
                                             inner.doc_id,
                                             inner.item
                                        from (select iid.doc_id number_1,
                                                     --im_inject_doc_detail_seq.NEXTVAL,
                                                     iid.item,
                                                     iid.doc_id
                                                from im_inject_doc_xform_gtt gtt,
                                                     im_invoice_detail iid
                                               where iid.doc_id = gtt.doc_id
                                              union all
                                              select iddrc.im_doc_detail_reason_codes_id number_1,
                                                     --im_inject_doc_detail_seq.NEXTVAL number_2,
                                                     NULL item,
                                                     iddrc.doc_id
                                                from im_inject_doc_xform_gtt gtt,
                                                     im_doc_detail_reason_codes iddrc
                                               where iddrc.doc_id = gtt.doc_id) inner;

   LOGGER.LOG_INFORMATION(L_program||' Insert GTT - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_doc_detail(inject_id,
                                    transaction_id,
                                    inject_doc_id,
                                    detail_id,
                                    item,
                                    vpn,
                                    upc,
                                    item_source,
                                    upc_supplement,
                                    qty,
                                    unit_cost,
                                    total_allowance,
                                    object_version_id,
                                    status,
                                    tax_discrepancy_ind,
                                    reason_code_id,
                                    ref_object_version_id,
                                    last_updated_by,
                                    last_update_date,
                                    created_by,
                                    creation_date)
                             select O_inject_id,
                                    REIM_CONSTANTS.ONE transaction_id,
                                    gtt2.inject_doc_id,
                                    gtt.number_2,
                                    iid.item,
                                    its.vpn,
                                    NULL upc,
                                    REIM_CONSTANTS.ITEM_SRC_ITEM_ID,
                                    NULL upc_supplement,
                                    iid.qty,
                                    iid.unit_cost,
                                    NULL total_allowance,
                                    REIM_CONSTANTS.ONE object_version_id,
                                    iid.status,
                                    iid.tax_discrepancy_ind,
                                    NULL reason_code_id,
                                    iid.object_version_id,
                                    iid.last_updated_by last_updated_by,
                                    iid.last_update_date last_update_date,
                                    iid.created_by created_by,
                                    iid.creation_date creation_date
                               from gtt_6_num_6_str_6_date gtt,
                                    im_inject_doc_xform_gtt gtt2,
                                    im_invoice_detail iid,
                                    im_inject_doc_head iidh,
                                    item_supplier its
                              where gtt2.doc_id = gtt.number_1
                                and iid.doc_id  = gtt2.doc_id
                                and iid.item    = gtt.varchar2_1
                                and iidh.inject_doc_id = gtt2.inject_doc_id
                                and its.supplier (+)   = iidh.vendor
                                and its.item (+)       = iid.item
                             union all
                             select O_inject_id,
                                    REIM_CONSTANTS.ONE transaction_id,
                                    gtt2.inject_doc_id,
                                    gtt.number_2,
                                    iddrc.item,
                                    its.vpn,
                                    NULL upc,
                                    REIM_CONSTANTS.ITEM_SRC_ITEM_ID,
                                    NULL upc_supplement,
                                    iddrc.orig_qty,
                                    iddrc.orig_unit_cost,
                                    NULL total_allowance,
                                    REIM_CONSTANTS.ONE object_version_id,
                                    iddrc.status,
                                    DECODE(iddrc.tax_matched,
                                           REIM_CONSTANTS.YN_YES, REIM_CONSTANTS.YN_NO,
                                           REIM_CONSTANTS.YN_YES) tax_discrepancy_ind,
                                    iddrc.reason_code_id,
                                    iddrc.object_version_id,
                                    iddrc.last_updated_by last_updated_by,
                                    iddrc.last_update_date last_update_date,
                                    iddrc.created_by created_by,
                                    iddrc.creation_date creation_date
                               from gtt_6_num_6_str_6_date gtt,
                                    im_inject_doc_xform_gtt gtt2,
                                    im_doc_detail_reason_codes iddrc,
                                    im_inject_doc_head iidh,
                                    item_supplier its
                              where gtt2.doc_id                         = gtt.number_3
                                and iddrc.im_doc_detail_reason_codes_id = gtt.number_1
                                and gtt.varchar2_1                      is NULL
                                and iidh.inject_doc_id                  = gtt2.inject_doc_id
                                and its.supplier (+)                    = iidh.vendor
                                and its.item (+)                        = iddrc.item;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_doc_detail_tax(detail_id,
                                        tax_code,
                                        tax_rate,
                                        tax_basis,
                                        reverse_vat_ind,
                                        object_version_id,
                                        tax_amount,
                                        ref_object_version_id,
                                        last_updated_by,
                                        last_update_date,
                                        created_by,
                                        creation_date)
                                 select gtt.number_2,
                                        iidt.tax_code,
                                        iidt.tax_rate,
                                        iidt.tax_basis,
                                        iidt.reverse_vat_ind,
                                        REIM_CONSTANTS.ONE object_version_id,
                                        iidt.tax_amount,
                                        iidt.object_version_id ref_object_version_id,
                                        iidt.last_updated_by last_updated_by,
                                        iidt.last_update_date last_update_date,
                                        iidt.created_by created_by,
                                        iidt.creation_date creation_date
                                   from gtt_6_num_6_str_6_date gtt,
                                        im_invoice_detail_tax iidt
                                  where iidt.doc_id = gtt.number_1
                                    and iidt.item   = gtt.varchar2_1
                                 union all
                                 select gtt.number_2,
                                        iddrct.tax_code,
                                        iddrct.tax_rate,
                                        iddrct.tax_basis,
                                        iddrct.reverse_vat_ind,
                                        REIM_CONSTANTS.ONE object_version_id,
                                        iddrct.tax_amount,
                                        iddrct.object_version_id ref_object_version_id,
                                        iddrct.last_updated_by last_updated_by,
                                        iddrct.last_update_date last_update_date,
                                        iddrct.created_by created_by,
                                        iddrct.creation_date creation_date
                                   from gtt_6_num_6_str_6_date gtt,
                                        im_doc_detail_rc_tax iddrct
                                  where iddrct.im_doc_detail_reason_codes_id = gtt.number_1
                                    and gtt.varchar2_1                       is NULL;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_DETAIL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_fixed_deal_detail(inject_id,
                                           inject_doc_id,
                                           seq_no,
                                           loc_type,
                                           location,
                                           dept,
                                           class,
                                           subclass,
                                           income,
                                           object_version_id,
                                           ref_object_version_id,
                                           last_updated_by,
                                           last_update_date,
                                           created_by,
                                           creation_date)
                                    select O_inject_id,
                                           gtt.inject_doc_id,
                                           ifdd.seq_no,
                                           ifdd.loc_type,
                                           ifdd.location,
                                           ifdd.dept,
                                           ifdd.class,
                                           ifdd.subclass,
                                           ifdd.income,
                                           REIM_CONSTANTS.ONE object_version_id,
                                           ifdd.object_version_id,
                                           ifdd.last_updated_by,
                                           ifdd.last_update_date,
                                           ifdd.created_by,
                                           ifdd.creation_date
                                      from im_inject_doc_xform_gtt gtt,
                                           im_fixed_deal_detail ifdd
                                     where ifdd.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_FIXED_DEAL_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_fixed_deal_tax(inject_id,
                                        inject_doc_id,
                                        seq_no,
                                        tax_code,
                                        tax_rate,
                                        tax_basis,
                                        tax_amount,
                                        object_version_id,
                                        ref_object_version_id,
                                        last_updated_by,
                                        last_update_date,
                                        created_by,
                                        creation_date)
                                 select O_inject_id,
                                        gtt.inject_doc_id,
                                        ifddt.seq_no,
                                        ifddt.tax_code,
                                        ifddt.tax_rate,
                                        ifddt.tax_basis,
                                        ifddt.tax_amount,
                                        REIM_CONSTANTS.ONE object_version_id,
                                        ifddt.object_version_id,
                                        ifddt.last_updated_by,
                                        ifddt.last_update_date,
                                        ifddt.created_by,
                                        ifddt.creation_date
                                   from im_inject_doc_xform_gtt gtt,
                                        im_fixed_deal_detail_tax ifddt
                                  where ifddt.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_FIXED_DEAL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_complex_deal_detail(inject_id,
                                             inject_doc_id,
                                             seq_no,
                                             loc_type,
                                             location,
                                             item,
                                             order_no,
                                             local_currency,
                                             income_local_curr,
                                             income_deal_curr,
                                             actual_turnover_units,
                                             actual_turnover_revenue,
                                             object_version_id,
                                             ref_object_version_id,
                                             last_updated_by,
                                             last_update_date,
                                             created_by,
                                             creation_date)
                                      select O_inject_id,
                                             gtt.inject_doc_id,
                                             icdd.seq_no,
                                             icdd.loc_type,
                                             icdd.location,
                                             icdd.item,
                                             icdd.order_no,
                                             icdd.local_currency,
                                             icdd.income_local_curr,
                                             icdd.income_deal_curr,
                                             icdd.actual_turnover_units,
                                             icdd.actual_turnover_revenue,
                                             REIM_CONSTANTS.ONE object_version_id,
                                             icdd.object_version_id,
                                             icdd.last_updated_by,
                                             icdd.last_update_date,
                                             icdd.created_by,
                                             icdd.creation_date
                                        from im_inject_doc_xform_gtt gtt,
                                             im_complex_deal_detail icdd
                                       where icdd.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_COMPLEX_DEAL_DETAIL - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_complex_deal_tax(inject_id,
                                          inject_doc_id,
                                          item,
                                          seq_no,
                                          tax_code,
                                          tax_rate,
                                          tax_basis,
                                          tax_amount,
                                          reverse_vat_ind,
                                          object_version_id,
                                          ref_object_version_id,
                                          last_updated_by,
                                          last_update_date,
                                          created_by,
                                          creation_date)
                                   select O_inject_id,
                                          gtt.inject_doc_id,
                                          icddt.item,
                                          icddt.seq_no,
                                          icddt.tax_code,
                                          icddt.tax_rate,
                                          icddt.tax_basis,
                                          icddt.tax_amount,
                                          icddt.reverse_vat_ind,
                                          REIM_CONSTANTS.ONE object_version_id,
                                          icddt.object_version_id,
                                          icddt.last_updated_by,
                                          icddt.last_update_date,
                                          icddt.created_by,
                                          icddt.creation_date
                                     from im_inject_doc_xform_gtt gtt,
                                          im_complex_deal_detail_tax icddt
                                    where icddt.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_COMPLEX_DEAL_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      insert into im_inject_doc_comments(inject_id,
                                         comment_id,
                                         comment_type,
                                         text,
                                         create_id,
                                         create_datetime,
                                         inject_doc_id,
                                         item,
                                         discrepancy_type,
                                         reason_code_id,
                                         debit_reason_code,
                                         object_version_id,
                                         ref_object_version_id)
                                  select O_inject_id,
                                         idhc.comment_id,
                                         idhc.comment_type,
                                         idhc.text,
                                         idhc.created_by,
                                         idhc.creation_date,
                                         gtt.inject_doc_id,
                                         NULL item,
                                         NULL discrepancy_type,
                                         NULL reason_code_id,
                                         NULL debit_reason_code,
                                         REIM_CONSTANTS.ONE object_version_id,
                                         idhc.object_version_id ref_object_version_id
                                    from im_inject_doc_xform_gtt gtt,
                                         im_doc_head_comments idhc
                                   where idhc.doc_id = gtt.doc_id
                                   and not exists (select 'x'
                                                   from im_doc_detail_comments iddc
                                                   where iddc.doc_id = gtt.doc_id
                                                   and iddc.comment_id = idhc.comment_id)
                                  union all
                                  select O_inject_id,
                                         iddc.comment_id,
                                         iddc.comment_type,
                                         iddc.text,
                                         iddc.created_by,
                                         iddc.creation_date,
                                         gtt.inject_doc_id,
                                         iddc.item,
                                         iddc.discrepancy_type,
                                         iddc.reason_code_id,
                                         iddc.debit_reason_code,
                                         REIM_CONSTANTS.ONE object_version_id,
                                         iddc.object_version_id ref_object_version_id
                                    from im_inject_doc_xform_gtt gtt,
                                         im_doc_detail_comments iddc
                                   where iddc.doc_id = gtt.doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_DETAIL_COMMENTS - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.LOG_INFORMATION('End ' || L_program );

   LOGGER.TIME_STOP('LOAD_DOC');

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END LOAD_DOCUMENT;
-------------------------------------------------------------------------------------------------------------
-- Name:    FETCH_DOC_ITEM_TAX
-- Purpose: This function fetches taxes that can be assigned to an item during document entry.
-------------------------------------------------------------------------------------------------------------
FUNCTION FETCH_DOC_ITEM_TAX(O_error_message IN OUT VARCHAR2,
                            O_item_tax_tbl     OUT OBJ_ITEM_TAX_BREAK_TBL,
                            O_fix_tax_col      OUT VARCHAR2,
                            I_inject_id        IN IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                            I_inject_doc_id    IN IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                            I_item             IN IM_INJECT_DOC_DETAIL.ITEM%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.FETCH_DOC_ITEM_TAX';

   L_tax_validation_type IM_SYSTEM_OPTIONS.TAX_VALIDATION_TYPE%TYPE := NULL;
   L_custom_tax_calc_tbl OBJ_TAX_CALC_TBL                           := NULL;
   L_reverse_vat_ind     VAT_ITEM.REVERSE_VAT_IND%TYPE              := REIM_CONSTANTS.YN_NO;

   custom_tax_error EXCEPTION;

   cursor C_FETCH_DOC_ITEM_TAX_RETLR is
      select OBJ_ITEM_TAX_BREAK_REC(inner.item,
                    --inner.supplier,
                    --inner.location,
                    --inner.eff_date,
                    NULL,
                    NULL,
                    NULL,
                    inner.tax_code,
                    inner.tax_rate,
                    NULL,
                    --DECODE(inner.tax_rate, NULL, 0, ROUND(inner.unit_cost * inner.tax_rate/100, inner.DECIMAL_DIGITS)),
                    NULL,
                    --inner.CALC_UNIT_COST,
                    inner.reverse_vat_ind,
                    NULL,
                    NULL,
                    NULL,
                    REIM_CONSTANTS.TAX_FORMULA_COST,
                    REIM_CONSTANTS.TAX_DEFLT_APP_ORDER,
                    REIM_CONSTANTS.TAX_FORM_TYPE_COST_ONLY)
        from (with doc_vr_info as (select locs.vat_region loc_vat_region,
                                          s.vat_region supp_vat_region,
                                          iidh.doc_date
                                     from im_inject_doc_head iidh,
                                          sups s,
                                          (select store location,
                                                  REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                                  store.vat_region
                                             from store
                                           union all
                                           select wh location,
                                                  REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                                  wh.vat_region
                                             from wh
                                            where wh.wh = wh.physical_wh) locs,
                                          vat_region sups_vr,
                                          vat_region locs_vr
                                    where iidh.inject_doc_id    = I_inject_doc_id
                                      and iidh.inject_id        = I_inject_id
                                      and s.supplier            = iidh.vendor
                                      and locs.location         = iidh.location
                                      and locs.loc_type         = iidh.loc_type
                                      and s.vat_region          = sups_vr.vat_region
                                      and locs.vat_region       = locs_vr.vat_region
                                      and sups_vr.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM
                                      and locs_vr.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM)
              select I_item item,
                     vcr.vat_code tax_code,
                     vcr.vat_rate tax_rate,
                     REIM_CONSTANTS.YN_NO reverse_vat_ind,
                     RANK() OVER (ORDER BY vcr.vat_code desc) vat_code_rank
                from doc_vr_info dvi,
                     vat_region vr,
                     vat_code_rates vcr
               where dvi.loc_vat_region     <> dvi.supp_vat_region
                 and vr.vat_region          = dvi.loc_vat_region
                 and (   vr.acquisition_vat_ind = REIM_CONSTANTS.YN_NO
                      or vr.vat_region_type     = REIM_CONSTANTS.TAX_REGION_NON_MEMBER)
                 and vcr.vat_rate           = REIM_CONSTANTS.ZERO
              union all
              select I_item item,
                     vi.vat_code tax_code,
                     vi.vat_rate tax_rate,
                     vi.reverse_vat_ind reverse_vat_ind,
                     RANK() OVER (PARTITION BY vi.vat_code
                                      ORDER BY vi.active_date desc) vat_code_rank
                from doc_vr_info dvi,
                     vat_region vr,
                     vat_item vi
               where vr.vat_region      = dvi.loc_vat_region
                 and (   dvi.loc_vat_region = dvi.supp_vat_region
                      or (    vr.acquisition_vat_ind = REIM_CONSTANTS.YN_YES
                          and vr.vat_region_type     <> REIM_CONSTANTS.TAX_REGION_NON_MEMBER))
                 and vi.item            = I_item
                 and vi.vat_region      = dvi.loc_vat_region
                 and vi.vat_type        IN (REIM_CONSTANTS.TAX_TYPE_COST,
                                            REIM_CONSTANTS.TAX_TYPE_BOTH)
                 and vi.active_date     <= dvi.doc_date
              union all
              -- Custom vat from RMS
              select tax_tbl.I_item item,
                     tax_detl_tbl.tax_code,
                     tax_detl_tbl.tax_rate,
                     REIM_CONSTANTS.YN_NO reverse_vat_ind,
                     REIM_CONSTANTS.ONE vat_code_rank
                from TABLE(CAST(L_custom_tax_calc_tbl as OBJ_TAX_CALC_TBL)) tax_tbl,
                     TABLE(tax_tbl.O_tax_detail_tbl) tax_detl_tbl) inner
       where inner.vat_code_rank = REIM_CONSTANTS.ONE;

   cursor C_FETCH_DOC_ITEM_TAX_OTHER is
      select OBJ_ITEM_TAX_BREAK_REC(inner.item,
                    --inner.supplier,
                    --inner.location,
                    --inner.eff_date,
                    NULL,
                    NULL,
                    NULL,
                    inner.tax_code,
                    inner.tax_rate,
                    NULL,
                    --DECODE(inner.tax_rate, NULL, 0, ROUND(inner.unit_cost * inner.tax_rate/100, inner.DECIMAL_DIGITS)),
                    NULL,
                    --inner.CALC_UNIT_COST,
                    L_reverse_vat_ind,
                    NULL,
                    NULL,
                    NULL,
                    REIM_CONSTANTS.TAX_FORMULA_COST,
                    REIM_CONSTANTS.TAX_DEFLT_APP_ORDER,
                    REIM_CONSTANTS.TAX_FORM_TYPE_COST_ONLY)
        from (select I_item item,
                     vcr.vat_code tax_code,
                     vcr.vat_rate tax_rate,
                     REIM_CONSTANTS.YN_NO reverse_vat_ind,
                     RANK() OVER (PARTITION BY vcr.vat_code
                                      ORDER BY vcr.active_date desc) vat_code_rank
                from vat_code_rates vcr,
                     im_inject_doc_head iidh
               where iidh.inject_doc_id = I_inject_doc_id
                 and vcr.active_date    <= iidh.doc_date) inner
       where inner.vat_code_rank = REIM_CONSTANTS.ONE;

    CURSOR C_XFORM_TAX_OBJ is
        select OBJ_TAX_CALC_REC(I_item,          -- I_item
                                NULL,            -- I_pack_ind
                                iidh.vendor,     -- I_from_entity
                                REIM_CONSTANTS.TAX_ENTITY_TYPE_SUPP, -- I_from_entity_type
                                iidh.location,   -- I_to_entity
                                DECODE(iidh.loc_type,
                                       REIM_CONSTANTS.LOC_TYPE_STORE, REIM_CONSTANTS.TAX_ENTITY_TYPE_STORE,
                                       REIM_CONSTANTS.TAX_ENTITY_TYPE_WH), -- I_to_entity_type
                                iidh.doc_date,       -- I_effective_from_date
                                REIM_CONSTANTS.ONE,  -- I_amount
                                iidh.currency_code,  -- I_amount_curr
                                'Y',             -- I_amount_tax_incl_ind
                                NULL,            -- I_origin_country_id
                                NULL,            -- O_cum_tax_pct
                                NULL,            -- O_cum_tax_value
                                NULL,            -- O_total_tax_amount
                                NULL,            -- O_total_tax_amount_curr
                                NULL,            -- O_total_recover_amount
                                NULL,            -- O_total_recover_amount_curr
                                NULL,            -- O_tax_detail_tbl
                                NULL,            -- I_tran_type
                                iidh.doc_date,   -- I_tran_date
                                NULL,            -- I_tran_id
                                'C',             -- I_cost_retail_ind
                                NULL,            -- I_source_entity
                                NULL,            -- I_source_entity_type
                                'N',             -- O_tax_exempt_ind
                                NULL,   -- I_vat_code
                                NULL)   -- I_vat_rate
          from im_inject_doc_head iidh,
               sups s,
               (select store location,
                       REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                       store.vat_region
                  from store
                union all
                select wh location,
                       REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                       wh.vat_region
                  from wh
                 where wh.wh = wh.physical_wh) locs,
               vat_region sups_vr,
               vat_region locs_vr
         where iidh.inject_doc_id = I_inject_doc_id
           and iidh.inject_id     = I_inject_id
           and s.supplier         = iidh.vendor
           and locs.location      = iidh.location
           and locs.loc_type      = iidh.loc_type
           and locs_vr.vat_region = locs.vat_region
           and sups_vr.vat_region = s.vat_region
           and (   locs_vr.vat_calc_type = REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM
                or sups_vr.vat_calc_type = REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM);

   cursor C_FETCH_DOC_ITEM_REV_VAT_IND is
      select inner.reverse_vat_ind
        from (with doc_vr_info as (select locs.vat_region loc_vat_region,
                                          s.vat_region supp_vat_region,
                                          iidh.doc_date
                                     from im_inject_doc_head iidh,
                                          sups s,
                                          (select store location,
                                                  REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                                  store.vat_region
                                             from store
                                           union all
                                           select wh location,
                                                  REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                                  wh.vat_region
                                             from wh
                                            where wh.wh = wh.physical_wh) locs,
                                          vat_region sups_vr,
                                          vat_region locs_vr
                                    where iidh.inject_doc_id    = I_inject_doc_id
                                      and iidh.inject_id        = I_inject_id
                                      and s.supplier            = iidh.vendor
                                      and locs.location         = iidh.location
                                      and locs.loc_type         = iidh.loc_type
                                      and s.vat_region          = sups_vr.vat_region
                                      and locs.vat_region       = locs_vr.vat_region
                                      and sups_vr.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM
                                      and locs_vr.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM)
              select I_item item,
                     REIM_CONSTANTS.YN_NO reverse_vat_ind,
                     REIM_CONSTANTS.ONE vat_code_rank
                from doc_vr_info dvi
               where dvi.loc_vat_region     <> dvi.supp_vat_region
              union all
              select I_item item,
                     vi.reverse_vat_ind reverse_vat_ind,
                     RANK() OVER (PARTITION BY vi.item
                                      ORDER BY vi.active_date desc) vat_code_rank
                from doc_vr_info dvi,
                     vat_item vi
               where dvi.loc_vat_region = dvi.supp_vat_region
                 and vi.item            = I_item
                 and vi.vat_region      = dvi.loc_vat_region
                 and vi.vat_type        IN (REIM_CONSTANTS.TAX_TYPE_COST,
                                            REIM_CONSTANTS.TAX_TYPE_BOTH)
                 and vi.active_date     <= dvi.doc_date
              union all
              -- Custom vat from RMS
              select tax_tbl.I_item item,
                     REIM_CONSTANTS.YN_NO reverse_vat_ind,
                     REIM_CONSTANTS.ONE vat_code_rank
                from TABLE(CAST(L_custom_tax_calc_tbl as OBJ_TAX_CALC_TBL)) tax_tbl,
                     TABLE(tax_tbl.O_tax_detail_tbl) tax_detl_tbl) inner
       where inner.vat_code_rank = REIM_CONSTANTS.ONE;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program ||
                          'I_inject_doc_id: ' || I_inject_doc_id ||
                          'I_item: ' || I_item);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('FETCH_ITEM_TAX');

   select tax_validation_type
     into L_tax_validation_type
     from im_system_options;

   if L_tax_validation_type = REIM_CONSTANTS.TAX_VALID_TYPE_RETLR then

      O_fix_tax_col := REIM_CONSTANTS.YN_YES;

      open C_XFORM_TAX_OBJ;
      fetch C_XFORM_TAX_OBJ BULK COLLECT into L_custom_tax_calc_tbl;
      close C_XFORM_TAX_OBJ;

      LOGGER.LOG_INFORMATION('End of Cursor C_XFORM_TAX_OBJ ');

      if L_custom_tax_calc_tbl is NOT NULL and L_custom_tax_calc_tbl.COUNT > 0 then

         if CUSTOM_TAX_SQL.CALC_CTAX_COST_TAX(O_error_message,
                                              L_custom_tax_calc_tbl) = FALSE then
            RAISE custom_tax_error;
         end if;

      end if;

      open C_FETCH_DOC_ITEM_TAX_RETLR;
      fetch C_FETCH_DOC_ITEM_TAX_RETLR BULK COLLECT into O_item_tax_tbl;
      close C_FETCH_DOC_ITEM_TAX_RETLR;

   else

      O_fix_tax_col := REIM_CONSTANTS.YN_NO;

      open C_FETCH_DOC_ITEM_REV_VAT_IND;
      fetch C_FETCH_DOC_ITEM_REV_VAT_IND into L_reverse_vat_ind;
      close C_FETCH_DOC_ITEM_REV_VAT_IND;

      open C_FETCH_DOC_ITEM_TAX_OTHER;
      fetch C_FETCH_DOC_ITEM_TAX_OTHER BULK COLLECT into O_item_tax_tbl;
      close C_FETCH_DOC_ITEM_TAX_OTHER;

   end if;


   LOGGER.LOG_INFORMATION('End ' || L_program );

   LOGGER.TIME_STOP('FETCH_ITEM_TAX');

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when custom_tax_error then
      return REIM_CONSTANTS.FAIL;
   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END FETCH_DOC_ITEM_TAX;
-------------------------------------------------------------------------------------------------------------
-- Name:    ROLLUP_DOC_DETAIL_TAX
-- Purpose: This function updates im_doc_tax with the rolled up values from document details.
-------------------------------------------------------------------------------------------------------------
FUNCTION ROLLUP_DOC_DETAIL_TAX(O_error_message IN OUT VARCHAR2,
                               I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.ROLLUP_DOC_DETAIL_TAX';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   L_has_details VARCHAR2(1) := 'N';

   cursor C_HAS_DETAILS is
      select DECODE(count(1),
                    REIM_CONSTANTS.ZERO, 'N',
                    'Y') has_details
        from (select 'x'
                from im_inject_doc_detail iidd
               where iidd.inject_doc_id = I_inject_doc_id
              union all
              select 'x'
                from im_inject_fixed_deal_tax iifdt
               where iifdt.inject_doc_id = I_inject_doc_id
              union all
              select 'x'
                from im_inject_complex_deal_tax iicdt
               where iicdt.inject_doc_id  = I_inject_doc_id);

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program ||
                          ' I_inject_doc_id: ' || I_inject_doc_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('ROLLUP_DOC_TAX');

   open C_HAS_DETAILS;
   fetch C_HAS_DETAILS into L_has_details;
   close C_HAS_DETAILS;

   if L_has_details = 'N' then
      return REIM_CONSTANTS.SUCCESS;
   end if;

   delete from im_inject_doc_tax
    where inject_doc_id = I_inject_doc_id;

   LOGGER.LOG_INFORMATION(L_program||' Delete IM_INJECT_DOC_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_inject_doc_tax(inject_id,
                                 transaction_id,
                                 inject_doc_id,
                                 tax_code,
                                 tax_rate,
                                 tax_basis,
                                 last_updated_by,
                                 last_update_date,
                                 tax_amount,
                                 ref_object_version_id,
                                 created_by,
                                 creation_date,
                                 object_version_id)
                         select inner.inject_id,
                                REIM_CONSTANTS.ONE transaction_id,
                                inner.inject_doc_id,
                                inner.tax_code,
                                inner.tax_rate,
                                SUM(inner.tax_basis) tax_basis,
                                L_user,
                                sysdate,
                                SUM(inner.tax_amount) tax_amount,
                                REIM_CONSTANTS.ONE ref_object_version_id,
                                L_user,
                                sysdate,
                                REIM_CONSTANTS.ONE object_version_id
                           from (select iidd.inject_id,
                                        iidd.inject_doc_id,
                                        iiddt.tax_code,
                                        iiddt.tax_rate,
                                        SUM(iiddt.tax_basis) tax_basis,
                                        SUM(iiddt.tax_amount) tax_amount
                                   from im_inject_doc_head iidh,
                                        im_inject_doc_detail iidd,
                                        im_inject_doc_detail_tax iiddt
                                  where iidh.inject_doc_id = I_inject_doc_id
                                    and iidh.deal_id       is NULL
                                    and iidd.inject_doc_id = iidh.inject_doc_id
                                    and iiddt.detail_id    = iidd.detail_id
                                  GROUP BY iidd.inject_id,
                                           iidd.inject_doc_id,
                                           iiddt.tax_code,
                                           iiddt.tax_rate
                                 union all
                                 select iifdt.inject_id,
                                        iifdt.inject_doc_id,
                                        iifdt.tax_code,
                                        iifdt.tax_rate,
                                        SUM(iifdt.tax_basis) tax_basis,
                                        SUM(iifdt.tax_amount) tax_amount
                                   from im_inject_fixed_deal_tax iifdt
                                  where iifdt.inject_doc_id = I_inject_doc_id
                                  GROUP BY iifdt.inject_id,
                                           iifdt.inject_doc_id,
                                           iifdt.tax_code,
                                           iifdt.tax_rate
                                 union all
                                 select iicdt.inject_id,
                                        iicdt.inject_doc_id,
                                        iicdt.tax_code,
                                        iicdt.tax_rate,
                                        SUM(iicdt.tax_basis) tax_basis,
                                        SUM(iicdt.tax_amount) tax_amount
                                   from im_inject_doc_head iidh,
                                        im_inject_complex_deal_tax iicdt
                                  where iidh.inject_doc_id  = I_inject_doc_id
                                    and iidh.deal_id        is NOT NULL
                                    and iidh.deal_type      = REIM_CONSTANTS.DEAL_TYPE_COMPLEX
                                    and iicdt.inject_doc_id = iidh.inject_doc_id
                                  GROUP BY iicdt.inject_id,
                                           iicdt.inject_doc_id,
                                           iicdt.tax_code,
                                           iicdt.tax_rate
                                 union all
                                 select iidnm.inject_id,
                                        iidnmt.inject_doc_id,
                                        iidnmt.tax_code,
                                        iidnmt.tax_rate,
                                        SUM(iidnmt.tax_basis) tax_basis,
                                        SUM(iidnmt.tax_amount) tax_amount
                                   from im_inject_doc_non_merch iidnm,
                                        im_inject_doc_non_merch_tax iidnmt
                                  where iidnm.inject_doc_id   = I_inject_doc_id
                                    and iidnmt.inject_doc_id  = iidnm.inject_doc_id
                                    and iidnmt.non_merch_code = iidnm.non_merch_code
                                  GROUP BY iidnm.inject_id,
                                           iidnmt.inject_doc_id,
                                           iidnmt.tax_code,
                                           iidnmt.tax_rate
                                 ) inner
                          GROUP BY inner.inject_id,
                                   inner.inject_doc_id,
                                   inner.tax_code,
                                   inner.tax_rate;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_INJECT_DOC_TAX - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.TIME_STOP('ROLLUP_DOC_TAX');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END ROLLUP_DOC_DETAIL_TAX;
-------------------------------------------------------------------------------------------------------------
-- Name:    DELETE_DOCS
-- Purpose: This function updates status of eligible documents to DELETE.
-------------------------------------------------------------------------------------------------------------
FUNCTION DELETE_DOCS(O_error_message     IN OUT VARCHAR2,
                     O_delete_comments      OUT OBJ_VARCHAR_ID_TABLE,
                     I_workspace_id      IN     IM_DOC_INVC_SEARCH_WS.WORKSPACE_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.DELETE_DOCS';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   L_dirty_record       CONSTANT VARCHAR2(30) := 'DIRTY_RECORD';
   L_prepaid_doc        CONSTANT VARCHAR2(30) := 'PREPAID_DOCUMENT';
   L_child_doc          CONSTANT VARCHAR2(30) := 'CHILD_INVOICE';
   L_mrchi_status       CONSTANT VARCHAR2(30) := 'MRCHI_STATUS';
   L_unappr_credit_note CONSTANT VARCHAR2(30) := 'UNAPPR_CRDNT';
   L_credit_note_req    CONSTANT VARCHAR2(30) := 'CRDNT_REQ';
   L_debt_memo_status   CONSTANT VARCHAR2(30) := 'DEBIT_MEMO_STATUS';
   L_crdt_memo_status   CONSTANT VARCHAR2(30) := 'CREDIT_MEMO_STATUS';
   L_nmrch_status       CONSTANT VARCHAR2(30) := 'NON_MERCH_STATUS';
   L_resln_action       CONSTANT VARCHAR2(30) := 'RESLN_ACTION';
   L_partial_match      CONSTANT VARCHAR2(30) := 'PARTIAL_MATCH';
   L_manual_doc         CONSTANT VARCHAR2(30) := 'MANUAL_MATCH_DOC';
   L_cross_ref_doc      CONSTANT VARCHAR2(30) := 'CROSS_REF_DOC';

   L_error_exists VARCHAR2(1) := NULL;

   cursor C_FETCH_DEL_CMNTS is
      select distinct delete_comment
        from (with im_doc_search_ws as (select doc_id,
                                               status,
                                               type,
                                               doc_head_version_id
                                          from im_doc_invc_search_ws idisw
                                         where idisw.workspace_id = I_workspace_id
                                           and idisw.choice_flag  = REIM_CONSTANTS.YN_YES)
              -- Dirty record
              select idsw.doc_id,
                     L_dirty_record delete_comment
                from im_doc_search_ws idsw,
                     im_doc_head idh
               where idh.doc_id            = idsw.doc_id
                 and idh.object_version_id <> idsw.doc_head_version_id
              union all
              --Prepaid document
              select idsw.doc_id,
                     L_prepaid_doc delete_comment
                from im_doc_search_ws idsw,
                     im_doc_head idh
               where idh.doc_id       = idsw.doc_id
                 and idh.pre_paid_ind = REIM_CONSTANTS.YN_YES
              union all
              --MRCHI valid statuses
              select idsw.doc_id,
                     L_mrchi_status delete_comment
                from im_doc_search_ws idsw
               where idsw.type   = REIM_CONSTANTS.DOC_TYPE_MRCHI
                 and idsw.status NOT IN (REIM_CONSTANTS.DOC_STATUS_RMTCH,
                                         REIM_CONSTANTS.DOC_STATUS_URMTCH,
                                         REIM_CONSTANTS.DOC_STATUS_TAXDIS,
                                         REIM_CONSTANTS.DOC_STATUS_WORKSHEET)
              union all
              --CRDNT valid statuses
              select idsw.doc_id,
                     L_unappr_credit_note delete_comment
                from im_doc_search_ws idsw
               where idsw.type   = REIM_CONSTANTS.DOC_TYPE_CRDNT
                 and idsw.status NOT IN (REIM_CONSTANTS.DOC_STATUS_APPRVE,
                                         REIM_CONSTANTS.DOC_STATUS_WORKSHEET)
              union all
              --Credit Note requests
              select idsw.doc_id,
                     L_credit_note_req delete_comment
                from im_doc_search_ws idsw
               where idsw.type   IN (REIM_CONSTANTS.DOC_TYPE_CRDNRC,
                                     REIM_CONSTANTS.DOC_TYPE_CRDNRQ,
                                     REIM_CONSTANTS.DOC_TYPE_CRDNRT)
                 and idsw.status NOT IN (REIM_CONSTANTS.DOC_STATUS_APPRVE, REIM_CONSTANTS.DOC_STATUS_WORKSHEET)
              union all
              --Debit Memo valid statuses
              select idsw.doc_id,
                     L_debt_memo_status delete_comment
                from im_doc_search_ws idsw
               where idsw.type   IN (REIM_CONSTANTS.DOC_TYPE_DEBMEC,
                                     REIM_CONSTANTS.DOC_TYPE_DEBMEQ,
                                     REIM_CONSTANTS.DOC_TYPE_DEBMET)
                 and idsw.status NOT IN (REIM_CONSTANTS.DOC_STATUS_APPRVE,
                                         REIM_CONSTANTS.DOC_STATUS_WORKSHEET,
                                         REIM_CONSTANTS.DOC_STATUS_SUBMIT)
              union all
              --Credit Memo valid statuses
              select idsw.doc_id,
                     L_crdt_memo_status delete_comment
                from im_doc_search_ws idsw
               where idsw.type   IN (REIM_CONSTANTS.DOC_TYPE_CRDMEC,
                                     REIM_CONSTANTS.DOC_TYPE_CRDMEQ)
                 and idsw.status NOT IN (REIM_CONSTANTS.DOC_STATUS_APPRVE,
                                         REIM_CONSTANTS.DOC_STATUS_WORKSHEET,
                                         REIM_CONSTANTS.DOC_STATUS_SUBMIT)
              union all
              --Non-Merch valid statuses
              select idsw.doc_id,
                     L_nmrch_status delete_comment
                from im_doc_search_ws idsw
               where idsw.type   = REIM_CONSTANTS.DOC_TYPE_NMRCHI
                 and idsw.status NOT IN (REIM_CONSTANTS.DOC_STATUS_APPRVE,
                                         REIM_CONSTANTS.DOC_STATUS_WORKSHEET)
              union all
              --has resolutions other than tax resolutions
              select idsw.doc_id,
                     L_resln_action delete_comment
                from im_doc_search_ws idsw
               where EXISTS (select 'x'
                               from im_resolution_action ira,
                                    im_reason_codes irc
                              where ira.doc_id            = idsw.doc_id
                                and irc.reason_code_id    = ira.reason_code_id
                                and irc.reason_code_type != REIM_CONSTANTS.REASON_CODE_TYPE_TAX)
              union all
              -- has been matched
              select idsw.doc_id,
                     L_partial_match delete_comment
                from im_doc_search_ws idsw
               where EXISTS (select 'x'
                               from im_rcpt_item_posting_invoice iripi
                              where iripi.doc_id = idsw.doc_id)
              union all
              -- only manual docs can be deleted
              select idsw.doc_id,
                     L_manual_doc delete_comment
                from im_doc_search_ws idsw
               where EXISTS (select 'x'
                               from im_doc_head idh
                              where idsw.doc_id      = idh.doc_id
                                and idh.doc_source  NOT IN (REIM_CONSTANTS.MATCH_TYPE_MANUAL, REIM_CONSTANTS.MATCH_TYPE_EXTERNAL))
              union all
              -- referred by other docs
              select idsw.doc_id,
                     L_cross_ref_doc delete_comment
                from im_doc_search_ws idsw
               where EXISTS (select 'x'
                               from im_doc_head idh
                              where idh.ref_doc = idsw.doc_id));

   cursor C_LOCK_DOC_HEAD is
      select 'x'
        from im_doc_head idh
       where EXISTS (select 'x'
                       from im_doc_invc_search_ws idisw
                      where idisw.workspace_id = I_workspace_id
                        and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
                        and idisw.doc_id       = idh.doc_id)
         for UPDATE NOWAIT;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('DELETE_DOCS');

   open C_FETCH_DEL_CMNTS;
   fetch C_FETCH_DEL_CMNTS BULK COLLECT into O_delete_comments;
   close C_FETCH_DEL_CMNTS;

   LOGGER.LOG_INFORMATION(L_program||' Generate error object - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if O_delete_comments is NOT NULL and O_delete_comments.COUNT > REIM_CONSTANTS.ZERO then
      LOGGER.TIME_STOP('DELETE_DOCS');
      LOGGER.LOG_INFORMATION('End ' || L_program );
      return REIM_CONSTANTS.SUCCESS;
   end if;

   open C_LOCK_DOC_HEAD;
   close C_LOCK_DOC_HEAD;

   delete from im_tax_discrepancy itd
    where EXISTS (select 'x'
                    from im_doc_invc_search_ws idisw
                   where idisw.workspace_id = I_workspace_id
                     and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
                     and idisw.status       = REIM_CONSTANTS.DOC_STATUS_TAXDIS
                     and idisw.doc_id       = itd.doc_id);

   LOGGER.LOG_INFORMATION(L_program||' Delete IM_TAX_DISCREPANCY - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   delete from im_item_tax_audit iita
    where EXISTS (select 'x'
                    from im_doc_invc_search_ws idisw
                   where idisw.workspace_id = I_workspace_id
                     and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
                     and idisw.doc_id       = iita.doc_id);

   LOGGER.LOG_INFORMATION(L_program||' Delete IM_ITEM_TAX_AUDIT - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_head tgt
   using (select /*+ CARDINALITY(ids, 10) */ idisw.doc_id
            from im_doc_invc_search_ws idisw
           where idisw.workspace_id = I_workspace_id
             and idisw.choice_flag  = REIM_CONSTANTS.YN_YES) src
   on (tgt.doc_id = src.doc_id)
   when MATCHED then
      update
         set tgt.status            = REIM_CONSTANTS.DOC_STATUS_DELETE,
             tgt.last_updated_by   = L_user,
             tgt.last_update_date  = SYSDATE,
             tgt.object_version_id = tgt.object_version_id + REIM_CONSTANTS.ONE;

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_HEAD - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   update im_doc_invc_search_ws idisw
      set status = REIM_CONSTANTS.DOC_STATUS_DELETE
    where idisw.workspace_id = I_workspace_id
      and idisw.choice_flag  = REIM_CONSTANTS.YN_YES;

   LOGGER.LOG_INFORMATION(L_program||' Update IM_DOC_INVC_SEARCH_WS - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   --Update debit memo qty and amount
   merge into im_doc_detail_reason_codes target
   using (select iddrcd.im_doc_detail_reason_codes_id,
                 DECODE(idh.type,
                        REIM_CONSTANTS.DOC_TYPE_CRDMEC, iddrcc.adjusted_unit_cost,
                        0) reversal_unit_cost,
                 DECODE(idh.type,
                        REIM_CONSTANTS.DOC_TYPE_CRDMEQ, iddrcc.adjusted_qty,
                        0) reversal_qty
            from im_doc_invc_search_ws idisw,
                 im_doc_detail_reason_codes iddrcc,
                 im_doc_head idh,
                 im_doc_detail_reason_codes iddrcd
           where idisw.workspace_id = I_workspace_id
             and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
             and idisw.doc_id       = idh.doc_id
             and idh.type           IN (REIM_CONSTANTS.DOC_TYPE_CRDMEC,
                                        REIM_CONSTANTS.DOC_TYPE_CRDMEQ)
             and iddrcc.doc_id      = idh.doc_id
             and iddrcd.doc_id      = idh.ref_doc
             and iddrcd.item        = iddrcc.item) source
      on (source.im_doc_detail_reason_codes_id = target.im_doc_detail_reason_codes_id)
   when MATCHED then
      update
         set target.last_updated_by    = L_user,
             target.last_update_date   = SYSDATE,
             target.object_version_id  = target.object_version_id + REIM_CONSTANTS.ONE,
             target.reversed_qty       = NVL(target.reversed_qty, 0) - source.reversal_qty,
             target.reversed_unit_cost = NVL(target.reversed_unit_cost, 0) + source.reversal_unit_cost;

        update im_doc_invc_search_ws idisw
            set idisw.choice_flag  = REIM_CONSTANTS.YN_NO
                where idisw.workspace_id = I_workspace_id
                  and idisw.choice_flag  = REIM_CONSTANTS.YN_YES;

   LOGGER.TIME_STOP('DELETE_DOCS');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));
      return REIM_CONSTANTS.FAIL;

END DELETE_DOCS;
-------------------------------------------------------------------------------------------------------------
-- Name:    CREATE_CN_FROM_CNR
-- Purpose: This function creates credit notes from credit note requests.
-------------------------------------------------------------------------------------------------------------
FUNCTION CREATE_CN_FROM_CNR(O_error_message IN OUT VARCHAR2,
                            O_cnr_comments     OUT OBJ_VARCHAR_ID_TABLE,
                            O_inject_id        OUT IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                            O_inject_doc_id    OUT IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                            I_workspace_id  IN     IM_DOC_INVC_SEARCH_WS.WORKSPACE_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(40) := 'REIM_DOCUMENT_SQL.CREATE_CN_FROM_CNR';

   L_user   IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_vdate  DATE                    := GET_VDATE;
   L_doc_id IM_DOC_HEAD.DOC_ID%TYPE := NULL;

   L_dirty_record CONSTANT VARCHAR2(30) := 'DIRTY_RECORD';
   L_doc_type     CONSTANT VARCHAR2(30) := 'DOC_TYPE';
   L_multi_docs   CONSTANT VARCHAR2(30) := 'MULTIPLE_DOCS_SELECTED';

   cursor C_FETCH_CNR_CMNTS is
      select distinct cnr_comment
        from (with im_doc_search_ws as (select doc_id,
                                               type,
                                               doc_head_version_id
                                          from im_doc_invc_search_ws idisw
                                         where idisw.workspace_id = I_workspace_id
                                           and idisw.choice_flag  = REIM_CONSTANTS.YN_YES)
              --dirty check (check for object_version_id between WS and ops tables)
              select idsw.doc_id,
                     L_dirty_record cnr_comment
                from im_doc_search_ws idsw,
                     im_doc_head idh
               where idh.doc_id            = idsw.doc_id
                 and idh.object_version_id <> idsw.doc_head_version_id
              union all
              --document type check
              select doc_id,
                     L_doc_type cnr_comment
                from im_doc_search_ws
               where type NOT IN (REIM_CONSTANTS.DOC_TYPE_CRDNRC,
                                  REIM_CONSTANTS.DOC_TYPE_CRDNRQ,
                                  REIM_CONSTANTS.DOC_TYPE_CRDNRT)
              --check for more than one doc being selected
              union all
              select doc_id,
                     L_multi_docs cnr_comment
                from (select doc_id,
                             COUNT(doc_id) OVER() cnt
                        from im_doc_search_ws)
               where cnt > 1);

   cursor C_LOCK_DOC_HEAD is
      select 'x'
        from im_doc_head idh
       where EXISTS (select 'x'
                       from im_doc_invc_search_ws idisw
                      where idisw.workspace_id = I_workspace_id
                        and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
                        and idisw.doc_id       = idh.doc_id)
         for UPDATE NOWAIT;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('CN_FROM_CNR');

   open C_FETCH_CNR_CMNTS;
   fetch C_FETCH_CNR_CMNTS BULK COLLECT into O_cnr_comments;
   close C_FETCH_CNR_CMNTS;

   LOGGER.LOG_INFORMATION(L_program||' Generate error object - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if O_cnr_comments is NOT NULL and
      O_cnr_comments.COUNT > REIM_CONSTANTS.ZERO then
      ---
      LOGGER.TIME_STOP('CN_FROM_CNR');
      LOGGER.LOG_INFORMATION('End ' || L_program );
      return REIM_CONSTANTS.SUCCESS;
   end if;

   open C_LOCK_DOC_HEAD;
   close C_LOCK_DOC_HEAD;

   select doc_id
     into L_doc_id
     from im_doc_invc_search_ws
    where workspace_id = I_workspace_id
      and choice_flag  = REIM_CONSTANTS.YN_YES;

   if LOAD_DOCUMENT(O_error_message,
                    O_inject_id,
                    O_inject_doc_id,
                    L_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   delete
     from im_inject_doc_comments
    where inject_doc_id = O_inject_doc_id;

   --Translate data
merge into im_inject_doc_head target
   using (select  iidh.inject_doc_id,
                 iidh.src_doc_id,
                 iidh.ext_doc_id,
                 iidh.custom_doc_ref4,
                 DECODE(DECODE(iidh.deal_id,NULL,supp_sites.hold_invoices,supp_sites.hold_invoices),
                        'Y','H','N') hold_invoices
                 from im_inject_doc_head iidh,
                 (SELECT NVL(supp_site.supplier, supp_par.supplier) supplier,
  NVL(supp_site.hold_invoices, supp_par.hold_invoices) hold_invoices
FROM
  (SELECT iso.supplier,
    iso.hold_invoices
  FROM im_supplier_options iso,
    sups
  WHERE iso.supplier        = sups.supplier
  AND sups.supplier_parent IS NOT NULL
  ) supp_site,
  (SELECT sups.supplier,
    iso.hold_invoices
  FROM im_supplier_options iso,
    sups
  WHERE iso.supplier = sups.supplier_parent
  ) supp_par
WHERE supp_par.supplier = supp_site.supplier (+)
) supp_sites 
  WHERE iidh.inject_doc_id = O_inject_doc_id
    AND iidh.deal_id IS NULL 
    AND iidh.vendor = supp_sites.supplier
UNION
SELECT iidh.inject_doc_id,
  iidh.src_doc_id,
  iidh.ext_doc_id,
  iidh.custom_doc_ref4,
  DECODE(iso.hold_invoices, 'Y','H','N') hold_invoices       
FROM im_inject_doc_head iidh,
      im_supplier_options iso,
      sups
where iidh.inject_doc_id = O_inject_doc_id
             AND iso.supplier        = sups.supplier
             AND sups.supplier_parent IS NULL
             AND iidh.deal_id is not NULL and iidh.ref_vendor = iso.supplier) source
  on (target.inject_doc_id = source.inject_doc_id)
   when MATCHED then
      update
         set doc_type              = REIM_CONSTANTS.DOC_TYPE_CRDNT,
             cross_ref_doc         = source.src_doc_id,
              ref_cnr_ext_doc_id     = source.ext_doc_id,
             custom_doc_ref4       = source.custom_doc_ref4,
             src_doc_id            = NULL,
             hold_status           = source.hold_invoices,
             status                = REIM_CONSTANTS.DOC_ITEM_STATUS_APPRVE,
             doc_date              = L_vdate,
             doc_source            = REIM_CONSTANTS.DOC_SOURCE_MANL,
             ext_doc_id            = NULL,
             match_date            = NULL,
             post_date             = NULL,
             ref_object_version_id = REIM_CONSTANTS.ONE,
             created_by            = L_user,
             creation_date         = sysdate,
             pre_paid_ind          = 'N',
             approval_id           = NULL,
             approval_date         = NULL;

   LOGGER.LOG_INFORMATION(L_program||' Generate error object - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.TIME_STOP('CN_FROM_CNR');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION
   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));
      return REIM_CONSTANTS.FAIL;

END CREATE_CN_FROM_CNR;
-------------------------------------------------------------------------------------------------------------
-- Name:    VOID_CNR
-- Purpose: This function updates status of eligible documents to VOID.
-------------------------------------------------------------------------------------------------------------
FUNCTION VOID_CNR(O_error_message  IN OUT VARCHAR2,
                  O_void_comments     OUT OBJ_VARCHAR_ID_TABLE,
                  I_workspace_id   IN     IM_DOC_INVC_SEARCH_WS.WORKSPACE_ID%TYPE,
                  I_reason_code_id IN     IM_DOC_DETAIL_COMMENTS.REASON_CODE_ID%TYPE,
                  I_comment        IN     IM_DOC_DETAIL_COMMENTS.TEXT%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(30) := 'REIM_DOCUMENT_SQL.VOID_CNR';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   L_dirty_record CONSTANT VARCHAR2(30) := 'DIRTY_RECORD';
   L_doc_status   CONSTANT VARCHAR2(30) := 'DOC_STATUS';
   L_doc_type     CONSTANT VARCHAR2(30) := 'DOC_TYPE';
   L_reason_code  CONSTANT VARCHAR2(30) := 'REASON_CODE_STATUS';

   cursor C_FETCH_VOID_CMNTS is
      select distinct void_comment
        from (with im_doc_search_ws as (select doc_id,
                                               status,
                                               type,
                                               doc_head_version_id
                                          from im_doc_invc_search_ws idisw
                                         where idisw.workspace_id = I_workspace_id
                                           and idisw.choice_flag  = REIM_CONSTANTS.YN_YES)
              --dirty check (check for object_version_id between WS and ops tables)
              select idsw.doc_id,
                     L_dirty_record void_comment
                from im_doc_search_ws idsw,
                     im_doc_head idh
               where idh.doc_id            = idsw.doc_id
                 and idh.object_version_id <> idsw.doc_head_version_id
              union all
              --document status check
              select idsw.doc_id,
                     L_doc_status void_comment
                from im_doc_search_ws idsw
               where idsw.status != REIM_CONSTANTS.DOC_STATUS_APPRVE
              union all
              --document type check
              select idsw.doc_id,
                     L_doc_type void_comment
                from im_doc_search_ws idsw
               where idsw.type NOT IN (REIM_CONSTANTS.DOC_TYPE_CRDNRC,
                                       REIM_CONSTANTS.DOC_TYPE_CRDNRQ,
                                       REIM_CONSTANTS.DOC_TYPE_CRDNRT)
              union all
              --reason code check
              select idsw.doc_id,
                     L_reason_code void_comment
                from im_doc_search_ws idsw,
                     im_doc_detail_reason_codes iddrc
               where idsw.doc_id  = iddrc.doc_id
                 and iddrc.status = REIM_CONSTANTS.DOC_STATUS_MTCH);

   cursor C_LOCK_DOC_HEAD is
      select 'x'
        from im_doc_head idh
       where EXISTS (select 'x'
                       from im_doc_invc_search_ws idisw
                      where idisw.workspace_id = I_workspace_id
                        and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
                        and idisw.doc_id       = idh.doc_id)
         for UPDATE NOWAIT;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('VOID_CNR');

   open C_FETCH_VOID_CMNTS;
   fetch C_FETCH_VOID_CMNTS BULK COLLECT into O_void_comments;
   close C_FETCH_VOID_CMNTS;

   LOGGER.LOG_INFORMATION(L_program||' Generate error object - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if O_void_comments is NOT NULL and
      O_void_comments.COUNT > REIM_CONSTANTS.ZERO then
      ---
      LOGGER.TIME_STOP('VOID_CNR');
      LOGGER.LOG_INFORMATION('End ' || L_program );
      return REIM_CONSTANTS.SUCCESS;
   end if;

   open C_LOCK_DOC_HEAD;
   close C_LOCK_DOC_HEAD;

   merge into im_doc_head target
   using (select doc_id
            from im_doc_invc_search_ws
           where workspace_id = I_workspace_id
             and choice_flag  = REIM_CONSTANTS.YN_YES) source
   on (target.doc_id = source.doc_id)
   when MATCHED then
      update
         set target.status            = REIM_CONSTANTS.DOC_STATUS_VOID,
             target.last_updated_by   = L_user,
             target.last_update_date  = SYSDATE,
             target.object_version_id = target.object_version_id + REIM_CONSTANTS.ONE;

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_HEAD - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_doc_invc_search_ws target
   using (select doc_id,
                 doc_head_version_id
            from im_doc_invc_search_ws
           where workspace_id = I_workspace_id
             and choice_flag  = REIM_CONSTANTS.YN_YES) source
   on (target.doc_id = source.doc_id)
   when MATCHED then
      update
         set target.status              = REIM_CONSTANTS.DOC_STATUS_VOID,
             target.doc_head_version_id = source.doc_head_version_id + REIM_CONSTANTS.ONE;

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_INVC_SEARCH_WS - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_resolution_action (doc_id,
                                     item,
                                     reason_code_id,
                                     action,
                                     qty,
                                     unit_cost,
                                     extended_cost,
                                     status,
                                     shipment,
                                     created_by,
                                     creation_date,
                                     last_updated_by,
                                     last_update_date,
                                     object_version_id)
      select idisw.doc_id,
             iddrc.item,
             irc.reason_code_id,
             irc.action,
             iddrc.adjusted_qty,
             iddrc.adjusted_unit_cost,
             iddrc.adjusted_qty * iddrc.adjusted_unit_cost, -- extended_cost = qty * unit_cost
             REIM_CONSTANTS.RCA_STATUS_ROLLEDUP,
             NULL,
             L_user,
             SYSDATE,
             L_user,
             SYSDATE,
             REIM_CONSTANTS.ONE
        from im_doc_invc_search_ws idisw,
             im_doc_detail_reason_codes iddrc,
             im_reason_codes irc
       where idisw.workspace_id = I_workspace_id
         and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
         and idisw.doc_id       = iddrc.doc_id
         and iddrc.cost_matched = REIM_CONSTANTS.YN_NO
         and iddrc.qty_matched  = REIM_CONSTANTS.YN_NO
         and irc.reason_code_id = I_reason_code_id;

   LOGGER.LOG_INFORMATION(L_program||' Insert IM_RESOLUTION_ACTION - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   insert into im_doc_detail_comments (comment_id,
                                       comment_type,
                                       text,
                                       created_by,
                                       creation_date,
                                       doc_id,
                                       item,
                                       discrepancy_type,
                                       reason_code_id,
                                       debit_reason_code,
                                       last_updated_by,
                                       last_update_date,
                                       object_version_id)
      select IM_DOC_DETAIL_COMMENTS_SEQ.NEXTVAL,
             REIM_CONSTANTS.CMNT_TYPE_INTERNAL,
             I_comment,
             L_user,
             SYSDATE,
             idisw.doc_id,
             iid.item,
             NULL,
             I_reason_code_id,
             NULL,
             L_user,
             SYSDATE,
             REIM_CONSTANTS.ONE
        from im_doc_invc_search_ws idisw,
             im_invoice_detail iid
       where idisw.workspace_id = I_workspace_id
         and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
         and idisw.doc_id       = iid.doc_id
         and iid.cost_matched   = REIM_POSTING_SQL.YN_NO
         and iid.qty_matched    = REIM_POSTING_SQL.YN_NO
         and I_comment          is NOT NULL;

   LOGGER.LOG_INFORMATION(L_program||' Insert im_doc_detail_comments - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.TIME_STOP('VOID_CNR');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));
      return REIM_CONSTANTS.FAIL;

END VOID_CNR;
-------------------------------------------------------------------------------------------------------------
-- Name:    RELEASE HOLD
-- Purpose: This function updates status of eligible documents to RELEASED.
-------------------------------------------------------------------------------------------------------------
FUNCTION RELEASE_HOLD(O_error_message     IN OUT VARCHAR2,
                      O_release_comments     OUT OBJ_VARCHAR_ID_TABLE,
                      I_workspace_id      IN     IM_DOC_INVC_SEARCH_WS.WORKSPACE_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(30) := 'REIM_DOCUMENT_SQL.RELEASE_HOLD';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

   L_dirty_record    CONSTANT VARCHAR2(30) := 'DIRTY_RECORD';
   L_not_held_record CONSTANT VARCHAR2(30) := 'NOT_HELD';

   L_error_exists VARCHAR2(1) := NULL;

   cursor C_FETCH_RELEASE_CMNTS is
      select distinct release_comment
        from (with im_doc_search_ws as (select doc_id,
                                               status,
                                               type,
                                               doc_head_version_id
                                          from im_doc_invc_search_ws idisw
                                         where idisw.workspace_id = I_workspace_id
                                           and idisw.choice_flag  = REIM_CONSTANTS.YN_YES)
              select idsw.doc_id,
                     L_dirty_record release_comment
                from im_doc_search_ws idsw,
                     im_doc_head idh
               where idh.doc_id            = idsw.doc_id
                 and idh.object_version_id <> idsw.doc_head_version_id
              union all
              select idsw.doc_id,
                     L_not_held_record release_comment
                from im_doc_search_ws idsw
               where EXISTS (select 'x'
                               from im_doc_head idh
                              where idsw.doc_id      = idh.doc_id
                                and idh.hold_status != REIM_CONSTANTS.HOLD_STATUS_HELD));

   cursor C_LOCK_DOC_HEAD is
      select 'x'
        from im_doc_head idh
       where EXISTS (select 'x'
                       from im_doc_invc_search_ws idisw
                      where idisw.workspace_id = I_workspace_id
                        and idisw.choice_flag  = REIM_CONSTANTS.YN_YES
                        and idisw.doc_id       = idh.doc_id)
         for UPDATE NOWAIT;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('RELEASE_HOLD');

   open C_FETCH_RELEASE_CMNTS;
   fetch C_FETCH_RELEASE_CMNTS BULK COLLECT into O_release_comments;
   close C_FETCH_RELEASE_CMNTS;

   LOGGER.LOG_INFORMATION(L_program||' Generate error object - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if O_release_comments is NOT NULL and
      O_release_comments.COUNT > REIM_CONSTANTS.ZERO then
      ---
      LOGGER.TIME_STOP('RELEASE_HOLD');
      LOGGER.LOG_INFORMATION('End ' || L_program );
      return REIM_CONSTANTS.SUCCESS;
   end if;

   open C_LOCK_DOC_HEAD;
   close C_LOCK_DOC_HEAD;

   merge into im_doc_head target
   using (select idisw.doc_id
            from im_doc_invc_search_ws idisw
           where idisw.workspace_id = I_workspace_id
             and idisw.choice_flag  = REIM_CONSTANTS.YN_YES) source
   on (target.doc_id = source.doc_id)
   when MATCHED then
      update
         set target.hold_status       = REIM_CONSTANTS.HOLD_STATUS_RELEASED,
             target.last_updated_by   = L_user,
             target.last_update_date  = SYSDATE,
             target.object_version_id = target.object_version_id + REIM_CONSTANTS.ONE;

   LOGGER.LOG_INFORMATION(L_program||' Merge IM_DOC_HEAD - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.TIME_STOP('RELEASE_HOLD');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));
      return REIM_CONSTANTS.FAIL;

END RELEASE_HOLD;
-------------------------------------------------------------------------------------------------------------
FUNCTION REVERSE_DEBIT_MEMO(O_error_message IN OUT VARCHAR2,
                            O_inject_id        OUT IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                            O_inject_doc_id    OUT IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                            I_doc_id        IN     IM_DOC_HEAD.DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(40) := 'REIM_DOCUMENT_SQL.REVERSE_DEBIT_MEMO';

   L_user IM_DOC_HEAD.CREATED_BY%TYPE := get_user;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program);
   LOGGER.TIME_RESET;
   LOGGER.TIME_START('REVERSE_DEBIT_MEMO');

   if LOAD_DOCUMENT(O_error_message,
                    O_inject_id,
                    O_inject_doc_id,
                    I_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   delete
     from im_inject_doc_comments
    where inject_id = O_inject_id;

   insert into im_reverse_debit_memo_ws (inject_id,
                                         inject_doc_id,
                                         doc_type,
                                         src_doc_id,
                                         item,
                                         item_desc,
                                         vpn,
                                         --qty
                                         debit_memo_qty,
                                         reversed_qty,
                                         avail_qty,
                                         --cost
                                         debit_memo_unit_cost,
                                         reversed_unit_cost,
                                         avail_unit_cost,
                                         debit_memo_ext_cost,
                                         total_reversed_cost,
                                         debit_memo_reason_code_id, --im_reason_codes
                                         debit_memo_reason_code_desc,
                                         reversed_reason_code_id, --im_reason_codes - they will input these through UI
                                         reversed_reason_code_desc,
                                         reversal_comment,
                                         tax_code,
                                         tax_rate,
                                         choice_flag,
                                         qbe_filter_ind)
      -- Cost fields from debit memo must be negative and other cost fields must be positive
      -- these values need to be transformed by multiplying by (-1)
      select O_inject_id,
             O_inject_doc_id,
             iidh.doc_type,
             iidh.src_doc_id,
             iidd.item,
             im.item_desc,
             item_sup.vpn,
             iidd.qty, --debit_memo_qty
             DECODE(iidh.doc_type,
                    REIM_CONSTANTS.DOC_TYPE_DEBMEQ, iidd.qty - NVL(iddrc.reversed_qty, REIM_CONSTANTS.ZERO),
                    REIM_CONSTANTS.ZERO), --reversed_qty
             DECODE(iidh.doc_type,
                    REIM_CONSTANTS.DOC_TYPE_DEBMEQ, iidd.qty - NVL(iddrc.reversed_qty, REIM_CONSTANTS.ZERO),
                    REIM_CONSTANTS.ZERO), --avail_qty
             iidd.unit_cost, --debit_memo_unit_cost
             DECODE(iidh.doc_type,
                    REIM_CONSTANTS.DOC_TYPE_DEBMEC, iidd.unit_cost - NVL(iddrc.reversed_unit_cost, REIM_CONSTANTS.ZERO),
                    REIM_CONSTANTS.ZERO) * (-1), --reversed_unit_cost (to be reversed)
             DECODE(iidh.doc_type,
                    REIM_CONSTANTS.DOC_TYPE_DEBMEC, iidd.unit_cost - NVL(iddrc.reversed_unit_cost, REIM_CONSTANTS.ZERO),
                    REIM_CONSTANTS.ZERO) * (-1), --avail_unit_cost
             iidd.qty * iidd.unit_cost, --debit_memo_ext_cost
             NULL,                             --total_reversed_cost
             iidd.reason_code_id,              --debit_memo_reason_code_id
             irc.reason_code_desc,             --debit_memo_reason_code_desc
             NULL,                             --reversed_reason_code
             NULL,                             --reversed_reason_code_desc
             NULL,                             --reversal_comment
             iddrct.tax_code,
             iddrct.tax_rate,
             'N',                              --choice_flag
             'N'                               --qbe_filter_ind
        from im_inject_doc_detail iidd,
             im_inject_doc_head iidh,
             im_doc_detail_reason_codes iddrc,
             item_supplier item_sup,
             item_master im,
             im_reason_codes irc,
             im_doc_detail_rc_tax iddrct
       where iidd.inject_doc_id                  = O_inject_doc_id
         and iidd.inject_id                      = iidh.inject_id
         and im.item                             = iidd.item
         and iidd.reason_code_id                 = irc.reason_code_id
         and iidh.src_doc_id                     = iddrc.doc_id
         and iidd.item                           = iddrc.item
         and iidh.vendor                         = item_sup.supplier
         and iidd.item                           = item_sup.item
         and iddrc.im_doc_detail_reason_codes_id = iddrct.im_doc_detail_reason_codes_id (+);

   LOGGER.TIME_STOP('REVERSE_DEBIT_MEMO');
   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));
      return REIM_CONSTANTS.FAIL;

END REVERSE_DEBIT_MEMO;
-------------------------------------------------------------------------------------------------------------
FUNCTION CREATE_CREDIT_MEMO(O_error_message IN OUT VARCHAR2,
                            O_comments         OUT OBJ_VARCHAR_ID_TABLE,
                            I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                            I_ext_doc_id    IN     IM_DOC_HEAD.EXT_DOC_ID%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(40) := 'REIM_DOCUMENT_SQL.CREATE_CREDIT_MEMO';

   L_user  IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_vdate DATE                        := GET_VDATE;

   L_rev_qty_big           CONSTANT VARCHAR2(30) := 'REVERSE_QUANTITY_BIG';
   L_rev_amt_big           CONSTANT VARCHAR2(30) := 'REVERSE_AMOUNT_BIG';
   L_rev_qty_null          CONSTANT VARCHAR2(30) := 'REVERSE_QUANTITY_NULL';
   L_rev_amt_null          CONSTANT VARCHAR2(30) := 'REVERSE_AMOUNT_NULL';
   L_rev_qty_zero          CONSTANT VARCHAR2(30) := 'REV_QTY_EQ_OR_LESS_THAN_ZERO';
   L_rev_amt_zero          CONSTANT VARCHAR2(30) := 'REV_AMT_EQ_OR_LESS_THAN_ZERO';
   L_rev_nothing_selected  CONSTANT VARCHAR2(30) := 'NOTHING_SELECTED_ON_WORKSPACE';
   L_rev_cmc_rsn_cde_null  CONSTANT VARCHAR2(30) := 'REVERSE_CMC_RSN_CODE_NULL';
   L_rev_cmq_rsn_cde_null  CONSTANT VARCHAR2(30) := 'REVERSE_CMQ_RSN_CODE_NULL';
   L_rev_cmc_rsn_cde_exist CONSTANT VARCHAR2(30) := 'REV_CMC_RSN_CODE_NOT_EXISTS';
   L_rev_cmq_rsn_cde_exist CONSTANT VARCHAR2(30) := 'REV_CMQ_RSN_CODE_NOT_EXISTS';
   L_rev_comment_req       CONSTANT VARCHAR2(30) := 'REVERSE_COMMENT_REQUIRED';

   L_trial_id NUMBER(10) := IM_TRIAL_ID_SEQ.NEXTVAL;

   cursor C_COMMENTS is
      select distinct cred_memo_comment
        from (--Reverse Quantity greater than Debit Memo Quantity
              select L_rev_qty_big cred_memo_comment
                from im_reverse_debit_memo_ws
               where inject_doc_id  = I_inject_doc_id
                 and choice_flag    = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind = REIM_CONSTANTS.YN_NO
                 and avail_qty      < reversed_qty
              union all
              --Reverse Amount greater than Debit Memo Amount
              select L_rev_amt_big cred_memo_comment
                from im_reverse_debit_memo_ws
               where inject_doc_id        = I_inject_doc_id
                 and choice_flag          = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind       = REIM_CONSTANTS.YN_NO
                 and avail_unit_cost      < reversed_unit_cost
              union all
              --Reversed_qty should not be NULL
              select L_rev_qty_null cred_memo_comment
                from im_reverse_debit_memo_ws
               where inject_doc_id  = I_inject_doc_id
                 and choice_flag    = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind = REIM_CONSTANTS.YN_NO
                 and doc_type       = REIM_CONSTANTS.DOC_TYPE_DEBMEQ
                 and reversed_qty   is NULL
              union all
              --Reversed_unit_cost should not be NULL
              select L_rev_amt_null cred_memo_comment
                from im_reverse_debit_memo_ws
               where inject_doc_id      = I_inject_doc_id
                 and choice_flag        = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind     = REIM_CONSTANTS.YN_NO
                 and doc_type           = REIM_CONSTANTS.DOC_TYPE_DEBMEC
                 and reversed_unit_cost is NULL
              union all
              --Reversed_qty should be greater than 0
              select L_rev_qty_zero cred_memo_comment
                from im_reverse_debit_memo_ws
               where inject_doc_id   = I_inject_doc_id
                 and choice_flag     = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind  = REIM_CONSTANTS.YN_NO
                 and doc_type        = REIM_CONSTANTS.DOC_TYPE_DEBMEQ
                 and reversed_qty    is NOT NULL
                 and reversed_qty   <= 0
              union all
              --Reversed_unit_cost should be greater than 0
              select L_rev_amt_zero cred_memo_comment
                from im_reverse_debit_memo_ws
               where inject_doc_id       = I_inject_doc_id
                 and choice_flag         = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind      = REIM_CONSTANTS.YN_NO
                 and doc_type            = REIM_CONSTANTS.DOC_TYPE_DEBMEC
                 and reversed_unit_cost  is NOT NULL
                 and reversed_unit_cost <= 0
              union all
              --At least one item should be selected in the workspace table
              select L_rev_nothing_selected cred_memo_comment
                from (select COUNT(*) cnt
                        from im_reverse_debit_memo_ws
                       where inject_doc_id  = I_inject_doc_id
                         and choice_flag    = REIM_CONSTANTS.YN_YES
                         and qbe_filter_ind = REIM_CONSTANTS.YN_NO)
               where cnt = 0
              union all
              --Reversed_reason_code_id should be populated
              select DECODE(doc_type,
                            REIM_CONSTANTS.DOC_TYPE_DEBMEC, L_rev_cmc_rsn_cde_null,
                            REIM_CONSTANTS.DOC_TYPE_DEBMEQ, L_rev_cmq_rsn_cde_null) cred_memo_comment
                from im_reverse_debit_memo_ws ws
               where inject_doc_id           = I_inject_doc_id
                 and choice_flag             = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind          = REIM_CONSTANTS.YN_NO
                 and reversed_reason_code_id is NULL
              union all
              --Reversed_reason_code_id should should have correct action (CMC) and exist on im_reason_codes
              select L_rev_cmc_rsn_cde_exist cred_memo_comment
                from im_reverse_debit_memo_ws ws
               where inject_doc_id           = I_inject_doc_id
                 and choice_flag             = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind          = REIM_CONSTANTS.YN_NO
                 and doc_type                = REIM_CONSTANTS.DOC_TYPE_DEBMEC
                 and reversed_reason_code_id is NOT NULL
                 and NOT EXISTS (select 1
                                   from im_reason_codes irc
                                  where irc.reason_code_id = ws.reversed_reason_code_id
                                    and irc.action         = REIM_CONSTANTS.REASON_CODE_ACTION_CMC)
              union all
              --Reversed_reason_code_id should should have correct action (CMQ) and exist on im_reason_codes
              select L_rev_cmq_rsn_cde_exist cred_memo_comment
                from im_reverse_debit_memo_ws ws
               where inject_doc_id           = I_inject_doc_id
                 and choice_flag             = REIM_CONSTANTS.YN_YES
                 and qbe_filter_ind          = REIM_CONSTANTS.YN_NO
                 and doc_type                = REIM_CONSTANTS.DOC_TYPE_DEBMEQ
                 and reversed_reason_code_id is NOT NULL
                 and NOT EXISTS (select 1
                                   from im_reason_codes irc
                                  where irc.reason_code_id = ws.reversed_reason_code_id
                                    and irc.action         = REIM_CONSTANTS.REASON_CODE_ACTION_CMQ)
              union all
              --Reversal comment required but not populated
              select L_rev_comment_req cred_memo_comment
                from im_reverse_debit_memo_ws ws,
                     im_reason_codes irc
               where ws.inject_doc_id         = I_inject_doc_id
                 and ws.choice_flag           = REIM_CONSTANTS.YN_YES
                 and ws.qbe_filter_ind        = REIM_CONSTANTS.YN_NO
                 and ws.reversal_comment      is NULL
                 and irc.reason_code_id       = ws.reversed_reason_code_id
                 and irc.comment_required_ind = REIM_CONSTANTS.YN_YES);

   cursor C_LOCK_DOC_DTL_REASON_CODE is
      select 'x'
        from im_doc_detail_reason_codes iddrc
       where EXISTS (select 'x'
                       from im_reverse_debit_memo_ws irdmw
                      where irdmw.inject_doc_id  = I_inject_doc_id
                        and irdmw.choice_flag    = REIM_CONSTANTS.YN_YES
                        and irdmw.qbe_filter_ind = REIM_CONSTANTS.YN_NO
                        and irdmw.src_doc_id     = iddrc.doc_id)
         for UPDATE NOWAIT;

   cursor C_VALIDATE_ERROR_COMMENTS is
      select distinct rule
        from im_inject_doc_error
       where inject_doc_id = I_inject_doc_id
         and trial_id      = L_trial_id;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program);
   LOGGER.TIME_RESET;
   LOGGER.TIME_START('CREATE_CREDIT_MEMO');

   open C_COMMENTS;
   fetch C_COMMENTS BULK COLLECT into O_comments;
   close C_COMMENTS;

   LOGGER.LOG_INFORMATION(L_program||' Generate error object - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   if O_comments is NOT NULL and
      O_comments.COUNT > REIM_CONSTANTS.ZERO then
      ---
      LOGGER.TIME_STOP('CREATE_CREDIT_MEMO');
      LOGGER.LOG_INFORMATION('End ' || L_program );
      return REIM_CONSTANTS.FAIL;
   end if;

   open C_LOCK_DOC_DTL_REASON_CODE;
   close C_LOCK_DOC_DTL_REASON_CODE;

   -- delete any records that are not checked on workspace table
   delete
     from im_inject_doc_detail_tax
    where detail_id IN (select detail_id
                          from im_inject_doc_detail
                         where inject_doc_id    = I_inject_doc_id
                           and (item,
                                reason_code_id) IN (select item,
                                                           reason_code_id
                                                      from im_reverse_debit_memo_ws
                                                     where inject_doc_id    = I_inject_doc_id
                                                       and choice_flag      = REIM_CONSTANTS.YN_NO
                                                       and qbe_filter_ind   = REIM_CONSTANTS.YN_NO));

   delete
     from im_inject_doc_detail
    where inject_doc_id    = I_inject_doc_id
      and (item,
           reason_code_id) IN (select item,
                                      reason_code_id
                                 from im_reverse_debit_memo_ws
                                where inject_doc_id    = I_inject_doc_id
                                  and choice_flag      = REIM_CONSTANTS.YN_NO
                                  and qbe_filter_ind   = REIM_CONSTANTS.YN_NO);

   --delete header tax record to recalculate below
   delete
     from im_inject_doc_tax
    where inject_doc_id = I_inject_doc_id;

   insert into im_inject_doc_comments (inject_id,
                                       comment_id,
                                       comment_type,
                                       text,
                                       create_id,
                                       create_datetime,
                                       inject_doc_id,
                                       item,
                                       discrepancy_type,
                                       reason_code_id,
                                       debit_reason_code,
                                       object_version_id,
                                       ref_object_version_id)
      select inject_id,
             IM_DOC_DETAIL_COMMENTS_SEQ.NEXTVAL,
             REIM_CONSTANTS.CMNT_TYPE_INTERNAL,
             reversal_comment,
             L_user,
             SYSDATE,
             inject_doc_id,
             item,
             NULL,
             debit_memo_reason_code_id,
             reversed_reason_code_id,
             REIM_CONSTANTS.ONE,
             NULL
        from im_reverse_debit_memo_ws
       where inject_doc_id    = I_inject_doc_id
         and reversal_comment is NOT NULL
         and choice_flag      = REIM_CONSTANTS.YN_YES
         and qbe_filter_ind   = REIM_CONSTANTS.YN_NO;

   merge into im_inject_doc_detail target
   using (select ws.inject_doc_id,
                 ws.reversed_unit_cost,
                 ws.reversed_qty,
                 ws.reversed_reason_code_id,
                 ws.debit_memo_reason_code_id,
                 ws.item,
                 ws.doc_type,
                 ws.debit_memo_unit_cost,
                 ws.debit_memo_qty,
                 iidd.detail_id
            from im_reverse_debit_memo_ws ws,
                 im_inject_doc_detail iidd
           where ws.inject_doc_id    = I_inject_doc_id
             and ws.choice_flag      = REIM_CONSTANTS.YN_YES
             and ws.qbe_filter_ind   = REIM_CONSTANTS.YN_NO
             and ws.inject_doc_id    = iidd.inject_doc_id
             and ws.item             = iidd.item
             and iidd.reason_code_id = ws.debit_memo_reason_code_id) source
      on (    target.inject_doc_id = source.inject_doc_id
          and target.detail_id     = source.detail_id)
   when MATCHED then
      update
         set unit_cost      = DECODE(doc_type,
                                     REIM_CONSTANTS.DOC_TYPE_DEBMEC, source.reversed_unit_cost,
                                     (-1) * source.debit_memo_unit_cost),
             qty            = DECODE(doc_type,
                                     REIM_CONSTANTS.DOC_TYPE_DEBMEQ, source.reversed_qty,
                                     source.debit_memo_qty),
             reason_code_id = source.reversed_reason_code_id;

   merge into im_inject_doc_detail_tax target
   using (select iidd.detail_id,
                 (iidd.unit_cost * iidd.qty) tax_basis,
                 ((iidd.unit_cost * iidd.qty) * (iiddt.tax_rate / 100)) tax_amount
            from im_inject_doc_detail iidd,
                 im_inject_doc_detail_tax iiddt,
                 im_reverse_debit_memo_ws ws
           where iidd.inject_doc_id  = I_inject_doc_id
             and iidd.detail_id      = iiddt.detail_id
             and ws.inject_doc_id    = iidd.inject_doc_id
             and ws.item             = iidd.item
             and iidd.reason_code_id = ws.reversed_reason_code_id
             and ws.choice_flag      = REIM_CONSTANTS.YN_YES
             and ws.qbe_filter_ind   = REIM_CONSTANTS.YN_NO) source
      on (target.detail_id = source.detail_id)
   when MATCHED then
      update
         set tax_basis  = source.tax_basis,
             tax_amount = source.tax_amount;

   insert into im_inject_doc_tax (inject_id,
                                  transaction_id,
                                  inject_doc_id,
                                  tax_code,
                                  tax_rate,
                                  tax_basis,
                                  last_updated_by,
                                  last_update_date,
                                  tax_amount,
                                  ref_object_version_id,
                                  created_by,
                                  creation_date,
                                  object_version_id)
      select iidd.inject_id,
             REIM_CONSTANTS.ONE,
             iidd.inject_doc_id,
             iiddt.tax_code,
             iiddt.tax_rate,
             SUM(iiddt.tax_basis) tax_basis,
             L_user,
             sysdate,
             SUM(iiddt.tax_amount) tax_amount,
             REIM_CONSTANTS.ONE,
             L_user,
             sysdate,
             REIM_CONSTANTS.ONE
        from im_inject_doc_detail iidd,
             im_inject_doc_detail_tax iiddt
       where iidd.inject_doc_id = I_inject_doc_id
         and iidd.detail_id     = iiddt.detail_id
       group by iidd.inject_id,
                iidd.inject_doc_id,
                iiddt.tax_code,
                iiddt.tax_rate;

   merge into im_inject_doc_head target
   using (select distinct iidd.inject_doc_id,
                 I_ext_doc_id ext_doc_id,
                 SUM(iidd.unit_cost * iidd.qty) OVER (PARTITION BY iidd.inject_doc_id) total_cost,
                 SUM(iidd.qty) OVER (PARTITION BY iidd.inject_doc_id) total_qty,
                 NVL(SUM(iiddt.tax_amount) OVER (PARTITION BY iidd.inject_doc_id), 0) total_tax_amount,
                 iidh.doc_type,
                 iidh.src_doc_id,
                 case
                    when iidh.doc_date is null then
                       L_vdate
                    else
                       iidh.doc_date
                 end doc_date,
                 case
                    when iidh.due_date is null then
                       L_vdate
                    else
                       iidh.due_date
                 end due_date,
                 iidh.best_terms_date,
                 iidh.best_terms_source
            from im_inject_doc_detail iidd,
                 im_inject_doc_head iidh,
                 im_reverse_debit_memo_ws ws,
                 im_inject_doc_detail_tax iiddt
           where iidd.inject_doc_id  = I_inject_doc_id
             and iidd.inject_doc_id  = iidh.inject_doc_id
             and ws.inject_doc_id    = iidd.inject_doc_id
             and ws.item             = iidd.item
             and iidd.reason_code_id = ws.reversed_reason_code_id
             and ws.choice_flag      = REIM_CONSTANTS.YN_YES
             and ws.qbe_filter_ind   = REIM_CONSTANTS.YN_NO
             and iidd.detail_id      = iiddt.detail_id (+)) source
      on (target.inject_doc_id = source.inject_doc_id)
   when MATCHED then
      update
         set ext_doc_id            = source.ext_doc_id,
             total_cost            = source.total_cost,
             total_qty             = source.total_qty,
             total_tax_amount      = source.total_tax_amount,
             total_cost_inc_tax    = (source.total_tax_amount + source.total_cost),
             doc_type              = DECODE(source.doc_type,
                                            REIM_CONSTANTS.DOC_TYPE_DEBMEC, REIM_CONSTANTS.DOC_TYPE_CRDMEC,
                                            REIM_CONSTANTS.DOC_TYPE_DEBMEQ, REIM_CONSTANTS.DOC_TYPE_CRDMEQ),
             src_doc_id            = NULL,
             cross_ref_doc         = source.src_doc_id,
             status                = REIM_CONSTANTS.DOC_STATUS_APPRVE,
             doc_date              = source.doc_date,
             due_date              = source.due_date,
             best_terms_date       = source.best_terms_date,
             best_terms_source     = source.best_terms_source,
             doc_source            = REIM_CONSTANTS.DOC_SOURCE_MANL,
             match_date            = NULL,
             post_date             = NULL,
             ref_object_version_id = REIM_CONSTANTS.ONE,
             created_by            = L_user,
             creation_date         = sysdate,
             pre_paid_ind          = 'N',
             approval_id           = L_user,
             approval_date         = L_vdate;

   --Update debit memo qty and amount
   merge into im_doc_detail_reason_codes target
   using (select src_doc_id,
                 item,
                 debit_memo_reason_code_id,
                 DECODE(doc_type,
                        REIM_CONSTANTS.DOC_TYPE_DEBMEQ, reversed_qty,
                        0) reversed_qty,
                 DECODE(doc_type,
                        REIM_CONSTANTS.DOC_TYPE_DEBMEC, (-1 * reversed_unit_cost),
                        0) reversed_unit_cost
            from im_reverse_debit_memo_ws
           where inject_doc_id  = I_inject_doc_id
             and choice_flag    = REIM_CONSTANTS.YN_YES
             and qbe_filter_ind = REIM_CONSTANTS.YN_NO) source
      on (    source.src_doc_id                = target.doc_id
          and source.item                      = target.item
          and source.debit_memo_reason_code_id = target.reason_code_id)
   when MATCHED then
      update
         set target.reversed_qty       = source.reversed_qty + NVL(target.reversed_qty, 0),
             target.reversed_unit_cost = source.reversed_unit_cost + NVL(target.reversed_unit_cost, 0);

   if VALIDATE_DOCUMENT(O_error_message,
                        I_inject_doc_id,
                        L_trial_id) = 0 then
      return REIM_CONSTANTS.FAIL;
   end if;

   open C_VALIDATE_ERROR_COMMENTS;
   fetch C_VALIDATE_ERROR_COMMENTS BULK COLLECT into O_comments;
   close C_VALIDATE_ERROR_COMMENTS;

   if O_comments is NOT NULL and
      O_comments.COUNT > REIM_CONSTANTS.ZERO then
      ---
      LOGGER.TIME_STOP('CREATE_CREDIT_MEMO');
      LOGGER.LOG_INFORMATION('End ' || L_program );
      return REIM_CONSTANTS.FAIL;
   end if;

   if SAVE_DOCUMENT(O_error_message,
                    I_inject_doc_id) = 0 then
      ---
      LOGGER.TIME_STOP('CREATE_CREDIT_MEMO');
      LOGGER.LOG_INFORMATION('End ' || L_program );
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.TIME_STOP('CREATE_CREDIT_MEMO');
   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));
      return REIM_CONSTANTS.FAIL;

END CREATE_CREDIT_MEMO;
-------------------------------------------------------------------------------------------------------------
-- Name:    CHK_AND_UPD_REV_CHRG_VAT
-- Purpose: This function Checks if reverse vat threshold was met and updates taxes of items that are eligible for reverse charge vat.
-- Output:
   --O_flip_status:
        --NULL - No rows were updated
        --'R'  - Atleast one item was updated to Zero vat.
        --'S'  - Atleast one item was brought back to system vat.
-------------------------------------------------------------------------------------------------------------
FUNCTION CHK_AND_UPD_REV_CHRG_VAT(O_error_message IN OUT VARCHAR2,
                                  O_flip_status      OUT VARCHAR2,
                                  I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.CHK_AND_UPD_REV_CHRG_VAT';

   L_user  IM_DOC_HEAD.CREATED_BY%TYPE := get_user;
   L_vdate PERIOD.VDATE%TYPE           := get_vdate;

   L_doc_date              IM_INJECT_DOC_HEAD.DOC_DATE%TYPE        := NULL;
   L_reverse_vat_ind       IM_INJECT_DOC_HEAD.REVERSE_VAT_IND%TYPE := NULL;
   L_reverse_vat_threshold VAT_REGION.REVERSE_VAT_THRESHOLD%TYPE   := NULL;
   L_reverse_vat_total     IM_INJECT_DOC_DETAIL_TAX.TAX_BASIS%TYPE := NULL;
   L_sups_vat_region       SUPS.VAT_REGION%TYPE                    := NULL;
   L_loc_vat_region        STORE.VAT_REGION%TYPE                   := NULL;
   L_zero_tax_code         VAT_CODE_RATES.VAT_CODE%TYPE            := NULL;
   L_status                NUMBER(1);
   L_item_tax_criteria     OBJ_ITEM_TAX_CRITERIA_TBL               := NULL;
   L_item_tax_calc_ovrd    OBJ_ITEM_TAX_CALC_OVRD_TBL              := NULL;
   L_item_tax_results      OBJ_ITEM_TAX_BREAK_TBL                  := NULL;
   L_exempt_ind            VARCHAR2(1)                             := 'N';

   cursor C_FETCH_OBJ_ITEM_TAX_CRIT is
      select OBJ_ITEM_TAX_CRITERIA_REC(item      => iidd.item,
                                       supplier  => iidh.vendor,
                                       location  => iidh.location,
                                       eff_date  => iidh.doc_date,
                                       unit_cost => NULL,
                                       mrp       => NULL,
                                       retail    => NULL,
                                       freight   => NULL,
                                       tax_type  => REIM_CONSTANTS.TAX_TYPE_COST)
        from im_inject_doc_head iidh,
             im_inject_doc_detail iidd,
             im_inject_doc_detail_tax iiddt
       where iidh.inject_doc_id    = I_inject_doc_id
         and iidd.inject_doc_id    = iidh.inject_doc_id
         and iiddt.detail_id       = iidd.detail_id
         and iiddt.reverse_vat_ind = 'Y';

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program ||
                          ' I_inject_doc_id: ' || I_inject_doc_id);

   if GET_TAX_EXEMPT_STATUS(O_error_message,
                            L_exempt_ind,
                            NULL,
                            I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if L_exempt_ind = 'Y' then
      return REIM_CONSTANTS.SUCCESS;
   end if;

   select iidh.doc_date,
          iidh.reverse_vat_ind,
          s.vat_region,
          locs.vat_region,
          vr.reverse_vat_threshold
     into L_doc_date,
          L_reverse_vat_ind,
          L_sups_vat_region,
          L_loc_vat_region,
          L_reverse_vat_threshold
     from im_inject_doc_head iidh,
          sups s,
          (select store loc,
                  REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                  vat_region
             from store
           union all
           select wh loc,
                  REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                  vat_region
             from wh) locs,
          vat_region vr
    where iidh.inject_doc_id = I_inject_doc_id
      and s.supplier         = iidh.vendor
      and locs.loc           = iidh.location
      and locs.loc_type      = iidh.loc_type
      and vr.vat_region      = locs.vat_region;

   LOGGER.LOG_INFORMATION(L_program||' Fetch reverse vat eligiblity details ' || SQL%ROWCOUNT);

   if L_sups_vat_region <> L_loc_vat_region then
      return REIM_CONSTANTS.SUCCESS;
   end if;

   select NVL(SUM(tax_basis), REIM_CONSTANTS.ZERO)
     into L_reverse_vat_total
     from im_inject_doc_detail iidd,
          im_inject_doc_detail_tax iiddt
    where iidd.inject_doc_id = I_inject_doc_id
      and iiddt.detail_id    = iidd.detail_id
      and iiddt.reverse_vat_ind = 'Y';

   LOGGER.LOG_INFORMATION(L_program||' Fetch document totals ' || SQL%ROWCOUNT);

   if L_reverse_vat_total >= NVL(L_reverse_vat_threshold, L_reverse_vat_total + 1) then

      if REIM_TAX_WRAPPER_SQL.FETCH_ZERO_RATE_TAX_CODE(O_error_message,
                                                       L_zero_tax_code,
                                                       L_doc_date) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      merge into im_inject_doc_detail_tax tgt
      using (select iiddt.detail_id
               from im_inject_doc_detail iidd,
                    im_inject_doc_detail_tax iiddt
              where iidd.inject_doc_id    = I_inject_doc_id
                and iiddt.detail_id       = iidd.detail_id
                and iiddt.reverse_vat_ind = 'Y'
                and iiddt.tax_rate        <> REIM_CONSTANTS.ZERO) src
      on (src.detail_id = tgt.detail_id)
      when MATCHED then
         update
            set tgt.tax_code          = L_zero_tax_code,
                tgt.tax_rate          = REIM_CONSTANTS.ZERO,
                tgt.tax_amount        = REIM_CONSTANTS.ZERO,
                tgt.object_version_id = tgt.object_version_id + REIM_CONSTANTS.ONE,
                tgt.last_updated_by   = L_user,
                tgt.last_update_date  = sysdate;

      if SQL%ROWCOUNT > REIM_CONSTANTS.ZERO then
         O_flip_status := REIM_CONSTANTS.FLIP_REV_CHRG_VAT;
      end if;

      update im_inject_doc_head iidh
         set iidh.reverse_vat_ind   = 'Y',
             iidh.object_version_id = iidh.object_version_id + REIM_CONSTANTS.ONE,
             iidh.last_updated_by   = L_user,
             iidh.last_update_date  = sysdate
       where iidh.inject_doc_id   = I_inject_doc_id
         and iidh.reverse_vat_ind = 'N';

      LOGGER.LOG_INFORMATION(L_program||' Update Reverse Vat Indicator to Yes on im_inject_doc_head - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   elsif L_reverse_vat_ind = 'Y' then
   --Flip back to 'N' if the doc was 'Y' and the totals go below threshold

      open C_FETCH_OBJ_ITEM_TAX_CRIT;
      fetch C_FETCH_OBJ_ITEM_TAX_CRIT BULK COLLECT into L_item_tax_criteria;
      close C_FETCH_OBJ_ITEM_TAX_CRIT;

      LOGGER.LOG_INFORMATION(L_program||' Fetch Item details into tax criteria ');

      REIM_TAX_WRAPPER_SQL.CALCULATE_ITEM_TAXES_SINGLETAX(L_status,
                                                          O_error_message,
                                                          L_item_tax_criteria,
                                                          L_item_tax_calc_ovrd,
                                                          L_item_tax_results);

      LOGGER.LOG_INFORMATION(L_program||' Call Tax Package to fetch system taxes for items ');

      if L_status = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      merge into im_inject_doc_detail_tax tgt
      using (select iiddt.detail_id,
                    tax_tbl.tax_code,
                    tax_tbl.tax_rate,
                    iiddt.tax_basis * (tax_tbl.tax_rate / 100) tax_amount
               from im_inject_doc_detail iidd,
                    im_inject_doc_detail_tax iiddt,
                    TABLE(CAST(L_item_tax_results as OBJ_ITEM_TAX_BREAK_TBL)) tax_tbl
              where iidd.inject_doc_id    = I_inject_doc_id
                and iiddt.detail_id       = iidd.detail_id
                and iiddt.reverse_vat_ind = 'Y'
                and tax_tbl.item          = iidd.item) src
      on (src.detail_id = tgt.detail_id)
      when MATCHED then
         update
            set tgt.tax_code          = src.tax_code,
                tgt.tax_rate          = src.tax_rate,
                tgt.tax_amount        = src.tax_amount,
                tgt.object_version_id = tgt.object_version_id + REIM_CONSTANTS.ONE,
                tgt.last_updated_by   = L_user,
                tgt.last_update_date  = sysdate;

      update im_inject_doc_head iidh
         set iidh.reverse_vat_ind   = 'N',
             iidh.object_version_id = iidh.object_version_id + REIM_CONSTANTS.ONE,
             iidh.last_updated_by   = L_user,
             iidh.last_update_date  = sysdate
       where iidh.inject_doc_id   = I_inject_doc_id
         and iidh.reverse_vat_ind = 'Y';

      LOGGER.LOG_INFORMATION(L_program||' Update Reverse Vat Indicator to No on im_inject_doc_head - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

      O_flip_status := REIM_CONSTANTS.FLIP_SYSTEM_TAX;

   end if;

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END CHK_AND_UPD_REV_CHRG_VAT;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_GROUP_ENTRY_DOCS(O_error_message IN OUT VARCHAR2,
                                   I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                   I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                   I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_GROUP_ENTRY_DOCS';

   cursor C_GET_NUM_TAX_ALLOW is
      select num_tax_allow
        from im_system_options;

BEGIN

   LOGGER.LOG_INFORMATION('Start '             || L_program ||
                          ' I_inject_id: '     || I_inject_id ||
                          ' I_inject_doc_id: ' || I_inject_doc_id ||
                          ' I_trial_id: '      || I_trial_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('VALIDATE_GROUP_ENTRY_DOCS');

   if VALIDATE_DUP_VENDOR_DOC_NUMBER(O_error_message,
                                     I_inject_id,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUE_DATE(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CURRENCY_CODE(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPP_OPTION_UNDEFINED(O_error_message,
                                     I_inject_id,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORDER(O_error_message,
                     I_inject_id,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_CURR(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_VEND(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TERMS(O_error_message,
                     I_inject_id,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOC_DATE(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_STORE(O_error_message,
                     I_inject_id,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_WH(O_error_message,
                  I_inject_id,
                  I_inject_doc_id,
                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPPLIER(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PARTNER(O_error_message,
                       I_inject_id,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_LOC(O_error_message,
                       I_inject_id,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PAID_IND(O_error_message,
                        NULL,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_EXCHANGE_RATE(O_error_message,
                             NULL,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOCTYPE_COST_INC_TAX(O_error_message,
                                     I_inject_id,
                                    I_inject_doc_id,
                                    I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_REQ_TOTAL_HDR_QTY(O_error_message,
                                 I_inject_id,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   open C_GET_NUM_TAX_ALLOW;
   fetch C_GET_NUM_TAX_ALLOW into LP_num_tax_allow;
   close C_GET_NUM_TAX_ALLOW;

   if VALIDATE_NOT_ALLOWED_TAX(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TAX_AMT_NON_ZERO(O_error_message,
                                I_inject_id,
                                I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ACQ_TAX_DETAIL_REQ(O_error_message,
                                  I_inject_id,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MERCH_CODE(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;


   if VALIDATE_ZERO_MRCHI_DTL_REQ(O_error_message,
                                  I_inject_id,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TAX_REQUIRED(O_error_message,
                            I_inject_id,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_EXEMPT_DOCS(O_error_message,
                           I_inject_id,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ZERO_TAX_REQUIRED(O_error_message,
                                 I_inject_id,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_HDR_TAX(O_error_message,
                       I_inject_id,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TOTAL_BASIS(O_error_message,
                           I_inject_id,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TOTAL_TAX(O_error_message,
                         I_inject_id,
                         I_inject_doc_id,
                         I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DTL_NM_TAX_NOT_IN_HDR(O_error_message,
                                     I_inject_id,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MRCH_TAX(O_error_message,
                            I_inject_id,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MRCH_COST(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_NM_COST(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MRCH_BASIS(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_NM_BASIS(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DTL_NM_TAX(O_error_message,
                          I_inject_id,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_NM_TAX(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TOTAL_COST_INC_TAX(O_error_message,
                                  I_inject_id,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.TIME_STOP('VALIDATE_GROUP_ENTRY_DOCS');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_GROUP_ENTRY_DOCS;
-------------------------------------------------------------------------------------------------------------
FUNCTION APPROVE_GROUP_ENTRY_DOCS(O_error_message IN OUT VARCHAR2,
                                  O_error_exists     OUT VARCHAR2,
                                  I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                  I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.APPROVE_GROUP_ENTRY_DOCS';

   L_user            IM_DOC_HEAD.CREATED_BY%TYPE := GET_USER;
   L_vdate           DATE                        := GET_VDATE;
   L_dirty_doc_count NUMBER                      := REIM_CONSTANTS.ZERO;

   dirty_record      EXCEPTION;
   records_locked    EXCEPTION;
   PRAGMA            EXCEPTION_INIT(records_locked, -54);

   cursor C_CHK_DOC is
      select COUNT(1)
        from im_inject_doc_head iidh,
             im_doc_head idh
       where iidh.inject_id             = I_inject_id
         and iidh.src_doc_id            = idh.doc_id
         and iidh.ref_object_version_id <> idh.object_version_id;

   cursor C_LOCK_DOC_HEAD is
      select 'x'
        from im_doc_head idh
       where EXISTS (select 'x'
                       from im_inject_doc_head iidh
                      where iidh.inject_id     = I_inject_id
                        and iidh.src_doc_id    = idh.doc_id)
         for UPDATE NOWAIT;

   CURSOR C_CHK_ERRORS is
      select DECODE(COUNT(1),
                    REIM_CONSTANTS.ZERO, 'N',
                    'Y') error_exists
        from gtt_num_num_str_str_date_date gtt;

BEGIN

   LOGGER.LOG_INFORMATION('Start '         || L_program ||
                          ' I_inject_id: ' || I_inject_id ||
                          ' I_trial_id: '  || I_trial_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('APPROVE_GROUP_ENTRY_DOCS');

   open C_CHK_DOC;
   fetch C_CHK_DOC into L_dirty_doc_count;
   close C_CHK_DOC;

   if L_dirty_doc_count > REIM_CONSTANTS.ZERO then
      RAISE dirty_record;
   end if;

   open C_LOCK_DOC_HEAD;
   close C_LOCK_DOC_HEAD;

   if VALIDATE_GROUP_ENTRY_DOCS(O_error_message,
                                I_inject_id,
                                NULL, --I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION(L_program || 'Run Validation on the group ');

   delete from gtt_num_num_str_str_date_date;
   insert into gtt_num_num_str_str_date_date(number_1)
   select distinct iide.inject_doc_id
     from im_inject_doc_head iidh,
          im_inject_doc_error iide
    where iidh.inject_id     = I_inject_id
      and iide.inject_doc_id = iidh.inject_doc_id
      and iide.trial_id      = I_trial_id;

   LOGGER.LOG_INFORMATION(L_program ||'Fetch Documents with errors - SQL%ROWCOUNT ' || SQL%ROWCOUNT );

   open C_CHK_ERRORS;
   fetch C_CHK_ERRORS into O_error_exists;
   close C_CHK_ERRORS;

   LOGGER.LOG_INFORMATION(L_program ||'Check for Validation errors -  O_error_exists: ' || O_error_exists );

   merge into im_doc_head tgt
   using (select iidh.src_doc_id,
                 case
                    when iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_MRCHI then
                       DECODE(s.settlement_code,
                              REIM_CONSTANTS.EVAL_SUPP, REIM_CONSTANTS.DOC_STATUS_MTCH,
                              REIM_CONSTANTS.DOC_STATUS_RMTCH)
                    else
                       REIM_CONSTANTS.DOC_STATUS_APPRVE
                 end as status,
                 case
                    when iidh.doc_type = REIM_CONSTANTS.DOC_TYPE_MRCHI then
                       DECODE(s.settlement_code,
                              REIM_CONSTANTS.EVAL_SUPP, REIM_CONSTANTS.YN_YES,
                              REIM_CONSTANTS.YN_NO)
                    else
                       REIM_CONSTANTS.YN_NO
                 end as ers_ind,
                 sysdate creation_date,
                 L_user created_by,
                 case
                    when iidh.doc_type <> REIM_CONSTANTS.DOC_TYPE_MRCHI and iidh.status = REIM_CONSTANTS.DOC_STATUS_APPRVE then
                       L_user
                    else
                       iidh.approval_id
                 end as approval_id,
                 case
                    when iidh.doc_type <> REIM_CONSTANTS.DOC_TYPE_MRCHI and iidh.status = REIM_CONSTANTS.DOC_STATUS_APPRVE then
                       L_vdate
                    else
                       iidh.approval_date
                 end as approval_date,
                 L_user last_updated_by,
                 sysdate last_update_date,
                 REIM_CONSTANTS.ONE object_version_id
            from im_inject_doc_head iidh,
                 sups s
           where iidh.inject_id = I_inject_id
             and iidh.status    = REIM_CONSTANTS.DOC_STATUS_WORKSHEET
             and s.supplier (+) = iidh.vendor
             and NOT EXISTS (select 'x'
                               from gtt_num_num_str_str_date_date gtt
                              where gtt.number_1 = iidh.inject_doc_id)) src
   on (tgt.doc_id = NVL(src.src_doc_id, -9999))
   when MATCHED then
      update
         set tgt.status                         = src.status,
             tgt.ers_ind                        = src.ers_ind,
             tgt.match_type                     = DECODE(src.status,
                                                         REIM_CONSTANTS.DOC_STATUS_MTCH, REIM_CONSTANTS.MATCH_TYPE_EXTERNAL,
                                                         NULL),
             tgt.approval_id                    = src.approval_id,
             tgt.approval_date                  = src.approval_date,
             tgt.last_updated_by                = src.last_updated_by,
             tgt.last_update_date               = src.last_update_date,
             tgt.object_version_id              = tgt.object_version_id + REIM_CONSTANTS.ONE;

   LOGGER.LOG_INFORMATION(L_program ||' Merge statuses on IM_DOC_HEAD - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_inject_doc_head tgt
   using (select iidh.inject_doc_id,
                 idh.object_version_id ref_object_version_id,
                 idh.status,
                 DECODE(idh.ers_ind,
                        REIM_CONSTANTS.YN_YES, REIM_CONSTANTS.DOC_MERCH_TYPE_ERS,
                        NULL) merch_type,
                 idh.created_by,
                 idh.creation_date,
                 idh.approval_id,
                 idh.approval_date,
                 idh.last_updated_by,
                 idh.last_update_date,
                 idh.header_only,
                 idh.doc_source
            from im_inject_doc_head iidh,
                 im_doc_head idh
           where iidh.inject_id = I_inject_id
             and iidh.src_doc_id = idh.doc_id
             and iidh.status     = REIM_CONSTANTS.DOC_STATUS_WORKSHEET
             and NOT EXISTS (select 'x'
                               from gtt_num_num_str_str_date_date gtt
                              where gtt.number_1 = iidh.inject_doc_id)) src
   on (tgt.inject_doc_id = src.inject_doc_id)
   when MATCHED then
      update
         set tgt.ref_object_version_id = src.ref_object_version_id,
             tgt.status                = src.status,
             tgt.created_by            = src.created_by,
             tgt.creation_date         = src.creation_date,
             tgt.approval_id           = src.approval_id,
             tgt.approval_date         = src.approval_date,
             tgt.last_updated_by       = src.last_updated_by,
             tgt.last_update_date      = src.last_update_date;

   LOGGER.LOG_INFORMATION(L_program ||' Merge statuses back to Inject workspace - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.TIME_STOP('APPROVE_GROUP_ENTRY_DOCS');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when dirty_record then
      O_error_message := SQL_LIB.CREATE_MSG('DIRTY_RECORDS', --constant
                                            L_program);
      return REIM_CONSTANTS.FAIL;
   when records_locked then
      O_error_message := SQL_LIB.CREATE_MSG('RECORDS_LOCKED', --constant
                                            L_program);
      return REIM_CONSTANTS.FAIL;
   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END APPROVE_GROUP_ENTRY_DOCS;
-------------------------------------------------------------------------------------------------------------
FUNCTION SAVE_GROUP_ENTRY_DOC(O_error_message IN OUT VARCHAR2,
                              I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                              I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.SAVE_GROUP_ENTRY_DOC';

   L_user  IM_DOC_HEAD.CREATED_BY%TYPE := GET_USER;
   L_vdate DATE                        := GET_VDATE;

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program ||
                          ' I_inject_id: '     || I_inject_id ||
                          ' I_inject_doc_id: ' || I_inject_doc_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('SAVE_GROUP_ENTRY_DOC');

   if SAVE_DOCUMENT(O_error_message,
                    I_inject_doc_id,
                    'N') = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.LOG_INFORMATION(L_program || 'Save Document to Operational tables ');

   merge into im_doc_head tgt
   using (select iidh.src_doc_id,
                 REIM_CONSTANTS.DOC_STATUS_WORKSHEET status,
                 sysdate creation_date,
                 L_user created_by,
                 NULL approval_id, --approval_id,
                 NULL approval_date,
                 L_user last_updated_by,
                 sysdate last_update_date
            from im_inject_doc_head iidh
           where iidh.inject_doc_id = I_inject_doc_id
             and iidh.status        = REIM_CONSTANTS.DOC_STATUS_WORKSHEET) src
   on (tgt.doc_id = NVL(src.src_doc_id, -9999))
   when MATCHED then
      update
         set tgt.status                         = src.status,
             tgt.approval_id                    = src.approval_id,
             tgt.approval_date                  = src.approval_date,
             tgt.last_updated_by                = src.last_updated_by,
             tgt.last_update_date               = src.last_update_date;

   LOGGER.LOG_INFORMATION(L_program ||' Mark documents to worksheet on IM_DOC_HEAD - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   merge into im_inject_doc_head tgt
   using (select iidh.inject_doc_id,
                 idh.object_version_id ref_object_version_id,
                 idh.status,
                 idh.created_by,
                 idh.creation_date,
                 idh.approval_id,
                 idh.approval_date,
                 idh.last_updated_by,
                 idh.last_update_date,
                 idh.header_only,
                 idh.doc_source
            from im_inject_doc_head iidh,
                 im_doc_head idh
           where iidh.inject_id = I_inject_id
             and iidh.src_doc_id = idh.doc_id
             and idh.status      = REIM_CONSTANTS.DOC_STATUS_WORKSHEET) src
   on (tgt.inject_doc_id = src.inject_doc_id)
   when MATCHED then
      update
         set tgt.ref_object_version_id = src.ref_object_version_id,
             tgt.status                = src.status,
             tgt.created_by            = src.created_by,
             tgt.creation_date         = src.creation_date,
             tgt.approval_id           = src.approval_id,
             tgt.approval_date         = src.approval_date,
             tgt.last_updated_by       = src.last_updated_by,
             tgt.last_update_date      = src.last_update_date;

   LOGGER.LOG_INFORMATION(L_program ||' Merge statuses back to Inject workspace - SQL%ROWCOUNT: ' || SQL%ROWCOUNT);

   LOGGER.TIME_STOP('SAVE_GROUP_ENTRY_DOC');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END SAVE_GROUP_ENTRY_DOC;
-------------------------------------------------------------------------------------------------------------
FUNCTION LOAD_GROUP_ENTRY_DOCS(O_error_message IN OUT VARCHAR2,
                               O_inject_id        OUT IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                               I_group_id      IN     IM_DOC_HEAD.GROUP_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.LOAD_GROUP_ENTRY_DOCS';

   L_inject_doc_id IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE := NULL;
BEGIN

   LOGGER.LOG_INFORMATION('Start '        || L_program ||
                          ' I_group_id: ' || I_group_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('LOAD_GROUP_ENTRY_DOCS');

   if LOAD_DOCUMENT(O_error_message,
                    O_inject_id,
                    L_inject_doc_id,
                    NULL, --I_doc_id,
                    I_group_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.TIME_STOP('LOAD_GROUP_ENTRY_DOCS');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END LOAD_GROUP_ENTRY_DOCS;
-------------------------------------------------------------------------------------------------------------
FUNCTION DEFLT_GRP_ENTRY_DOC_FROM_PO(O_error_message IN OUT VARCHAR2,
                                     I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                     I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.DEFLT_GRP_ENTRY_DOC_FROM_PO';

   L_user   IM_DOC_HEAD.CREATED_BY%TYPE := GET_USER;
   L_vdate  DATE                        := GET_VDATE;
   L_status NUMBER(1);

BEGIN

   LOGGER.LOG_INFORMATION('Start ' || L_program ||
                          ' I_inject_id: '     || I_inject_id ||
                          ' I_inject_doc_id: ' || I_inject_doc_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('DEFLT_GRP_ENTRY_DOC_FROM_PO');

   delete from im_transform_ordloc_gtt;
   insert into im_transform_ordloc_gtt (order_no,
                                        item,
                                        item_desc,
                                        loc,
                                        loc_type,
                                        qty_ordered,
                                        unit_cost,
                                        unit_cost_init,
                                        cost_source,
                                        sup_qty_level,
                                        catch_weight_type,
                                        import_loc,
                                        import_loc_type,
                                        transform_qty_ordered,
                                        transform_unit_cost,
                                        transform_unit_cost_init)
   select ol.order_no,
          ol.item,
          im.item_desc,
          ol.location,
          ol.loc_type,
          ol.qty_ordered qty_ordered,
          ol.unit_cost unit_cost,
          ol.unit_cost_init unit_cost_init,
          ol.cost_source cost_source,
          s.sup_qty_level,
          im.catch_weight_type,
          ol.location,
          ol.loc_type,
          ol.qty_ordered tsf_qty_ordered,
          ol.unit_cost tsf_unit_cost,
          ol.unit_cost_init tsf_unit_cost_init
     from im_inject_doc_head iidh,
          ordloc ol,
          sups s,
          item_master im
    where iidh.inject_doc_id = I_inject_doc_id
      and iidh.order_no      = ol.order_no
      and iidh.vendor        = s.supplier
      and ol.item            = im.item;

   LOGGER.LOG_INFORMATION(L_program||'insert into im_transform_ordloc_gtt - SQL%ROWCOUNT: '||SQL%ROWCOUNT);

   if REIM_XFORM_ORDLOC_SQL.TRANSFORM_ORDLOC_GTT(O_error_message) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   merge into im_inject_doc_head tgt
   using (select iidh.inject_doc_id,
                 sum(gtt.transform_qty_ordered) total_qty,
                 sum(gtt.transform_qty_ordered * gtt.transform_unit_cost) total_cost
            from im_inject_doc_head iidh,
                 im_transform_ordloc_gtt gtt,
                 (select store loc, store physical_loc from store
                  union all
                  select wh loc, physical_wh physical_loc from wh) locs
           where iidh.inject_doc_id = I_inject_doc_id
             and gtt.import_loc     = locs.loc
             and locs.physical_loc  = iidh.location
           GROUP BY iidh.inject_doc_id) src
   on (tgt.inject_doc_id = src.inject_doc_id)
   when MATCHED then
      update
         set tgt.total_qty          = src.total_qty,
             tgt.total_cost         = src.total_cost,
             tgt.total_cost_inc_tax = src.total_cost;

   LOGGER.TIME_STOP('DEFLT_GRP_ENTRY_DOC_FROM_PO');
   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END DEFLT_GRP_ENTRY_DOC_FROM_PO;
-------------------------------------------------------------------------------------------------------------
FUNCTION GET_TAX_STATUS(O_error_message    OUT VARCHAR2,
                        O_tax_ind          OUT VARCHAR2,
                        I_vendor        IN     IM_INJECT_DOC_HEAD.VENDOR%TYPE,
                        I_vendor_type   IN     IM_INJECT_DOC_HEAD.VENDOR_TYPE%TYPE,
                        I_location      IN     IM_INJECT_DOC_HEAD.LOCATION%TYPE,
                        I_loc_type      IN     IM_INJECT_DOC_HEAD.LOC_TYPE%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.GET_TAX_STATUS';

   cursor C_GET_NUM_TAX_ALLOW is
      select num_tax_allow
        from im_system_options;

   cursor C_FETCH_EXEMPT_DOC_COUNT is
      select DECODE(count(1),
                    REIM_CONSTANTS.ZERO, 'Y',
                    'N') tax_ind
        from (with locs as (select store loc,
                                   REIM_CONSTANTS.LOC_TYPE_STORE loc_type,
                                   vat_region
                              from store
                             union all
                            select wh loc,
                                   REIM_CONSTANTS.LOC_TYPE_WH loc_type,
                                   vat_region
                              from wh)
              select 'x'
                from sups s,
                     locs,
                     vat_region vr_loc,
                     vat_region vr_sups
               where I_vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                 and s.supplier      = I_vendor
                 and locs.loc        = I_location
                 and locs.loc_type   = I_loc_type
                 and locs.vat_region = vr_loc.vat_region
                 and s.vat_region    = vr_sups.vat_region
                 and REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT IN (vr_loc.vat_calc_type,
                                                             vr_sups.vat_calc_type)
              union all
              select 'x'
                from partner p,
                     locs,
                     vat_region vr_loc,
                     vat_region vr_part
               where I_vendor_type     <> REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                 and p.partner_id      = I_vendor
                 and locs.loc          = I_location
                 and locs.loc_type     = I_loc_type
                 and locs.vat_region   = vr_loc.vat_region
                 and p.vat_region      = vr_part.vat_region
                 and REIM_CONSTANTS.TAX_CALC_TYPE_EXEMPT IN (vr_loc.vat_calc_type,
                                                             vr_part.vat_calc_type)
                union all
                select 'x'
                from sups s,
                     locs,
                     vat_region vr_loc,
                     vat_region vr_sups
               where I_vendor_type   = REIM_CONSTANTS.VENDOR_TYPE_SUPPLIER
                 and s.supplier      = I_vendor
                 and locs.loc        = I_location
                 and locs.loc_type   = I_loc_type
                 and locs.vat_region = vr_loc.vat_region
                 and s.vat_region    = vr_sups.vat_region
                 and locs.vat_region <> s.vat_region 
                 and vr_sups.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM
                 and vr_loc.vat_calc_type <> REIM_CONSTANTS.TAX_CALC_TYPE_CUSTOM) docs;

BEGIN

   open C_GET_NUM_TAX_ALLOW;
   fetch C_GET_NUM_TAX_ALLOW into LP_num_tax_allow;
   close C_GET_NUM_TAX_ALLOW;

   if LP_num_tax_allow = REIM_CONSTANTS.NUM_TAX_ALLOW_NONE then
      O_tax_ind := REIM_CONSTANTS.YN_NO;
      return REIM_CONSTANTS.SUCCESS;
   end if;

   open C_FETCH_EXEMPT_DOC_COUNT;
   fetch C_FETCH_EXEMPT_DOC_COUNT into O_tax_ind;
   close C_FETCH_EXEMPT_DOC_COUNT;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END GET_TAX_STATUS;
-------------------------------------------------------------------------------------------------------------
FUNCTION FETCH_DOC_DUE_DATE(O_error_message    OUT VARCHAR2,
                            O_due_date         OUT IM_INJECT_DOC_HEAD.DUE_DATE%TYPE,
                            I_doc_date      IN     IM_INJECT_DOC_HEAD.DOC_DATE%TYPE,
                            I_terms         IN     TERMS_HEAD.TERMS%TYPE)
RETURN NUMBER IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.FETCH_DOC_DUE_DATE';

   cursor C_FETCH_DOC_DUE_DATE is
      select case
                 when d.fixed_date is NOT NULL then
                      d.fixed_date
                 when Nvl(d.discdays, 0) > 0 then
                      case
                          when I_doc_date + d.discdays >= get_vdate then
                               I_doc_date + d.discdays
                          else
                               I_doc_date + d.duedays
                      end
                 when Nvl(d.duedays, -1) >= 0  then
                      I_doc_date + d.duedays
                 when Nvl(d.disc_dom, 0) > 0 then
                      case
                          when LP_vdate <=
                                          (case
                                              when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(I_doc_date, d.disc_mm_fwd),'DD') then
                                                  case
                                                      when d.disc_dom = 31 then
                                                          Last_Day(Trunc(Add_Months(Add_Months(I_doc_date, d.disc_mm_fwd),1), 'MON'))
                                                      else
                                                          To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(I_doc_date, d.disc_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                                  end
                                              else
                                                  case
                                                      when d.disc_dom = 31 then
                                                          Last_Day(Trunc(Add_Months(I_doc_date, d.disc_mm_fwd), 'MON'))
                                                      else
                                                          To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(I_doc_date, d.disc_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                                  end
                                           end) then
                              case
                                  when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(I_doc_date, d.disc_mm_fwd),'DD') then
                                      case
                                          when d.disc_dom = 31 then
                                              Last_Day(Trunc(Add_Months(Add_Months(I_doc_date, d.disc_mm_fwd),1), 'MON'))
                                          else
                                              To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(I_doc_date, d.disc_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                      end
                                  else
                                      case
                                          when d.disc_dom = 31 then
                                              Last_Day(Trunc(Add_Months(I_doc_date, d.disc_mm_fwd), 'MON'))
                                          else
                                              To_Date(d.disc_dom || '-' || To_Char(Trunc(Add_Months(I_doc_date, d.disc_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                      end
                              end
                          when Nvl(d.due_dom, 0) > 0  then
                              case
                                  when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(I_doc_date, d.due_mm_fwd),'DD') then
                                      case
                                          when d.due_dom = 31 then
                                              Last_Day(Trunc(Add_Months(Add_Months(I_doc_date, d.due_mm_fwd),1), 'MON'))
                                          else
                                              To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(I_doc_date, d.due_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                      end
                                  else
                                      case
                                          when d.due_dom = 31 then
                                              Last_Day(Trunc(Add_Months(I_doc_date, d.disc_mm_fwd), 'MON'))
                                          else
                                              To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(I_doc_date, d.due_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                                      end
                              end
                          else
                              I_doc_date
                      end
                 when Nvl(d.due_dom, 0) > 0 then
                      case
                          when d.cutoff_day > 0 and d.cutoff_day <= to_char(Add_Months(I_doc_date, d.due_mm_fwd),'DD') then
                              case
                                  when d.due_dom = 31 then
                                      Last_Day(Trunc(Add_Months(Add_Months(I_doc_date, d.due_mm_fwd),1), 'MON'))
                                  else
                                      To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(Add_Months(I_doc_date, d.due_mm_fwd),1), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                              end
                          else
                              case
                                  when d.due_dom = 31 then
                                      Last_Day(Trunc(Add_Months(I_doc_date, d.disc_mm_fwd), 'MON'))
                                  else
                                      To_Date(d.due_dom || '-' || To_Char(Trunc(Add_Months(I_doc_date, d.due_mm_fwd), 'MON'),'MM-YYYY'),'DD-MM-YYYY')
                              end
                      end
                 else
                     I_doc_date
             end AS due_date
        from terms_head h,
             terms_detail d
       where h.terms         = I_terms
         and d.terms         = h.terms
         and d.enabled_flag  = REIM_CONSTANTS.YN_YES
         and I_doc_date      between nvl(d.start_date_active, I_doc_date) and nvl(d.end_date_active, I_doc_date);

BEGIN

   open C_FETCH_DOC_DUE_DATE;
   fetch C_FETCH_DOC_DUE_DATE into O_due_date;
   close C_FETCH_DOC_DUE_DATE;

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END FETCH_DOC_DUE_DATE;
-------------------------------------------------------------------------------------------------------------
FUNCTION VALIDATE_INDUCTION_DOCS(O_error_message IN OUT VARCHAR2,
                                 I_inject_id     IN     IM_INJECT_DOC_HEAD.INJECT_ID%TYPE,
                                 I_inject_doc_id IN     IM_INJECT_DOC_HEAD.INJECT_DOC_ID%TYPE,
                                 I_trial_id      IN     IM_INJECT_DOC_ERROR.TRIAL_ID%TYPE)
RETURN NUMBER
IS

   L_program VARCHAR2(50) := 'REIM_DOCUMENT_SQL.VALIDATE_INDUCTION_DOCS';

   cursor C_GET_NUM_TAX_ALLOW is
      select num_tax_allow
        from im_system_options;

   I_dummy_inject_id IM_INJECT_DOC_HEAD.INJECT_ID%TYPE := -1 * I_inject_id;

BEGIN

   LOGGER.LOG_INFORMATION('Start '             || L_program ||
                          ' I_inject_id: '     || I_inject_id ||
                          ' I_inject_doc_id: ' || I_inject_doc_id ||
                          ' I_trial_id: '      || I_trial_id);

   LOGGER.TIME_RESET;
   LOGGER.TIME_START('VALIDATE_INDUCTION_DOCS');

   if PRE_VALIDATE_TEMPLATE_DATA(O_error_message,
                                 I_inject_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUP_VPN_SUPPLIER(O_error_message,
                                I_inject_id,
                                I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if MOVE_ERROR_DOCUMENTS(O_error_message,
                           I_inject_id,
                           I_dummy_inject_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if POP_DEFLT_VALUES(O_error_message,
                       I_inject_id,
                       I_inject_doc_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if GET_CALC_TOLERANCE_VALUES(O_error_message,
                                LP_calc_tolerance,
                                LP_calc_tolerance_ind) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUP_VENDOR_DOC_NUMBER(O_error_message,
                                     I_inject_id,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUE_DATE(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CURRENCY_CODE(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CROSS_REF_DOC(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPP_OPTION_UNDEFINED(O_error_message,
                                     I_inject_id,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORDER(O_error_message,
                     I_inject_id,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_CURR(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_FR8_TYPE(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_VEND(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV(O_error_message,
                   I_inject_id,
                   I_inject_doc_id,
                   I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_LOC(O_error_message,
                       I_inject_id,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_VEND(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_TERMS(O_error_message,
                     I_inject_id,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOC_DATE(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_STORE(O_error_message,
                     I_inject_id,
                     I_inject_doc_id,
                     I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_WH(O_error_message,
                  I_inject_id,
                  I_inject_doc_id,
                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPP_AND_SITE(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_SUPPLIER(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PARTNER(O_error_message,
                       I_inject_id,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORD_LOC(O_error_message,
                       I_inject_id,
                       I_inject_doc_id,
                       I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_PAID_IND(O_error_message,
                        I_inject_id,
                        I_inject_doc_id,
                        I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_EXCHANGE_RATE(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOCTYPE_COST_INC_TAX(O_error_message,
                                     I_inject_id,
                                    I_inject_doc_id,
                                    I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_REQ_TOTAL_HDR_QTY(O_error_message,
                                 I_inject_id,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_FIXED_DEAL(O_error_message,
                          I_inject_id,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_COMPLEX_DEAL(O_error_message,
                            I_inject_id,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CRDNT_NO_DETAIL(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_REASON_CODE(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_CMC_REASON_CODE(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUPLICATE_VPN(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUPLICATE_UPC(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_VPN_SUPPLIER(O_error_message,
                            I_inject_id,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DERIVED_ITEM(O_error_message,
                            I_inject_id,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DUPLICATE_ITEM(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM(O_error_message,
                    I_inject_id,
                    I_inject_doc_id,
                    I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ITEM_SUPPLIER(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ORDER_ITEM(O_error_message,
                          I_inject_id,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_RTV_ORDER_ITEM(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_UPC(O_error_message,
                   I_inject_id,
                   I_inject_doc_id,
                   I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_UPC_SUPPLIER(O_error_message,
                            I_inject_id,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_REASON_CODE(O_error_message,
                           I_inject_id,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_HDR_DTL_QTY_MTCH(O_error_message,
                                I_inject_id,
                                I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MERCH_CODE(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_ZERO_MRCHI_DTL_REQ(O_error_message,
                                  I_inject_id,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DOC_DTL_NMRCH_REQ(O_error_message,
                                 I_inject_id,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_NON_MRCH_COST(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_NM_COST(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if VALIDATE_DETAIL_COST(O_error_message,
                           I_inject_id,
                           I_inject_doc_id,
                           I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   open C_GET_NUM_TAX_ALLOW;
   fetch C_GET_NUM_TAX_ALLOW into LP_num_tax_allow;
   close C_GET_NUM_TAX_ALLOW;

   if VALIDATE_NOT_ALLOWED_TAX(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if LP_num_tax_allow <> REIM_CONSTANTS.NUM_TAX_ALLOW_NONE then

      if VALIDATE_TAX_AMT_NON_ZERO(O_error_message,
                                   I_inject_id,
                                   I_inject_doc_id,
                                   I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_ACQ_TAX_DETAIL_REQ(O_error_message,
                                     I_inject_id,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_TAX_REQUIRED(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_EXEMPT_DOCS(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_ZERO_TAX_REQUIRED(O_error_message,
                                    I_inject_id,
                                    I_inject_doc_id,
                                    I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_REV_VAT_ITEM_ZERO_TAX(O_error_message,
                                        I_inject_id,
                                        I_inject_doc_id,
                                        I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_HDR_TAX(O_error_message,
                          I_inject_id,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_TOTAL_BASIS(O_error_message,
                              I_inject_id,
                              I_inject_doc_id,
                              I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DETAIL_BASIS(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_TOTAL_TAX(O_error_message,
                            I_inject_id,
                            I_inject_doc_id,
                            I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DTL_TAX_NOT_IN_HDR(O_error_message,
                                     I_inject_id,
                                     I_inject_doc_id,
                                     I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DTL_NM_TAX_NOT_IN_HDR(O_error_message,
                                        I_inject_id,
                                        I_inject_doc_id,
                                        I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DTL_TAX(O_error_message,
                          I_inject_id,
                          I_inject_doc_id,
                          I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DETAIL_TAX(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_NON_MRCH_TAX(O_error_message,
                               I_inject_id,
                               I_inject_doc_id,
                               I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_NON_MRCH_BASIS(O_error_message,
                                 I_inject_id,
                                 I_inject_doc_id,
                                 I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DETAIL_NM_BASIS(O_error_message,
                                  I_inject_id,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DTL_NM_TAX(O_error_message,
                             I_inject_id,
                             I_inject_doc_id,
                             I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

      if VALIDATE_DETAIL_NM_TAX(O_error_message,
                                I_inject_id,
                                I_inject_doc_id,
                                I_trial_id) = REIM_CONSTANTS.FAIL then
         return REIM_CONSTANTS.FAIL;
      end if;

    end if; -- Tax ON Check

   if VALIDATE_TOTAL_COST_INC_TAX(O_error_message,
                                  I_inject_id,
                                  I_inject_doc_id,
                                  I_trial_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   if MOVE_ERROR_DOCUMENTS(O_error_message,
                           I_dummy_inject_id,
                           I_inject_id) = REIM_CONSTANTS.FAIL then
      return REIM_CONSTANTS.FAIL;
   end if;

   LOGGER.TIME_STOP('VALIDATE_INDUCTION_DOCS');

   LOGGER.LOG_INFORMATION('End ' || L_program );

   return REIM_CONSTANTS.SUCCESS;

EXCEPTION

   when OTHERS then
      O_error_message := SQL_LIB.CREATE_MSG(REIM_CONSTANTS.PACKAGE_ERROR,
                                            SQLERRM,
                                            L_program,
                                            TO_CHAR(SQLCODE));

      return REIM_CONSTANTS.FAIL;

END VALIDATE_INDUCTION_DOCS;
-------------------------------------------------------------------------------------------------------------
END REIM_DOCUMENT_SQL;
/