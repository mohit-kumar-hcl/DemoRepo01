/********** GENERATED on 03/03/2022 at 08:24:11 by CB9980001722**************/
 @OData.entitySet.name: 'I_InspectionCodeStdVH' 
 @OData.entityType.name: 'I_InspectionCodeStdVHType' 
 define root abstract entity ZI_INSPECTIONCODESTDD3C3B2DCBC { 
 key InspectionCatalog : abap.char( 1 ) ; 
 key InspectionCodeGroup : abap.char( 8 ) ; 
 key InspectionCode : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'InspectionCode_Text_vc' 
 InspectionCode_Text : abap.char( 40 ) ; 
 InspectionCode_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
