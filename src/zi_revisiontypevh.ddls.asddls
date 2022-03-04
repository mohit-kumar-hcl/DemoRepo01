@EndUserText.label: 'Value Help View For Revision Type'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define custom entity ZI_RevisionTypeVH
{
      @Search           : { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem      : [{ label: 'Revision Type', position: 1 }]
      @UI.selectionField: [{element: 'revty', position: 1, exclude: false}]
      @EndUserText.label: 'Revision Type'
  key revty             : abap.char( 2 );
      @Search           : { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem      : [{ label: 'Revision Type Name', position: 2 }]
      @UI.selectionField: [{element: 'RevisionType_Text', position: 2, exclude: false}]
      @EndUserText.label: 'Revision Type Name'
      RevisionType_Text : abap.char( 40 );
}
