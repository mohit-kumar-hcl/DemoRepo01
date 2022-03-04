/********** GENERATED on 03/03/2022 at 08:24:10 by CB9980001722**************/
 @OData.entitySet.name: 'I_CostCenterStdVH' 
 @OData.entityType.name: 'I_CostCenterStdVHType' 
 define root abstract entity ZI_COSTCENTERSTDVH93436830A4 { 
 key ControllingArea : abap.char( 4 ) ; 
 key CostCenter : abap.char( 10 ) ; 
 key ValidityEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 @Odata.property.valueControl: 'CostCenter_Text_vc' 
 CostCenter_Text : abap.char( 20 ) ; 
 CostCenter_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ValidityStartDate_vc' 
 ValidityStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ValidityStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
