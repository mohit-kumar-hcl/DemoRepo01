/********** GENERATED on 03/03/2022 at 08:24:11 by CB9980001722**************/
 @OData.entitySet.name: 'I_MaintPlnrGrpStdVH' 
 @OData.entityType.name: 'I_MaintPlnrGrpStdVHType' 
 define root abstract entity ZI_MAINTPLNRGRPSTDVHD3E68397AA { 
 key MaintenancePlannerGroup : abap.char( 3 ) ; 
 key MaintenancePlanningPlant : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'MaintenancePlannerGroupName_vc' 
 MaintenancePlannerGroupName : abap.char( 18 ) ; 
 MaintenancePlannerGroupName_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
