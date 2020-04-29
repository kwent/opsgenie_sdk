# OpsgenieSdk::UpdateSchedulePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the schedule | [optional] 
**description** | **String** | The description of schedule | [optional] 
**timezone** | **String** | Timezone of schedule | [optional] 
**enabled** | **BOOLEAN** | Enable/disable state of schedule | [optional] 
**owner_team** | [**TeamMeta**](TeamMeta.md) | Owner team of the schedule, consisting id and/or name of the owner team | [optional] 
**rotations** | [**Array&lt;CreateScheduleRotationPayload&gt;**](CreateScheduleRotationPayload.md) |  | [optional] 


