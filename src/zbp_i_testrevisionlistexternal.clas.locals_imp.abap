CLASS lhc_ZI_TestRevisionListExterna DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR ZI_TestRevisionListExternal RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE ZI_TestRevisionListExternal.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE ZI_TestRevisionListExternal.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE ZI_TestRevisionListExternal.

    METHODS read FOR READ
      IMPORTING keys FOR READ ZI_TestRevisionListExternal RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK ZI_TestRevisionListExternal.

    METHODS createAssignNotif FOR MODIFY
      IMPORTING keys FOR ACTION ZI_TestRevisionListExternal~createAssignNotif RESULT result.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR ZI_TestRevisionListExternal RESULT result.

ENDCLASS.

CLASS lhc_ZI_TestRevisionListExterna IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD create.
    DATA : ls_business_data TYPE zmaintrevision,
           lo_http_client   TYPE REF TO if_web_http_client,
           lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
           lo_request       TYPE REF TO /iwbep/if_cp_request_create,
           lo_response      TYPE REF TO /iwbep/if_cp_response_create.
    LOOP AT entities ASSIGNING FIELD-SYMBOL(<ls_entities>).
      TRY.
          TRY.
              lo_client_proxy = NEW zz_cl_mk_test_003(  )->get_client_proxy(
                EXPORTING
                  iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL05_REVN'
                  iv_relative_service_root   = '/sap/opu/odata/sap/Z_REVISION_SB_01'
                  i_url                      = 'http://104.46.112.167:8001/' ).
              ls_business_data = VALUE #(
                        planningplant      = <ls_entities>-Planningplant
                        revisiontype       = <ls_entities>-Revisiontype
                        revisiontext       = <ls_entities>-RevisionDescription
                        workcenter         = <ls_entities>-Workcenter
                        workcenterplant    = <ls_entities>-plant
                        revisionstartdate  = '2022-01-01'
                        revisionstarttime  = '01:01:01.0'
                        revisionenddate    = '2022-03-31'
                        revisionendtime    = '01:01:01.0'
                        equipment          = <ls_entities>-Equipment
                        functionlocation   = <ls_entities>-FunctionalLocation ).
              lo_request = lo_client_proxy->create_resource_for_entity_set( 'MAINTREVISION' )->create_request_for_create( ).
              lo_request->set_business_data( ls_business_data ).
              " Execute the request
              lo_response = lo_request->execute( ).
              " Get the after image
              lo_response->get_business_data( IMPORTING es_business_data = ls_business_data ).
              IF lo_response IS NOT INITIAL
             AND ls_business_data IS NOT INITIAL.
                APPEND INITIAL LINE TO mapped-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_mapped>).
                <ls_mapped>-PlanningPlant = ls_business_data-Planningplant.
                <ls_mapped>-Revision = ls_business_data-RevisionNo.
                <ls_mapped>-%key-PlanningPlant  = ls_business_data-Planningplant.
                <ls_mapped>-%key-Revision = ls_business_data-RevisionNo.

                APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_reported>).
                <ls_reported>-PlanningPlant = ls_business_data-Planningplant.
                <ls_reported>-Revision = ls_business_data-RevisionNo.
                <ls_reported>-%key-PlanningPlant  = ls_business_data-Planningplant.
                <ls_reported>-%key-Revision = ls_business_data-RevisionNo.
                <ls_reported>-%create = abap_true.
                <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                                                 text     = |{ 'External Revision' } { ls_business_data-RevisionNo ALPHA = OUT } { 'created' }| ).
              ENDIF.
            CATCH cx_web_http_client_error cx_http_dest_provider_error.
              "handle exception
          ENDTRY.
        CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
          IF lo_response IS INITIAL.
            APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
            <ls_reported>-PlanningPlant = <ls_entities>-Planningplant.
            <ls_reported>-Revision = <ls_entities>-Revision.
            <ls_reported>-%key-PlanningPlant  = <ls_entities>-Planningplant.
            <ls_reported>-%key-Revision = <ls_entities>-Revision.
            <ls_reported>-%create = abap_true.
            <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                             text     = lx_remote->get_text( ) ).

            APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
            <ls_reported>-PlanningPlant = <ls_entities>-Planningplant.
            <ls_reported>-Revision = <ls_entities>-Revision.
            <ls_reported>-%key-PlanningPlant  = <ls_entities>-Planningplant.
            <ls_reported>-%key-Revision = <ls_entities>-Revision.
            <ls_reported>-%create = abap_true.
            <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                             text     = lx_remote->get_longtext( ) ).

            APPEND INITIAL LINE TO failed-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_failed>).
            <ls_failed>-%action-createAssignNotif = abap_true.
            <ls_failed>-%create = abap_true.
            <ls_failed>-PlanningPlant = <ls_entities>-Planningplant.
            <ls_failed>-Revision = <ls_entities>-Revision.
            <ls_failed>-%key-PlanningPlant  = <ls_entities>-Planningplant.
            <ls_failed>-%key-Revision = <ls_entities>-Revision.
          ENDIF.
        CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
          APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
          <ls_reported>-PlanningPlant = <ls_entities>-Planningplant.
          <ls_reported>-Revision = <ls_entities>-Revision.
          <ls_reported>-%key-PlanningPlant  = <ls_entities>-Planningplant.
          <ls_reported>-%key-Revision = <ls_entities>-Revision.
          <ls_reported>-%create = abap_true.
          <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                           text     = lx_gateway->get_text( ) ).

          APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
          <ls_reported>-PlanningPlant = <ls_entities>-Planningplant.
          <ls_reported>-Revision = <ls_entities>-Revision.
          <ls_reported>-%key-PlanningPlant  = <ls_entities>-Planningplant.
          <ls_reported>-%key-Revision = <ls_entities>-Revision.
          <ls_reported>-%create = abap_true.
          <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                           text     = lx_gateway->get_longtext( ) ).

          APPEND INITIAL LINE TO failed-zi_testrevisionlistexternal ASSIGNING <ls_failed>.
          <ls_failed>-%create = abap_true.
          <ls_failed>-PlanningPlant = <ls_entities>-Planningplant.
          <ls_failed>-Revision = <ls_entities>-Revision.
          <ls_failed>-%key-PlanningPlant  = <ls_entities>-Planningplant.
          <ls_failed>-%key-Revision = <ls_entities>-Revision.
          " Handle Exception
      ENDTRY.
    ENDLOOP.
  ENDMETHOD.

  METHOD update.
    TYPES : BEGIN OF lty_entity_key,
              PlanningPlant TYPE zmaintrevision-PlanningPlant,
              RevisionNo    TYPE zmaintrevision-RevisionNo,
            END OF lty_entity_key.
    DATA:
      lt_filter            TYPE if_rap_query_filter=>tt_name_range_pairs,
      ls_filter            TYPE if_rap_query_filter=>ty_name_range_pairs,
      ls_entity_key        TYPE lty_entity_key,
      ls_business_data_new TYPE zmaintrevision,
      lo_resource          TYPE REF TO /iwbep/if_cp_resource_entity,
      lo_request           TYPE REF TO /iwbep/if_cp_request_update,
      lo_response          TYPE REF TO /iwbep/if_cp_response_update.
    FIELD-SYMBOLS : <lt_business_data_old> TYPE STANDARD TABLE,
                    <ls_business_data_old> TYPE ZI_TestRevisionListExternal.
    TRY.
        DATA(lo_client_proxy) = NEW zz_cl_mk_test_003(  )->get_client_proxy(
                EXPORTING
                  iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL05_REVN'
                  iv_relative_service_root   = '/sap/opu/odata/sap/Z_REVISION_SB_01'
                  i_url                      = 'http://104.46.112.167:8001/' ).
        LOOP AT entities ASSIGNING FIELD-SYMBOL(<ls_entities>).
          DATA(lo) = <ls_entities>-%data.
          APPEND VALUE if_rap_query_filter=>ty_name_range_pairs( name = 'PLANNINGPLANT'
                                                                 range = VALUE if_rap_query_filter=>tt_range_option( ( sign = 'I'
                                                                                                                       option = 'EQ'
                                                                                                                       low = <ls_entities>-PlanningPlant  )
                                                                                                                    )
                                                               ) TO lt_filter.
          APPEND VALUE if_rap_query_filter=>ty_name_range_pairs( name = 'REVISION'
                                                                 range = VALUE if_rap_query_filter=>tt_range_option( ( sign = 'I'
                                                                                                                       option = 'EQ'
                                                                                                                       low = <ls_entities>-Revision  )
                                                                                                                    )
                                                               ) TO lt_filter.
          DATA(lo_client_proxy2) = NEW zz_cl_mk_test_003(  )->get_client_proxy( EXPORTING iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL01'
                                                                                          iv_relative_service_root   = '/sap/opu/odata/sap/Z_TESTSERVICEBIND01'
                                                                                          i_url                      = 'http://104.46.112.167:8001/' ).
          NEW zz_cl_mk_test_003(  )->get_data_via_proxy_wo_rap( EXPORTING iv_entity_set_name             = 'REVISIONS'
                                                                          iv_entity_set_ddic_name        = 'ZI_TestRevisionListExternal'
                                                                          it_filter                      = lt_filter
                                                                          iv_skip                        = 0
                                                                          iv_top                         = 1
                                                                          is_total_numb_of_rec_requested = abap_true
                                                                          io_client_proxy                = lo_client_proxy2
                                                                IMPORTING et_business_data = DATA(ldr_business_data_old) ).
          IF ldr_business_data_old IS NOT INITIAL.
            ASSIGN ldr_business_data_old->* TO <lt_business_data_old>.
            IF <lt_business_data_old> IS ASSIGNED AND <lt_business_data_old> IS NOT INITIAL.
              ASSIGN <lt_business_data_old>[ 1 ] TO <ls_business_data_old>.
              IF <ls_business_data_old> IS ASSIGNED.
                ls_business_data_new-RevisionNo = <ls_entities>-Revision.
                ls_business_data_new-PlanningPlant = <ls_entities>-PlanningPlant.
                IF <ls_entities>-%control-RevisionType EQ '01'.
                  ls_business_data_new-RevisionType = <ls_entities>-RevisionType.
                ELSE.
                  ls_business_data_new-RevisionType = <ls_business_data_old>-RevisionType.
                ENDIF.
                IF <ls_entities>-%control-RevisionDescription EQ '01'.
                  ls_business_data_new-RevisionText = <ls_entities>-RevisionDescription.
                ELSE.
                  ls_business_data_new-RevisionText = <ls_business_data_old>-RevisionDescription.
                ENDIF.
                IF <ls_entities>-%control-WorkCenter EQ '01'.
                  ls_business_data_new-WorkCenter = <ls_entities>-WorkCenter.
                ELSE.
                  ls_business_data_new-WorkCenter = <ls_business_data_old>-WorkCenter.
                ENDIF.
                IF <ls_entities>-%control-Plant EQ '01'.
                  ls_business_data_new-WorkCenterPlant = <ls_entities>-Plant.
                ELSE.
                  ls_business_data_new-WorkCenterPlant = <ls_business_data_old>-Plant.
                ENDIF.
*                IF <ls_entities>-%control-StartDate EQ '01'.
*                  ls_business_data_new-RevisionStartDate = <ls_entities>-StartDate.
*                ELSE.
*                  ls_business_data_new-RevisionStartDate = <ls_business_data_old>-StartDate.
*                ENDIF.
*                IF <ls_entities>-%control-StartTime EQ '01'.
*                  ls_business_data_new-RevisionStartTime = <ls_entities>-StartTime.
*                ELSE.
*                  ls_business_data_new-RevisionStartTime = <ls_business_data_old>-StartTime.
*                ENDIF.
*                IF <ls_entities>-%control-EndDate EQ '01'.
*                  ls_business_data_new-RevisionEndDate = <ls_entities>-EndDate.
*                ELSE.
*                  ls_business_data_new-RevisionEndDate = <ls_business_data_old>-EndDate.
*                ENDIF.
*                IF <ls_entities>-%control-EndTime EQ '01'.
*                  ls_business_data_new-RevisionEndTime = <ls_entities>-EndTime.
*                ELSE.
*                  ls_business_data_new-RevisionEndTime = <ls_business_data_old>-EndTime.
*                ENDIF.
                ls_business_data_new-revisionstartdate  = '2022-01-01'.
                ls_business_data_new-revisionstarttime  = '01:01:01.0'.
                ls_business_data_new-revisionenddate    = '2022-03-31'.
                ls_business_data_new-revisionendtime    = '01:01:01.0'.
                IF <ls_entities>-%control-Equipment EQ '01'.
                  ls_business_data_new-Equipment = <ls_entities>-Equipment.
                ELSE.
                  ls_business_data_new-Equipment = <ls_business_data_old>-Equipment.
                ENDIF.
                IF <ls_entities>-%control-FunctionalLocation EQ '01'.
                  ls_business_data_new-FunctionLocation = <ls_entities>-FunctionalLocation.
                ELSE.
                  ls_business_data_new-FunctionLocation = <ls_business_data_old>-FunctionalLocation.
                ENDIF.

                ls_entity_key = VALUE #( PlanningPlant = ls_business_data_new-PlanningPlant
                                         RevisionNo = ls_business_data_new-RevisionNo ).
                lo_resource = lo_client_proxy->create_resource_for_entity_set( 'MAINTREVISION' )->navigate_with_key( ls_entity_key ).
                lo_request = lo_resource->create_request_for_update( /iwbep/if_cp_request_update=>gcs_update_semantic-put ).
                lo_request->set_business_data( ls_business_data_new ).
                lo_response = lo_request->execute( ).
                IF lo_response IS NOT INITIAL.
                  APPEND INITIAL LINE TO mapped-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_mapped>).
                  <ls_mapped>-PlanningPlant = <ls_entities>-Planningplant.
                  <ls_mapped>-Revision = <ls_entities>-Revision.
                  <ls_mapped>-%key-PlanningPlant  = <ls_entities>-Planningplant.
                  <ls_mapped>-%key-Revision = <ls_entities>-Revision.

                  APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_reported>).
                  <ls_reported>-PlanningPlant = <ls_entities>-Planningplant.
                  <ls_reported>-Revision = <ls_entities>-Revision.
                  <ls_reported>-%key-PlanningPlant  = <ls_entities>-Planningplant.
                  <ls_reported>-%key-Revision = <ls_entities>-Revision.
                  <ls_reported>-%create = abap_true.
                  <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                                                   text     = 'External Revision updated' ).
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDLOOP.
      CATCH cx_web_http_client_error cx_http_dest_provider_error /iwbep/cx_gateway INTO DATA(lo_error).
        IF lo_response IS INITIAL.
          APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
          <ls_reported>-PlanningPlant = <ls_entities>-Planningplant.
          <ls_reported>-Revision = <ls_entities>-Revision.
          <ls_reported>-%key-PlanningPlant  = <ls_entities>-Planningplant.
          <ls_reported>-%key-Revision = <ls_entities>-Revision.
          <ls_reported>-%create = abap_true.
          <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                           text     = lo_error->get_text( ) ).

          APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
          <ls_reported>-PlanningPlant = <ls_entities>-Planningplant.
          <ls_reported>-Revision = <ls_entities>-Revision.
          <ls_reported>-%key-PlanningPlant  = <ls_entities>-Planningplant.
          <ls_reported>-%key-Revision = <ls_entities>-Revision.
          <ls_reported>-%create = abap_true.
          <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                           text     = lo_error->get_longtext( ) ).

          APPEND INITIAL LINE TO failed-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_failed>).
          <ls_failed>-%create = abap_true.
          <ls_failed>-PlanningPlant = <ls_entities>-Planningplant.
          <ls_failed>-Revision = <ls_entities>-Revision.
          <ls_failed>-%key-PlanningPlant  = <ls_entities>-Planningplant.
          <ls_failed>-%key-Revision = <ls_entities>-Revision.
        ENDIF.
    ENDTRY.
  ENDMETHOD.

  METHOD delete.
    TYPES : BEGIN OF lty_key,
              PlanningPlant TYPE zmaintrevision-PlanningPlant,
              RevisionNo    TYPE zmaintrevision-RevisionNo,
            END OF lty_key.

    DATA(lo_client_proxy) = NEW zz_cl_mk_test_003(  )->get_client_proxy(
                EXPORTING
                  iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL05_REVN'
                  iv_relative_service_root   = '/sap/opu/odata/sap/Z_REVISION_SB_01'
                  i_url                      = 'http://104.46.112.167:8001/' ).
    IF lo_client_proxy IS NOT INITIAL.
      LOOP AT keys ASSIGNING FIELD-SYMBOL(<ls_key>).
        TRY.
            DATA(ls_entity_key) = VALUE lty_key( PlanningPlant  = <ls_key>-PlanningPlant
                                                 RevisionNo = <ls_key>-Revision ).

            DATA(lo_resource) = lo_client_proxy->create_resource_for_entity_set( iv_entity_set_name = 'MAINTREVISION' )->navigate_with_key( is_key_data = ls_entity_key ).
            DATA(lo_delete_request) = lo_resource->create_request_for_delete( ).
            lo_delete_request->execute( ).
            APPEND INITIAL LINE TO mapped-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_mapped>).
            <ls_mapped>-PlanningPlant = <ls_key>-Planningplant.
            <ls_mapped>-Revision = <ls_key>-Revision.
            <ls_mapped>-%key-PlanningPlant  = <ls_key>-Planningplant.
            <ls_mapped>-%key-Revision = <ls_key>-Revision.

            APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_reported>).
            <ls_reported>-PlanningPlant = <ls_key>-Planningplant.
            <ls_reported>-Revision = <ls_key>-Revision.
            <ls_reported>-%key-PlanningPlant  = <ls_key>-Planningplant.
            <ls_reported>-%key-Revision = <ls_key>-Revision.
            <ls_reported>-%create = abap_true.
            <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                                             text     = 'External Revision deleted' ).
          CATCH /iwbep/cx_gateway cx_web_http_client_error cx_http_dest_provider_error INTO DATA(lo_error).
            APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
            <ls_reported>-PlanningPlant = <ls_key>-Planningplant.
            <ls_reported>-Revision = <ls_key>-Revision.
            <ls_reported>-%key-PlanningPlant  = <ls_key>-Planningplant.
            <ls_reported>-%key-Revision = <ls_key>-Revision.
            <ls_reported>-%create = abap_true.
            <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                             text     = CONV string( lo_error->get_longtext( ) ) ).

            APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
            <ls_reported>-PlanningPlant = <ls_key>-Planningplant.
            <ls_reported>-Revision = <ls_key>-Revision.
            <ls_reported>-%key-PlanningPlant  = <ls_key>-Planningplant.
            <ls_reported>-%key-Revision = <ls_key>-Revision.
            <ls_reported>-%create = abap_true.
            <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                             text     = CONV string( lo_error->get_text(  ) ) ).

            APPEND INITIAL LINE TO failed-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_failed>).
            <ls_failed>-%create = abap_true.
            <ls_failed>-PlanningPlant = <ls_key>-Planningplant.
            <ls_failed>-Revision = <ls_key>-Revision.
            <ls_failed>-%key-PlanningPlant  = <ls_key>-Planningplant.
            <ls_failed>-%key-Revision = <ls_key>-Revision.
        ENDTRY.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD createAssignNotif.
    DATA:
      ls_business_data     TYPE znotifheaderb22d58b6b0,
      ls_notif_create_data TYPE ZAI_NotifHeader_Create,
      lo_client_proxy      TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request           TYPE REF TO /iwbep/if_cp_request_create,
      lo_response          TYPE REF TO /iwbep/if_cp_response_create.
    CHECK keys IS NOT INITIAL.
    LOOP AT keys ASSIGNING FIELD-SYMBOL(<ls_keys>).
      CHECK <ls_keys>-PlanningPlant IS NOT INITIAL
        AND <ls_keys>-Revision IS NOT INITIAL.
      ls_notif_create_data = <ls_keys>-%param.
      CHECK ls_notif_create_data IS NOT INITIAL.
      TRY.
          lo_client_proxy = NEW zz_cl_mk_test_003(  )->get_client_proxy(
            EXPORTING
              iv_service_definition_name = 'Z_TESTSERVCONSUMEMODEL04_AHUB'
              iv_relative_service_root   = '/c543fc02trial/ZI_MAINTENANCENOTIF_SB'
              i_url                      = 'https://c543fc02trial-trial.integrationsuitetrial-apim.us10.hana.ondemand.com:443/'
              iv_apikey                  = '6LrSo8ELIhUpKYfleexuG1AIgjzGNGG0' ).
          ls_business_data = VALUE #( notificationtext            = ls_notif_create_data-Notificationtext
                    notificationtype            = ls_notif_create_data-Notificationtype
                    maintpriority               = ls_notif_create_data-Maintpriority
                    reportedbyuser              = ls_notif_create_data-Reportedbyuser
                    requiredstartdate           = ls_notif_create_data-startdate
                    requiredstarttime           = ls_notif_create_data-starttime
                    requiredenddate             = ls_notif_create_data-enddate
                    requiredendtime             = ls_notif_create_data-endtime
                    maintenancerevisionwps      = <ls_keys>-Revision
                    maintenanceplannergroup     = ls_notif_create_data-MaintenancePlannerGroup
                    maintenanceplanningplant    = ls_notif_create_data-MaintenancePlanningPlant
                    workcenter                  = ls_notif_create_data-Workcenter
                    maintenanceworkcenterplant  = ls_notif_create_data-plant
                    equipment                   = ls_notif_create_data-Equipment
                    functionallocation          = ls_notif_create_data-Functionallocation
                    maintenanceplant            = ls_notif_create_data-plant ).
          lo_request = lo_client_proxy->create_resource_for_entity_set( 'NOTIFHEADER' )->create_request_for_create( ).
          lo_request->set_business_data( ls_business_data ).
          lo_response = lo_request->execute( ).
          CLEAR : ls_business_data.
          lo_response->get_business_data( IMPORTING es_business_data = ls_business_data ).
          CHECK ls_business_data-MaintenanceNotification IS NOT INITIAL.
          APPEND INITIAL LINE TO mapped-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_mapped>).
          <ls_mapped>-PlanningPlant = <ls_keys>-Planningplant.
          <ls_mapped>-Revision = <ls_keys>-Revision.
          <ls_mapped>-%key-PlanningPlant  = <ls_keys>-Planningplant.
          <ls_mapped>-%key-Revision = <ls_keys>-Revision.

          APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_reported>).
          <ls_reported>-PlanningPlant = <ls_keys>-Planningplant.
          <ls_reported>-Revision = <ls_keys>-Revision.
          <ls_reported>-%key-PlanningPlant  = <ls_keys>-Planningplant.
          <ls_reported>-%key-Revision = <ls_keys>-Revision.
          <ls_reported>-%create = abap_true.
          <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                                           text     = |{ 'External Notification' } { ls_business_data-MaintenanceNotification ALPHA = OUT } { 'created.' }|  ).
        CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
          IF lo_response IS INITIAL.
            APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
            <ls_reported>-PlanningPlant = <ls_keys>-Planningplant.
            <ls_reported>-Revision = <ls_keys>-Revision.
            <ls_reported>-%key-PlanningPlant  = <ls_keys>-Planningplant.
            <ls_reported>-%key-Revision = <ls_keys>-Revision.
            <ls_reported>-%create = abap_true.
            <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                             text     = lx_remote->get_text( ) ).
            APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
            <ls_reported>-PlanningPlant = <ls_keys>-Planningplant.
            <ls_reported>-Revision = <ls_keys>-Revision.
            <ls_reported>-%key-PlanningPlant  = <ls_keys>-Planningplant.
            <ls_reported>-%key-Revision = <ls_keys>-Revision.
            <ls_reported>-%create = abap_true.
            <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                             text     = lx_remote->get_longtext( ) ).

            APPEND INITIAL LINE TO failed-zi_testrevisionlistexternal ASSIGNING FIELD-SYMBOL(<ls_failed>).
            <ls_failed>-%action-createAssignNotif = abap_true.
            <ls_failed>-%create = abap_true.
            <ls_failed>-PlanningPlant = <ls_keys>-Planningplant.
            <ls_failed>-Revision = <ls_keys>-Revision.
            <ls_failed>-%key-PlanningPlant  = <ls_keys>-Planningplant.
            <ls_failed>-%key-Revision = <ls_keys>-Revision.
          ENDIF.
        CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
          APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
          <ls_reported>-PlanningPlant = <ls_keys>-Planningplant.
          <ls_reported>-Revision = <ls_keys>-Revision.
          <ls_reported>-%key-PlanningPlant  = <ls_keys>-Planningplant.
          <ls_reported>-%key-Revision = <ls_keys>-Revision.
          <ls_reported>-%create = abap_true.
          <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                           text     = lx_gateway->get_text( ) ).

          APPEND INITIAL LINE TO reported-zi_testrevisionlistexternal ASSIGNING <ls_reported>.
          <ls_reported>-PlanningPlant = <ls_keys>-Planningplant.
          <ls_reported>-Revision = <ls_keys>-Revision.
          <ls_reported>-%key-PlanningPlant  = <ls_keys>-Planningplant.
          <ls_reported>-%key-Revision = <ls_keys>-Revision.
          <ls_reported>-%create = abap_true.
          <ls_reported>-%msg = NEW cl_abap_behv( )->new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                                           text     = lx_gateway->get_longtext( ) ).

          APPEND INITIAL LINE TO failed-zi_testrevisionlistexternal ASSIGNING <ls_failed>.
          <ls_failed>-%create = abap_true.
          <ls_failed>-PlanningPlant = <ls_keys>-Planningplant.
          <ls_failed>-Revision = <ls_keys>-Revision.
          <ls_failed>-%key-PlanningPlant  = <ls_keys>-Planningplant.
          <ls_failed>-%key-Revision = <ls_keys>-Revision.
          " Handle Exception
        CATCH cx_web_http_client_error cx_http_dest_provider_error INTO DATA(lo_error).
          "TODO
      ENDTRY.
    ENDLOOP.
  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZI_TESTREVISIONLISTEXTERNA DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZI_TESTREVISIONLISTEXTERNA IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
