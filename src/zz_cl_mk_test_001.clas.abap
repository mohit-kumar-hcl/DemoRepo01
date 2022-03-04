CLASS zz_cl_mk_test_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZZ_CL_MK_TEST_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA:
      lt_business_data TYPE TABLE OF zzi_serialnumbermatdoc_tmp,
      lo_http_client   TYPE REF TO if_web_http_client,
      lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request       TYPE REF TO /iwbep/if_cp_request_read_list,
      lo_response      TYPE REF TO /iwbep/if_cp_response_read_lst.

*DATA:
* lo_filter_factory   TYPE REF TO /iwbep/if_cp_filter_factory,
* lo_filter_node_1    TYPE REF TO /iwbep/if_cp_filter_node,
* lo_filter_node_2    TYPE REF TO /iwbep/if_cp_filter_node,
* lo_filter_node_root TYPE REF TO /iwbep/if_cp_filter_node,
* lt_range_EQUIPMENT TYPE RANGE OF <element_name>,
* lt_range_MATERIALBYCUSTOMER TYPE RANGE OF <element_name>.


    TRY.
        TRY.
            lo_http_client = cl_web_http_client_manager=>create_by_http_destination(
            i_destination =  cl_http_destination_provider=>create_by_url( i_url = 'http://40.70.43.60:8000/' ) ).
          CATCH cx_web_http_client_error cx_http_dest_provider_error.
            "handle exception
        ENDTRY.

        lo_http_client->get_http_request( )->set_authorization_basic(
            i_username = ''
            i_password = ''
        ).
        " Create http client
*lo_http_client = cl_web_http_client_manager=>create_by_http_destination(
*                          cl_http_destination_provider=>create_by_cloud_destination(
*                                  i_name                  = '<Name of Cloud Destination>'
*                                  i_service_instance_name = '<Service Instance Name>' ) ).

        TRY.
            lo_client_proxy = cl_web_odata_client_factory=>create_v2_remote_proxy(
              EXPORTING
                iv_service_definition_name = 'ZZ_MK_CONSUME_MODEL_001'
                io_http_client             = lo_http_client
                iv_relative_service_root   = '/sap/opu/odata/sap/ZZ_TMP_GEN_SB_01/' ).
          CATCH cx_web_http_client_error.
            "handle exception
        ENDTRY.


        " Navigate to the resource and create a request for the read operation
        lo_request = lo_client_proxy->create_resource_for_entity_set( 'ZI_SERIALNUMBERMATDOC_TMP' )->create_request_for_read( ).

        " Create the filter tree
*lo_filter_factory = lo_request->create_filter_factory( ).
*
*lo_filter_node_1  = lo_filter_factory->create_by_range( iv_property_path     = 'EQUIPMENT'
*                                                        it_range             = lt_range_EQUIPMENT ).
*lo_filter_node_2  = lo_filter_factory->create_by_range( iv_property_path     = 'MATERIALBYCUSTOMER'
*                                                        it_range             = lt_range_MATERIALBYCUSTOMER ).

*lo_filter_node_root = lo_filter_node_1->and( lo_filter_node_2 ).
*lo_request->set_filter( lo_filter_node_root ).

        lo_request->set_top( 50 )->set_skip( 0 ).

        " Execute the request and retrieve the business data
        lo_response = lo_request->execute( ).
        lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

      CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
        " Handle remote Exception
        " It contains details about the problems of your http(s) connection

      CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
        " Handle Exception

    ENDTRY.
  ENDMETHOD.
ENDCLASS.
