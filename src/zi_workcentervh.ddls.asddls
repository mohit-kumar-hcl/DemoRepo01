@EndUserText.label: 'Value Help View For Work Center'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define root custom entity ZI_WorkCenterVH
{
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Planning Plant', position: 1 }]
      @UI.selectionField: [{element: 'Plant', position: 1, exclude: false}]
      @EndUserText.label: 'Planning Plant'  
  key Plant                  : abap.char( 4 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Work Center', position: 2 }]
      @UI.selectionField: [{element: 'WorkCenter', position: 2, exclude: false}]
      @EndUserText.label: 'Work Center'    
  key WorkCenter             : abap.char( 8 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Work Center Text', position: 3 }]
      @UI.selectionField: [{element: 'WorkCenterText', position: 3, exclude: false}]
      @EndUserText.label: 'Work Center Text'  
      WorkCenterText         : abap.char( 40 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Work Center Category Code', position: 4 }]
      @UI.selectionField: [{element: 'WorkCenterCategoryCode', position: 4, exclude: false}]
      @EndUserText.label: 'Work Center Category Code'        
      WorkCenterCategoryCode : abap.char( 4 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Work Center Category Name', position: 5 }]
      @UI.selectionField: [{element: 'WorkCenterCategoryName', position: 5, exclude: false}]
      @EndUserText.label: 'Work Center Category Name'        
      WorkCenterCategoryName : abap.char( 20 );
}
