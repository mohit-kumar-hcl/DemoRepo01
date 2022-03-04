@EndUserText.label: 'Test External Revision create pop up'
define abstract entity ZI_TestRevisionPopUpCreateExt
{
      @EndUserText.label: 'Planning Plant'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_PlanningPlantVH', element: 'MaintenancePlanningPlant' } }]
  key PlanningPlant     : abap.char( 4 );
      @EndUserText.label: 'Revision No'
  key RevisionNo        : abap.char( 8 );
      @EndUserText.label: 'Revision Type'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_RevisionTypeVH', element: 'revty' } }]
      RevisionType      : abap.char( 2 );
      @EndUserText.label: 'Revision Description'
      RevisionText      : abap.char( 40 );
      @EndUserText.label: 'Work Center'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_WorkCenterVH', element: 'WorkCenter' } }]
      WorkCenter        : abap.char( 8 );
      @EndUserText.label: 'Work Center Plant'
      WorkCenterPlant   : abap.char( 4 );
      @EndUserText.label: 'Revision Start Date'
      RevisionStartDate : rap_cp_odata_v2_edm_datetime;
      @EndUserText.label: 'Revision Start Time'
      RevisionStartTime : rap_cp_odata_v2_edm_time;
      @EndUserText.label: 'Revision End Date'
      RevisionEndDate   : rap_cp_odata_v2_edm_datetime;
      @EndUserText.label: 'Revision End Time'
      RevisionEndTime   : rap_cp_odata_v2_edm_time;
      @EndUserText.label: 'Equipment'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_EquipmentVH', element: 'Equipment' } }]
      Equipment         : abap.char( 18 );
      @EndUserText.label: 'Function Location'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_FunctionLocationVH', element: 'functionalLocation' } }]
      FunctionLocation  : abap.char( 30 );
}
