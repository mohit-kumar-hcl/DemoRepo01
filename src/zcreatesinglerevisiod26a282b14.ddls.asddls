/********** GENERATED on 02/09/2022 at 05:27:12 by CB9980001722**************/
 @OData.entitySet.name: 'CreateSingleRevision' 
 @OData.entityType.name: 'CreateSingleRevisionType' 
 define root abstract entity ZCREATESINGLEREVISIOD26A282B14 { 
 key customID : abap.char( 10 ) ; 
 @Odata.property.valueControl: 'PlanningPlant_vc' 
 PlanningPlant : abap.char( 4 ) ; 
 PlanningPlant_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionNo_vc' 
 RevisionNo : abap.char( 8 ) ; 
 RevisionNo_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
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
 RevisionStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 RevisionStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionStartTime_vc' 
 RevisionStartTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 RevisionStartTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionEndDate_vc' 
 RevisionEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 RevisionEndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RevisionEndTime_vc' 
 RevisionEndTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 RevisionEndTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Equipment_vc' 
 Equipment : abap.char( 18 ) ; 
 Equipment_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FunctionLocation_vc' 
 FunctionLocation : abap.char( 30 ) ; 
 FunctionLocation_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
