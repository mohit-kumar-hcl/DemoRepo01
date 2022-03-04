CLASS zz_cl_mk_test_002 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZZ_CL_MK_TEST_002 IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
    TRY.
        NEW zz_cl_mk_test_003(  )->get_external_data(
          EXPORTING
            iv_entity_set_name         = 'REVISIONS'
            iv_entity_set_ddic_name    = 'ZI_TestRevisionListExternal'
            io_request                 = io_request
            io_response                = io_response
            iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL01'
            iv_relative_service_root   = '/sap/opu/odata/sap/Z_TESTSERVICEBIND01'
            i_url                      = 'http://104.46.112.167:8001/' ).
      CATCH cx_web_http_client_error cx_http_dest_provider_error /iwbep/cx_gateway cx_rap_query_filter_no_range.
        "handle exception
    ENDTRY.
  ENDMETHOD.
ENDCLASS.
