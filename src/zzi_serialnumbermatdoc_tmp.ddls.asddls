/********** GENERATED on 01/31/2022 at 12:40:06 by CB9980001722**************/
 @OData.entitySet.name: 'ZI_SERIALNUMBERMATDOC_TMP' 
 @OData.entityType.name: 'ZI_SERIALNUMBERMATDOC_TMPType' 
 define root abstract entity ZZI_SERIALNUMBERMATDOC_TMP { 
 key Equipment : abap.char( 18 ) ; 
 @Odata.property.valueControl: 'MaterialByCustomer_vc' 
 MaterialByCustomer : abap.char( 40 ) ; 
 MaterialByCustomer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SoldToPartyCustomer_vc' 
 SoldToPartyCustomer : abap.char( 12 ) ; 
 SoldToPartyCustomer_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SoldToPartyBP_vc' 
 SoldToPartyBP : abap.char( 10 ) ; 
 SoldToPartyBP_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Material_vc' 
 Material : abap.char( 40 ) ; 
 Material_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
