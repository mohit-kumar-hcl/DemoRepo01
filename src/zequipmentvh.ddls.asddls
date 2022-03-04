/********** GENERATED on 02/09/2022 at 05:27:13 by CB9980001722**************/
 @OData.entitySet.name: 'EquipmentVH' 
 @OData.entityType.name: 'EquipmentVHType' 
 define root abstract entity ZEQUIPMENTVH { 
 key Equipment : abap.char( 18 ) ; 
 @Odata.property.valueControl: 'EquipmentName_vc' 
 EquipmentName : abap.char( 40 ) ; 
 EquipmentName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Material_vc' 
 Material : abap.char( 18 ) ; 
 Material_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaterialName_vc' 
 MaterialName : abap.char( 40 ) ; 
 MaterialName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SerialNumber_vc' 
 SerialNumber : abap.char( 18 ) ; 
 SerialNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
