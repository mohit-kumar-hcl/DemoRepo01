/********** GENERATED on 03/03/2022 at 08:24:08 by CB9980001722**************/
 @OData.entitySet.name: 'NotifHeader' 
 @OData.entityType.name: 'NotifHeaderType' 
 define root abstract entity ZNOTIFHEADERB22D58B6B0 { 
 key MaintenanceNotification : abap.char( 12 ) ; 
 @Odata.property.valueControl: 'NotificationText_vc' 
 NotificationText : abap.char( 40 ) ; 
 NotificationText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NotificationType_vc' 
 NotificationType : abap.char( 2 ) ; 
 NotificationType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintPriority_vc' 
 MaintPriority : abap.char( 1 ) ; 
 MaintPriority_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenanceActivityType_vc' 
 MaintenanceActivityType : abap.char( 3 ) ; 
 MaintenanceActivityType_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintNotificationCatalog_vc' 
 MaintNotificationCatalog : abap.char( 1 ) ; 
 MaintNotificationCatalog_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintNotificationCodeGroup_vc' 
 MaintNotificationCodeGroup : abap.char( 8 ) ; 
 MaintNotificationCodeGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintNotificationCode_vc' 
 MaintNotificationCode : abap.char( 4 ) ; 
 MaintNotificationCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ReportedByUser_vc' 
 ReportedByUser : abap.char( 12 ) ; 
 ReportedByUser_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RequiredStartDate_vc' 
 RequiredStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 RequiredStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RequiredStartTime_vc' 
 RequiredStartTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 RequiredStartTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RequiredEndDate_vc' 
 RequiredEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 RequiredEndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RequiredEndTime_vc' 
 RequiredEndTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 RequiredEndTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NotificationCreationDate_vc' 
 NotificationCreationDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 NotificationCreationDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'NotificationCreationTime_vc' 
 NotificationCreationTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 NotificationCreationTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MalfunctionStartDate_vc' 
 MalfunctionStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 MalfunctionStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MalfunctionStartTime_vc' 
 MalfunctionStartTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 MalfunctionStartTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MalfunctionEndDate_vc' 
 MalfunctionEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 MalfunctionEndDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MalfunctionEndTime_vc' 
 MalfunctionEndTime : RAP_CP_ODATA_V2_EDM_TIME ; 
 MalfunctionEndTime_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenanceRevision_vc' 
 MaintenanceRevision : abap.char( 8 ) ; 
 MaintenanceRevision_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenanceRevisionWPS_vc' 
 MaintenanceRevisionWPS : abap.char( 8 ) ; 
 MaintenanceRevisionWPS_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenancePlannerGroup_vc' 
 MaintenancePlannerGroup : abap.char( 3 ) ; 
 MaintenancePlannerGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenancePlanningPlant_vc' 
 MaintenancePlanningPlant : abap.char( 4 ) ; 
 MaintenancePlanningPlant_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenter_vc' 
 WorkCenter : abap.char( 8 ) ; 
 WorkCenter_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WorkCenterInternalID_vc' 
 WorkCenterInternalID : abap.numc( 8 ) ; 
 WorkCenterInternalID_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenanceWorkCenterPlant_vc' 
 MaintenanceWorkCenterPlant : abap.char( 4 ) ; 
 MaintenanceWorkCenterPlant_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'SerialNumber_vc' 
 SerialNumber : abap.char( 18 ) ; 
 SerialNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Material_vc' 
 Material : abap.char( 18 ) ; 
 Material_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Equipment_vc' 
 Equipment : abap.char( 18 ) ; 
 Equipment_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'Assembly_vc' 
 Assembly : abap.char( 18 ) ; 
 Assembly_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FunctionalLocation_vc' 
 FunctionalLocation : abap.char( 30 ) ; 
 FunctionalLocation_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenancePlant_vc' 
 MaintenancePlant : abap.char( 4 ) ; 
 MaintenancePlant_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'MaintenanceObjectLocation_vc' 
 MaintenanceObjectLocation : abap.char( 10 ) ; 
 MaintenanceObjectLocation_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PlantSection_vc' 
 PlantSection : abap.char( 3 ) ; 
 PlantSection_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'LocationWorkCenter_vc' 
 LocationWorkCenter : abap.char( 8 ) ; 
 LocationWorkCenter_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CompanyCode_vc' 
 CompanyCode : abap.char( 4 ) ; 
 CompanyCode_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BusinessArea_vc' 
 BusinessArea : abap.char( 4 ) ; 
 BusinessArea_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'CostCenter_vc' 
 CostCenter : abap.char( 10 ) ; 
 CostCenter_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'WBSElement_vc' 
 WBSElement : abap.char( 100 ) ; 
 WBSElement_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ControllingArea_vc' 
 ControllingArea : abap.char( 4 ) ; 
 ControllingArea_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
