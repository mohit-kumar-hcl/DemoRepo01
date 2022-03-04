/********** GENERATED on 03/03/2022 at 08:24:10 by CB9980001722**************/
 @OData.entitySet.name: 'I_InspectionCodeGroupStdVH' 
 @OData.entityType.name: 'I_InspectionCodeGroupStdVHType' 
 define root abstract entity ZI_INSPECTIONCODEGROF2D736F8C6 { 
 key InspectionCatalog : abap.char( 1 ) ; 
 key InspectionCodeGroup : abap.char( 8 ) ; 
 @Odata.property.valueControl: 'InspectionCodeGroup_Text_vc' 
 InspectionCodeGroup_Text : abap.char( 40 ) ; 
 InspectionCodeGroup_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
