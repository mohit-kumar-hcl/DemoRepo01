/********** GENERATED on 02/07/2022 at 12:00:17 by CB9980001722**************/
 @OData.entitySet.name: 'Revisions' 
 @OData.entityType.name: 'RevisionsType' 
 define root abstract entity ZREVISIONS { 
 key PlanningPlant : abap.char( 4 ) ; 
 key Revision : abap.char( 8 ) ; 
 @Odata.property.valueControl: 'RevisionType_vc' 
 RevisionType : abap.char( 2 ) ; 
 RevisionType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionDescription_vc' 
 RevisionDescription : abap.char( 40 ) ; 
 RevisionDescription_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenter_vc' 
 WorkCenter : abap.char( 8 ) ; 
 WorkCenter_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Plant_vc' 
 Plant : abap.char( 4 ) ; 
 Plant_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'StartDate_vc' 
 StartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 StartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'StartTime_vc' 
 StartTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 StartTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'EndDate_vc' 
 EndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 EndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'EndTime_vc' 
 EndTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 EndTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Equipment_vc' 
 Equipment : abap.char( 18 ) ; 
 Equipment_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FunctionalLocation_vc' 
 FunctionalLocation : abap.char( 30 ) ; 
 FunctionalLocation_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
