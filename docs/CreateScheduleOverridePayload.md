# OpsgenieSdk::CreateScheduleOverridePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | A user defined identifier for the override | [optional] 
**user** | [**Recipient**](Recipient.md) | The user object who will take on call responsibility or reserved word none | 
**start_date** | **DateTime** | Time for override starting | 
**end_date** | **DateTime** | Time for override ending | 
**rotations** | [**Array&lt;ScheduleOverrideRotation&gt;**](ScheduleOverrideRotation.md) | Identifier (id or name) of rotations that override will apply. When it&#39;s set, only specified schedule rotations will be overridden | [optional] 


