@EndUserText.label: 'Plant VH'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define root custom entity ZI_PLANTSTDVH
{
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Plant', position: 1 }]
      @UI.selectionField: [{element: 'Plant', position: 1, exclude: false}]
      @EndUserText.label: 'Plant'  
  key Plant     : abap.char( 4 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Plant Name', position: 2 }]
      @UI.selectionField: [{element: 'Plant', position: 2, exclude: false}]
      @EndUserText.label: 'Plant Name'   
      PlantName : abap.char( 30 );
}
