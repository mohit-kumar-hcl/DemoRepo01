@EndUserText.label: 'Test External Revision List'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_002'
@UI: {  headerInfo:
            {
                typeName: 'Maintenance Revision',
                typeNamePlural: 'Maint. Rev.',
                title.label: 'External Maintenance Revisions',
                description.label: 'External Maintenance Revisions'
             }
     }
@Search.searchable: true
define root custom entity ZI_TestRevisionListExternal
{
      @UI.facet           : [{ id: 'RevisionHeader',
                                importance: #HIGH,
                                label : 'External Maintenance Revisions',
                                position: 1,
                                purpose: #STANDARD,
                                type  :#IDENTIFICATION_REFERENCE}]
      @UI                 : {
      lineItem            : [ { position: 10, importance: #HIGH, label: 'Planning Plant' },
                              { position: 10, type : #FOR_ACTION, dataAction: 'createAssignNotif', label: 'Create/Assign Notif.'}
                            ],
      identification      : [{position: 10, type: #STANDARD, label: 'Planning Plant'},
                              { position: 10, type : #FOR_ACTION, dataAction: 'createAssignNotif', label: 'Create/Assign Notif.'}],
      selectionField      : [{position: 10, element: 'PlanningPlant' }]
      }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking     : #HIGH
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_PlanningPlantVH', element: 'MaintenancePlanningPlant' } }]
  key PlanningPlant       : abap.char( 4 );
      @UI                 : {
      lineItem            : [{position: 20, importance: #HIGH, label: 'Revision ID', invocationGrouping: #CHANGE_SET }],
      identification      : [{position: 20, type: #STANDARD, label: 'Revision ID'}],
      selectionField      : [{position: 20, exclude: true}]
      }
  key Revision            : abap.char( 8 );
      @UI                 : {
      lineItem            : [{position: 30, importance: #HIGH, label: 'Revision Type' }],
      identification      : [{position: 30, type: #STANDARD, label: 'Revision Type'}],
      selectionField      : [{position: 30, exclude: false, element: 'RevisionType'}]
      }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_RevisionTypeVH', element: 'revty' } }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking     : #HIGH
      RevisionType        : abap.char( 2 );
      @UI                 : {
      lineItem            : [{position: 40, importance: #HIGH, label: 'Revision Description' }],
      identification      : [{position: 40, type: #STANDARD, label: 'Revision Description'}],
      selectionField      : [{position: 40, exclude: true}]
      }
      RevisionDescription : abap.char( 40 );
      @UI                 : {
      lineItem            : [{position: 50, importance: #LOW, label: 'Work Center' }],
      identification      : [{position: 50, type: #STANDARD, label: 'Work Center'}],
      selectionField      : [{position: 50, exclude: false, element: 'WorkCenter'}]
      }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_WorkCenterVH', element: 'WorkCenter' } }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking     : #HIGH
      WorkCenter          : abap.char( 8 );
      @UI                 : {
      lineItem            : [{position: 60, importance: #HIGH, label: 'Work Center Plant' }],
      identification      : [{position: 60, type: #STANDARD, label: 'Work Center Plant'}],
      selectionField      : [{position: 60, exclude: true}]
      }
      Plant               : abap.char( 4 );
      @UI                 : {
      lineItem            : [{position: 70, importance: #HIGH, label: 'Start Date' }],
      identification      : [{position: 70, type: #STANDARD, label: 'Start Date'}],
      selectionField      : [{position: 70, exclude: true}]
      }
      StartDate           : rap_cp_odata_v2_edm_datetime;
      @UI                 : {
      lineItem            : [{position: 80, importance: #HIGH, label: 'Start Time' }],
      identification      : [{position: 80, type: #STANDARD, label: 'Start Time'}],
      selectionField      : [{position: 80, exclude: true}]
      }
      StartTime           : rap_cp_odata_v2_edm_time;
      @UI                 : {
      lineItem            : [{position: 90, importance: #LOW, label: 'End Date' }],
      identification      : [{position: 90, type: #STANDARD, label: 'End Date'}],
      selectionField      : [{position: 90, exclude: true}]
      }
      EndDate             : rap_cp_odata_v2_edm_datetime;
      @UI                 : {
      lineItem            : [{position: 100, importance: #LOW, label: 'End Time' }],
      identification      : [{position: 100, type: #STANDARD, label: 'End Time'}],
      selectionField      : [{position: 100, exclude: true}]
      }
      EndTime             : rap_cp_odata_v2_edm_time;
      @UI                 : {
      lineItem            : [{position: 110, importance: #LOW, label: 'Equipment' }],
      identification      : [{position: 110, type: #STANDARD, label: 'Equipment'}],
      selectionField      : [{position: 110, exclude: false, element: 'Equipment'}]
      }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_EquipmentVH', element: 'Equipment' } }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking     : #HIGH
      Equipment           : abap.char( 18 );
      @UI                 : {
      lineItem            : [{position: 120, importance: #LOW, label: 'Functional Location' }],
      identification      : [{position: 120, type: #STANDARD, label: 'Functional Location'}],
      selectionField      : [{position: 120, exclude: false}]
      }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_FunctionLocationVH', element: 'functionalLocation' } }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking     : #HIGH
      FunctionalLocation  : abap.char( 30 );
}
