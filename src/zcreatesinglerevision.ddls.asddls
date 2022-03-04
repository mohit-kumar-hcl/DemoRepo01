/********** GENERATED on 02/08/2022 at 10:39:31 by CB9980001722**************/
@OData.entitySet.name: 'CreateSingleRevision'
@OData.entityType.name: 'CreateSingleRevisionType'
define root abstract entity ZCREATESINGLEREVISION
{
  key PlanningPlant        : abap.char( 4 );
  key RevisionNo           : abap.char( 8 );
      @OData.property.valueControl: 'RevisionType_vc'
      RevisionType         : abap.char( 2 );
      RevisionType_vc      : rap_cp_odata_value_control;
      @OData.property.valueControl: 'RevisionText_vc'
      RevisionText         : abap.char( 40 );
      RevisionText_vc      : rap_cp_odata_value_control;
      @OData.property.valueControl: 'WorkCenter_vc'
      WorkCenter           : abap.char( 8 );
      WorkCenter_vc        : rap_cp_odata_value_control;
      @OData.property.valueControl: 'WorkCenterPlant_vc'
      WorkCenterPlant      : abap.char( 4 );
      WorkCenterPlant_vc   : rap_cp_odata_value_control;
      @OData.property.valueControl: 'RevisionStartDate_vc'
      RevisionStartDate    : rap_cp_odata_v2_edm_datetime;
      RevisionStartDate_vc : rap_cp_odata_value_control;
      @OData.property.valueControl: 'RevisionStartTime_vc'
      RevisionStartTime    : rap_cp_odata_v2_edm_time;
      RevisionStartTime_vc : rap_cp_odata_value_control;
      @OData.property.valueControl: 'RevisionEndDate_vc'
      RevisionEndDate      : rap_cp_odata_v2_edm_datetime;
      RevisionEndDate_vc   : rap_cp_odata_value_control;
      @OData.property.valueControl: 'RevisionEndTime_vc'
      RevisionEndTime      : rap_cp_odata_v2_edm_time;
      RevisionEndTime_vc   : rap_cp_odata_value_control;
      @OData.property.valueControl: 'Equipment_vc'
      Equipment            : abap.char( 18 );
      Equipment_vc         : rap_cp_odata_value_control;
      @OData.property.valueControl: 'FunctionLocation_vc'
      FunctionLocation     : abap.char( 30 );
      FunctionLocation_vc  : rap_cp_odata_value_control;

}
