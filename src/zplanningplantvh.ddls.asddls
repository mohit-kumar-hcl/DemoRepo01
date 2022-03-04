/********** GENERATED on 02/09/2022 at 05:27:14 by CB9980001722**************/
 @OData.entitySet.name: 'PlanningPlantVH' 
 @OData.entityType.name: 'PlanningPlantVHType' 
 define root abstract entity ZPLANNINGPLANTVH { 
 key MaintenancePlanningPlant : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'PlantName1_vc' 
 PlantName1 : abap.char( 30 ) ; 
 PlantName1_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PlantName2_vc' 
 PlantName2 : abap.char( 30 ) ; 
 PlantName2_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
