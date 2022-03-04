@EndUserText.label: 'Value Help View For Planning Plant'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define root custom entity ZI_PlanningPlantVH
{
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Planning Plant', position: 1 }]
      @UI.selectionField: [{element: 'MaintenancePlanningPlant', position: 1, exclude: false}]
      @EndUserText.label: 'Planning Plant'   
  key MaintenancePlanningPlant : abap.char( 4 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Planning Plant Name 1', position: 2 }]
      @UI.selectionField: [{element: 'PlantName1', position: 2, exclude: false}]
      @EndUserText.label: 'Planning Plant Name 1'  
      PlantName1               : abap.char( 30 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Planning Plant Name 2', position: 3 }]
      @UI.selectionField: [{element: 'PlantName2', position: 3, exclude: false}]
      @EndUserText.label: 'Planning Plant Name 2'       
      PlantName2               : abap.char( 30 );
}
