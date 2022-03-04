CLASS zz_cl_mk_test_003 DEFINITION PUBLIC FINAL CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_rap_query_provider .
    METHODS get_client_proxy
      IMPORTING iv_service_definition_name TYPE char40
                iv_relative_service_root   TYPE string
                i_url                      TYPE string
                iv_APIKey                  TYPE string OPTIONAL
      RETURNING VALUE(ro_client_proxy)     TYPE REF TO /iwbep/if_cp_client_proxy
      RAISING
                cx_web_http_client_error
                cx_http_dest_provider_error
                /iwbep/cx_gateway.
    METHODS get_data_via_proxy
      IMPORTING iv_entity_set_name      TYPE String
                iv_entity_set_ddic_name TYPE String
                io_client_proxy         TYPE REF TO /iwbep/if_cp_client_proxy
                io_request              TYPE REF TO if_rap_query_request
                io_response             TYPE REF TO if_rap_query_response
      RAISING
                /iwbep/cx_gateway
                cx_rap_query_filter_no_range.
    METHODS get_data_via_proxy_new
      IMPORTING iv_entity_set_name      TYPE String
                iv_entity_set_ddic_name TYPE String
                io_client_proxy         TYPE REF TO /iwbep/if_cp_client_proxy
                io_request              TYPE REF TO if_rap_query_request
                io_response             TYPE REF TO if_rap_query_response
      RAISING
                /iwbep/cx_gateway
                cx_rap_query_filter_no_range.
    METHODS get_data_via_proxy_wo_rap
      IMPORTING iv_entity_set_name             TYPE String
                iv_entity_set_ddic_name        TYPE String
                it_filter                      TYPE if_rap_query_filter=>tt_name_range_pairs OPTIONAL
                iv_skip                        TYPE i
                iv_top                         TYPE i
                is_total_numb_of_rec_requested TYPE abap_boolean
                io_client_proxy                TYPE REF TO /iwbep/if_cp_client_proxy
      EXPORTING et_business_data               TYPE REF TO data
                ev_count                       TYPE i
      RAISING
                /iwbep/cx_gateway.
    METHODS get_external_data
      IMPORTING iv_entity_set_name         TYPE String
                iv_entity_set_ddic_name    TYPE String
                io_request                 TYPE REF TO if_rap_query_request
                io_response                TYPE REF TO if_rap_query_response
                iv_service_definition_name TYPE char40
                iv_relative_service_root   TYPE string
                i_url                      TYPE string
                iv_apikey                  TYPE string OPTIONAL
      RAISING
                cx_web_http_client_error
                cx_http_dest_provider_error
                /iwbep/cx_gateway
                cx_rap_query_filter_no_range.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.



CLASS zz_cl_mk_test_003 IMPLEMENTATION.


  METHOD if_rap_query_provider~select.
    TRY.
        CASE io_request->get_entity_id( ).
          WHEN 'ZI_FUNCTIONLOCATIONVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'FUNCTIONLOCATIONVH'
                iv_entity_set_ddic_name    = 'ZI_FunctionLocationVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL03'
                iv_relative_service_root   = '/sap/opu/odata/sap/Z_TESTSERVICEBIND01'
                i_url                      = 'http://104.46.112.167:8001/' ).
          WHEN 'ZI_REVISIONTYPEVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'REVISIONTYPEVH'
                iv_entity_set_ddic_name    = 'ZI_RevisionTypeVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL03'
                iv_relative_service_root   = '/sap/opu/odata/sap/Z_TESTSERVICEBIND01'
                i_url                      = 'http://104.46.112.167:8001/' ).
          WHEN 'ZI_WORKCENTERVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'WORKCENTERVH'
                iv_entity_set_ddic_name    = 'ZI_WorkCenterVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL03'
                iv_relative_service_root   = '/sap/opu/odata/sap/Z_TESTSERVICEBIND01'
                i_url                      = 'http://104.46.112.167:8001/' ).
          WHEN 'ZI_EQUIPMENTVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'EQUIPMENTVH'
                iv_entity_set_ddic_name    = 'ZI_EquipmentVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL03'
                iv_relative_service_root   = '/sap/opu/odata/sap/Z_TESTSERVICEBIND01'
                i_url                      = 'http://104.46.112.167:8001/' ).
          WHEN 'ZI_PLANNINGPLANTVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'PLANNINGPLANTVH'
                iv_entity_set_ddic_name    = 'ZI_PlanningPlantVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL03'
                iv_relative_service_root   = '/sap/opu/odata/sap/Z_TESTSERVICEBIND01'
                i_url                      = 'http://104.46.112.167:8001/' ).
          WHEN 'ZI_PMNOTIFTYPEVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'I_PMNOTIFICATIONTYPESTDVH'
                iv_entity_set_ddic_name    = 'ZI_PMNotifTypeVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL04_AHUB'
                iv_relative_service_root   = '/c543fc02trial/ZI_MAINTENANCENOTIF_SB'
                i_url                      = 'https://c543fc02trial-trial.integrationsuitetrial-apim.us10.hana.ondemand.com:443/'
                iv_apikey                  = '6LrSo8ELIhUpKYfleexuG1AIgjzGNGG0' ).
          WHEN 'ZI_MAINTPLNRGRPSTDVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'I_MAINTPLNRGRPSTDVH'
                iv_entity_set_ddic_name    = 'ZI_MAINTPLNRGRPSTDVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL04_AHUB'
                iv_relative_service_root   = '/c543fc02trial/ZI_MAINTENANCENOTIF_SB'
                i_url                      = 'https://c543fc02trial-trial.integrationsuitetrial-apim.us10.hana.ondemand.com:443/'
                iv_apikey                  = '6LrSo8ELIhUpKYfleexuG1AIgjzGNGG0' ).
          WHEN 'ZI_PLANTSTDVH'.
            get_external_data(
              EXPORTING
                iv_entity_set_name         = 'I_PLANTSTDVH'
                iv_entity_set_ddic_name    = 'ZI_PLANTSTDVH'
                io_request                 = io_request
                io_response                = io_response
                iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL04_AHUB'
                iv_relative_service_root   = '/c543fc02trial/ZI_MAINTENANCENOTIF_SB'
                i_url                      = 'https://c543fc02trial-trial.integrationsuitetrial-apim.us10.hana.ondemand.com:443/'
                iv_apikey                  = '6LrSo8ELIhUpKYfleexuG1AIgjzGNGG0' ).
        ENDCASE.
      CATCH cx_web_http_client_error cx_http_dest_provider_error /iwbep/cx_gateway cx_rap_query_filter_no_range.
        "handle exception
    ENDTRY.
  ENDMETHOD.


  METHOD get_client_proxy.
    DATA(lo_http_dest_provider_url) = cl_http_destination_provider=>create_by_url( i_url = i_url ).
    IF lo_http_dest_provider_url IS NOT INITIAL.
      DATA(lo_web_http_client_manager) = cl_web_http_client_manager=>create_by_http_destination( i_destination = lo_http_dest_provider_url ).
      IF lo_web_http_client_manager IS NOT INITIAL.
        DATA(lv_basic_auth) = lo_web_http_client_manager->get_http_request( )->set_authorization_basic(
          EXPORTING
            i_username = 'MKUMAR'
            i_password = 'Password@01' ).
        IF iv_apikey IS SUPPLIED AND iv_apikey IS NOT INITIAL.
          lo_web_http_client_manager->get_http_request( )->set_header_field(
            EXPORTING
              i_name  = 'APIKey'
              i_value = iv_apikey ).
        ENDIF.
        IF lv_basic_auth IS NOT INITIAL.
          ro_client_proxy = cl_web_odata_client_factory=>create_v2_remote_proxy(
            EXPORTING
              iv_service_definition_name = iv_service_definition_name
              io_http_client             = lo_web_http_client_manager
              iv_relative_service_root   = iv_relative_service_root ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD get_data_via_proxy.
    DATA : lr_business_data TYPE REF TO data.
    DATA : lo_filter_node_root TYPE REF TO /iwbep/if_cp_filter_node.
    IF io_client_proxy IS NOT INITIAL.
      "Create Request
      DATA(lo_request) = io_client_proxy->create_resource_for_entity_set( iv_entity_set_name = CONV /iwbep/if_cp_runtime_types=>ty_entity_set_name( iv_entity_set_name ) )->create_request_for_read( ).
      IF lo_request IS NOT INITIAL.
        "Filtering
        DATA(lt_filter) = io_request->get_filter( )->get_as_ranges( ).
        IF lt_filter IS NOT INITIAL.
          DATA(lo_filter_factory) = lo_request->create_filter_factory( ).
          LOOP AT lt_filter ASSIGNING FIELD-SYMBOL(<ls_filter>).
            DATA(lo_filter_node)  = lo_filter_factory->create_by_range( iv_property_path     = <ls_filter>-name
                                                                        it_range             = <ls_filter>-range ).
            IF lo_filter_node_root IS INITIAL.
              lo_filter_node_root = lo_filter_node.
            ELSE.
              lo_filter_node_root = lo_filter_node_root->and( lo_filter_node ).
            ENDIF.
          ENDLOOP.
          lo_request->set_filter( io_filter_node = lo_filter_node_root ).
        ENDIF.
        "Paging
        DATA(lv_skip) = io_request->get_paging( )->get_offset(  ).
        DATA(lv_top) = io_request->get_paging( )->get_page_size(  ).
        IF lv_top LE 0.
          lv_top = 1.
        ENDIF.
        lo_request->set_top( CONV i( lv_top ) )->set_skip( CONV i( lv_skip ) ).
        "Sorting
        DATA(lt_sorted_elements) = io_request->get_sort_elements( ).
*        lo_request->set_orderby( it_orderby_property = lt_sorted_elements ).
        IF io_request->is_total_numb_of_rec_requested(  ).
          lo_request->request_count( ).
        ENDIF.
        "Create Response
        DATA(lo_response) = lo_request->execute( ).
        IF lo_response IS NOT INITIAL.
          CREATE DATA lr_business_data TYPE STANDARD TABLE OF (iv_entity_set_ddic_name).
          ASSIGN lr_business_data->* TO FIELD-SYMBOL(<lt_business_data>).
          lo_response->get_business_data( IMPORTING et_business_data = <lt_business_data> ).
          IF io_request->is_total_numb_of_rec_requested( ).
            io_response->set_total_number_of_records( iv_total_number_of_records = lo_response->get_count(  ) ).
          ENDIF.
          io_response->set_data( it_data = <lt_business_data> ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD get_data_via_proxy_new.
    IF io_client_proxy IS NOT INITIAL.
      get_data_via_proxy_wo_rap( EXPORTING iv_entity_set_name             = iv_entity_set_name
                                           iv_entity_set_ddic_name        = iv_entity_set_ddic_name
                                           it_filter                      = io_request->get_filter( )->get_as_ranges(  )
                                           iv_skip                        = io_request->get_paging( )->get_offset(  )
                                           iv_top                         = io_request->get_paging( )->get_page_size(  )
                                           is_total_numb_of_rec_requested = io_request->is_total_numb_of_rec_requested( )
                                           io_client_proxy                = io_client_proxy
                                 IMPORTING et_business_data               = DATA(lr_business_data)
                                           ev_count                       = DATA(lv_count) ).
      "Sorting
      DATA(lt_sorted_elements) = io_request->get_sort_elements( ).
*        lo_request->set_orderby( it_orderby_property = lt_sorted_elements ).
      IF lr_business_data IS NOT INITIAL.
        ASSIGN lr_business_data->* TO FIELD-SYMBOL(<lt_business_data>).
        IF io_request->is_total_numb_of_rec_requested( ).
          io_response->set_total_number_of_records( iv_total_number_of_records = CONV int8( lv_count ) ).
        ENDIF.
        io_response->set_data( it_data = <lt_business_data> ).
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD get_data_via_proxy_wo_rap.
    DATA : lo_filter_node_root TYPE REF TO /iwbep/if_cp_filter_node.
    IF io_client_proxy IS NOT INITIAL.
      "Create Request
      DATA(lo_request) = io_client_proxy->create_resource_for_entity_set( iv_entity_set_name = CONV /iwbep/if_cp_runtime_types=>ty_entity_set_name( iv_entity_set_name ) )->create_request_for_read( ).
      IF lo_request IS NOT INITIAL.
        "Filtering
        IF it_filter IS NOT INITIAL.
          DATA(lo_filter_factory) = lo_request->create_filter_factory( ).
          LOOP AT it_filter ASSIGNING FIELD-SYMBOL(<ls_filter>).
            DATA(lo_filter_node)  = lo_filter_factory->create_by_range( iv_property_path     = <ls_filter>-name
                                                                        it_range             = <ls_filter>-range ).
            IF lo_filter_node_root IS INITIAL.
              lo_filter_node_root = lo_filter_node.
            ELSE.
              lo_filter_node_root = lo_filter_node_root->and( lo_filter_node ).
            ENDIF.
          ENDLOOP.
          lo_request->set_filter( io_filter_node = lo_filter_node_root ).
        ENDIF.
        "Paging
        DATA(lv_skip) = iv_skip.
        DATA(lv_top) = iv_top.
        IF lv_top LE 0.
          lv_top = 1.
        ENDIF.
        lo_request->set_top( lv_top )->set_skip( lv_skip ).
        IF is_total_numb_of_rec_requested EQ abap_true.
          lo_request->request_count( ).
        ENDIF.
        "Create Response
        DATA(lo_response) = lo_request->execute( ).
        IF lo_response IS NOT INITIAL.
          CREATE DATA et_business_data TYPE STANDARD TABLE OF (iv_entity_set_ddic_name).
          ASSIGN et_business_data->* TO FIELD-SYMBOL(<lt_business_data>).
          lo_response->get_business_data( IMPORTING et_business_data = <lt_business_data> ).
          ev_count = lo_response->get_count( ).
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.


  METHOD get_external_data.
    CHECK io_request->is_data_requested( ).
    DATA(lo_client_proxy) = get_client_proxy( iv_service_definition_name = iv_service_definition_name
                                              iv_relative_service_root   = iv_relative_service_root
                                              i_url                      = i_url
                                              iv_apikey                  = iv_apikey ).
    IF lo_client_proxy IS NOT INITIAL.
      get_data_via_proxy(
        EXPORTING
          iv_entity_set_name      = iv_entity_set_name
          iv_entity_set_ddic_name = iv_entity_set_ddic_name
          io_client_proxy         = lo_client_proxy
          io_request              = io_request
          io_response             = io_response ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
