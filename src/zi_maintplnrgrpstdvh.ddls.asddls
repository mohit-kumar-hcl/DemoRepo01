@EndUserText.label: 'Planner Group'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define custom entity ZI_MAINTPLNRGRPSTDVH
{
      @Search                     : { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem                : [{ label: 'MaintenancePlannerGroup', position: 1 }]
      @UI.selectionField          : [{element: 'MaintenancePlannerGroup', position: 1, exclude: false}]
      @EndUserText.label          : 'MaintenancePlannerGroup'
  key MaintenancePlannerGroup     : abap.char( 3 );
      @Search                     : { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem                : [{ label: 'MaintenancePlanningPlant', position: 1 }]
      @UI.selectionField          : [{element: 'MaintenancePlanningPlant', position: 1, exclude: false}]
      @EndUserText.label          : 'MaintenancePlanningPlant'
  key MaintenancePlanningPlant    : abap.char( 4 );
      @Search                     : { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem                : [{ label: 'MaintenancePlannerGroupName', position: 1 }]
      @UI.selectionField          : [{element: 'MaintenancePlannerGroupName', position: 1, exclude: false}]
      @EndUserText.label          : 'MaintenancePlannerGroupName'
      MaintenancePlannerGroupName : abap.char( 18 );
}
