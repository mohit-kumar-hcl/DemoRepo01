/********** GENERATED on 02/09/2022 at 05:27:14 by CB9980001722**************/
 @OData.entitySet.name: 'FunctionLocationVH' 
 @OData.entityType.name: 'FunctionLocationVHType' 
 define root abstract entity ZFUNCTIONLOCATIONVH { 
 key functionalLocationID : abap.char( 30 ) ; 
 key functionalLocation : abap.char( 40 ) ; 
 @Odata.property.valueControl: 'FunctionalLocationName_vc' 
 FunctionalLocationName : abap.char( 40 ) ; 
 FunctionalLocationName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ManufacturerName_vc' 
 ManufacturerName : abap.char( 30 ) ; 
 ManufacturerName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ManufacturerPartNmbr_vc' 
 ManufacturerPartNmbr : abap.char( 30 ) ; 
 ManufacturerPartNmbr_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ManufacturerPartTypeName_vc' 
 ManufacturerPartTypeName : abap.char( 20 ) ; 
 ManufacturerPartTypeName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ManufacturerSerialNumber_vc' 
 ManufacturerSerialNumber : abap.char( 30 ) ; 
 ManufacturerSerialNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
