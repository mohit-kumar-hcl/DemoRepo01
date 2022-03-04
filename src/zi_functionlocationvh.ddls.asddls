@EndUserText.label: 'Value Help View For Function Location'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define custom entity ZI_FunctionLocationVH
{
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Functional Location', position: 1 }]
      @UI.selectionField: [{element: 'functionalLocation', position: 1, exclude: false}]
      @EndUserText.label: 'Functional Location'  
  key functionalLocation     : abap.char( 40 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Functional Location Name', position: 2 }]
      @UI.selectionField: [{element: 'FunctionalLocationName', position: 2, exclude: false}]
      @EndUserText.label: 'Functional Location Name'    
      FunctionalLocationName : abap.char( 40 );
}
