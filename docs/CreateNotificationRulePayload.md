# OpsgenieSdk::CreateNotificationRulePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the notification rule | 
**action_type** | [**NotificationActionType**](NotificationActionType.md) |  | 
**criteria** | [**Filter**](Filter.md) |  | [optional] 
**notification_time** | [**Array&lt;NotifyTime&gt;**](NotifyTime.md) | List of Time Periods that notification for schedule start/end will be sent | [optional] 
**time_restriction** | [**TimeRestrictionInterval**](TimeRestrictionInterval.md) | Time interval that notification rule will work | [optional] 
**schedules** | [**Array&lt;ScheduleRecipient&gt;**](ScheduleRecipient.md) | List of schedules that notification rule will be applied when on call of that schedule starts/ends. This field is valid for Schedule Start/End rules | [optional] 
**order** | **Integer** | The order of the notification rule within the notification rules with the same action type | [optional] 
**steps** | [**Array&lt;CreateNotificationRuleStepPayload&gt;**](CreateNotificationRuleStepPayload.md) | List of steps that will be added to notification rule | [optional] 
**repeat** | [**NotificationRepeat**](NotificationRepeat.md) |  | [optional] 
**enabled** | **BOOLEAN** | Defines if notification rule will be enabled or not when it is created | 


