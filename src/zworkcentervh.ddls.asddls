/********** GENERATED on 02/09/2022 at 05:27:14 by CB9980001722**************/
 @OData.entitySet.name: 'WorkCenterVH' 
 @OData.entityType.name: 'WorkCenterVHType' 
 define root abstract entity ZWORKCENTERVH { 
 key Plant : abap.char( 4 ) ; 
 key WorkCenter : abap.char( 8 ) ; 
 @Odata.property.valueControl: 'WorkCenterText_vc' 
 WorkCenterText : abap.char( 40 ) ; 
 WorkCenterText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenterCategoryCode_vc' 
 WorkCenterCategoryCode : abap.char( 4 ) ; 
 WorkCenterCategoryCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenterCategoryName_vc' 
 WorkCenterCategoryName : abap.char( 20 ) ; 
 WorkCenterCategoryName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
