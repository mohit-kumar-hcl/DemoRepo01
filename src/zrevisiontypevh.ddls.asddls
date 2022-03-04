/********** GENERATED on 02/09/2022 at 05:27:14 by CB9980001722**************/
 @OData.entitySet.name: 'RevisionTypeVH' 
 @OData.entityType.name: 'RevisionTypeVHType' 
 define root abstract entity ZREVISIONTYPEVH { 
 key revty : abap.char( 2 ) ; 
 @Odata.property.valueControl: 'RevisionType_Text_vc' 
 RevisionType_Text : abap.char( 40 ) ; 
 RevisionType_Text_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
