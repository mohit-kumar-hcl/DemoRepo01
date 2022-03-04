@EndUserText.label: 'Notification Type VH'
@ObjectModel.query.implementedBy: 'ABAP:ZZ_CL_MK_TEST_003'
@Search.searchable: true
define custom entity ZI_PMNotifTypeVH
{
      @Search               : { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem          : [{ label: 'Notification Type', position: 10 }]
      @UI.selectionField    : [{element: 'NotificationType', position: 10, exclude: false}]
      @EndUserText.label    : 'Notification Type'
  key NotificationType      : abap.char( 2 );
      @Search               : { defaultSearchElement: true, ranking: #HIGH, fuzzinessThreshold: 0.8 }
      @UI.lineItem          : [{ label: 'Notification Type Name', position: 20}]
      @UI.selectionField    : [{element: 'NotificationType_Text', position: 20, exclude: false}]
      @EndUserText.label    : 'Notification Type Name'
      NotificationType_Text : abap.char( 20 );
}
