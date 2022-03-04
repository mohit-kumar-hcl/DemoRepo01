/********** GENERATED on 03/03/2022 at 11:11:19 by CB9980001722**************/
 @OData.entitySet.name: 'MaintRevision' 
 @OData.entityType.name: 'MaintRevisionType' 
 define root abstract entity ZMAINTREVISION { 
 key PlanningPlant : abap.char( 4 ) ; 
 key RevisionNo : abap.char( 8 ) ; 
 @Odata.property.valueControl: 'RevisionType_vc' 
 RevisionType : abap.char( 2 ) ; 
 RevisionType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionText_vc' 
 RevisionText : abap.char( 40 ) ; 
 RevisionText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenter_vc' 
 WorkCenter : abap.char( 8 ) ; 
 WorkCenter_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenterPlant_vc' 
 WorkCenterPlant : abap.char( 4 ) ; 
 WorkCenterPlant_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionStartDate_vc' 
 RevisionStartDate : abap.char( 10 ) ; 
 RevisionStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionStartTime_vc' 
 RevisionStartTime : abap.char( 10 ) ; 
 RevisionStartTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionEndDate_vc' 
 RevisionEndDate : abap.char( 10 ) ; 
 RevisionEndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionEndTime_vc' 
 RevisionEndTime : abap.char( 10 ) ; 
 RevisionEndTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Equipment_vc' 
 Equipment : abap.char( 18 ) ; 
 Equipment_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FunctionLocation_vc' 
 FunctionLocation : abap.char( 30 ) ; 
 FunctionLocation_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
