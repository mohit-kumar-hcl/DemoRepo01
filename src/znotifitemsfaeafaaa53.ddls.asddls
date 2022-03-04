/********** GENERATED on 03/03/2022 at 08:24:14 by CB9980001722**************/
 @OData.entitySet.name: 'NotifItems' 
 @OData.entityType.name: 'NotifItemsType' 
 define root abstract entity ZNOTIFITEMSFAEAFAAA53 { 
 key MaintenanceNotification : abap.char( 12 ) ; 
 key MaintenanceNotificationItem : abap.numc( 4 ) ; 
 @Odata.property.valueControl: 'MaintNotifItemText_vc' 
 MaintNotifItemText : abap.char( 40 ) ; 
 MaintNotifItemText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintNotifObjPrtCodeGroup_vc' 
 MaintNotifObjPrtCodeGroup : abap.char( 8 ) ; 
 MaintNotifObjPrtCodeGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintNotifObjPrtCode_vc' 
 MaintNotifObjPrtCode : abap.char( 4 ) ; 
 MaintNotifObjPrtCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintNotificationDamageCode_vc' 
 MaintNotificationDamageCode : abap.char( 4 ) ; 
 MaintNotificationDamageCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintNotifDamageCodeGroup_vc' 
 MaintNotifDamageCodeGroup : abap.char( 8 ) ; 
 MaintNotifDamageCodeGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
