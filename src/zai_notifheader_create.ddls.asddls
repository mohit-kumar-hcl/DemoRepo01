define root abstract entity ZAI_NotifHeader_Create
{
  @EndUserText.label       : 'Notification Text'
  NotificationText         : abap.char( 40 );
  @EndUserText.label       : 'Notification Type'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_PMNotifTypeVH', element: 'NotificationType' } }]
  NotificationType         : abap.char( 2 );
  @EndUserText.label       : 'Priority'
  @UI.hidden               : true
  MaintPriority            : abap.char( 1 );
  @EndUserText.label       : 'Maintenance Planner Group'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_MAINTPLNRGRPSTDVH', element: 'MaintenancePlannerGroup' } }]
  MaintenancePlannerGroup  : abap.char( 3 );
  @EndUserText.label       : 'Maintenance Planning Plant'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_PlanningPlantVH', element: 'MaintenancePlanningPlant' } }]
  MaintenancePlanningPlant : abap.char( 4 );
  @EndUserText.label       : 'Plant'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_PLANTSTDVH', element: 'Plant' } }]
  Plant                    : abap.char( 4 );
  @EndUserText.label       : 'Work Center'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_WorkCenterVH', element: 'WorkCenter' } }]
  WorkCenter               : abap.char( 8 );
  @EndUserText.label       : 'Reported By User'
  ReportedByUser           : abap.char( 12 );
  @EndUserText.label       : 'Required Start Date'
  StartDate                : rap_cp_odata_v2_edm_datetime;
  @EndUserText.label       : 'Required Start Time'
  StartTime                : rap_cp_odata_v2_edm_time;
  @EndUserText.label       : 'Required End Date'
  EndDate                  : rap_cp_odata_v2_edm_datetime;
  @EndUserText.label       : 'Required End Time'
  EndTime                  : rap_cp_odata_v2_edm_time;
  @EndUserText.label       : 'Equipment'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_EquipmentVH', element: 'Equipment' } }]
  Equipment                : abap.char( 18 );
  @EndUserText.label       : 'Functional Location'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_FunctionLocationVH', element: 'FunctionalLocation' } }]
  FunctionalLocation       : abap.char( 30 );
}
