@EndUserText.label: 'Value Help View For Equipment'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define custom entity ZI_EquipmentVH
{
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Equipment', position: 1 }]
      @UI.selectionField: [{element: 'Equipment', position: 1, exclude: false}]
      @EndUserText.label: 'Equipment'  
  key Equipment     : abap.char( 18 );
      @Search: { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem: [{ label: 'Equipment Name', position: 2 }]
      @UI.selectionField: [{element: 'EquipmentName', position: 2, exclude: false}]
      @EndUserText.label: 'Equipmen tName'    
      EquipmentName : abap.char( 40 );
}
