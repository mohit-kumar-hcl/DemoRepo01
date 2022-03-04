/********** GENERATED on 03/03/2022 at 08:24:13 by CB9980001722**************/
 @OData.entitySet.name: 'I_WrkCtrBySemanticKeyStdVH' 
 @OData.entityType.name: 'I_WrkCtrBySemanticKeyStdVHType' 
 define root abstract entity ZI_WRKCTRBYSEMANTICKC78A0ABD90 { 
 key Plant : abap.char( 4 ) ; 
 key WorkCenter : abap.char( 8 ) ; 
 @Odata.property.valueControl: 'WorkCenter_Text_vc' 
 WorkCenter_Text : abap.char( 40 ) ; 
 WorkCenter_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenterInternalID_vc' 
 WorkCenterInternalID : abap.numc( 8 ) ; 
 WorkCenterInternalID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
