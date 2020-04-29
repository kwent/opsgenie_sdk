# OpsgenieSdk::NotificationPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** | Name of the policy | [optional] 
**policy_description** | **String** | Description of the policy | [optional] 
**team_id** | **String** | TeamId of the policy | [optional] 
**filter** | [**Filter**](Filter.md) | Conditions specified in this field must be met for this policy to work | [optional] 
**time_restrictions** | [**TimeRestrictionInterval**](TimeRestrictionInterval.md) | Time restrictions specified in this field must be met for this policy to work | [optional] 
**enabled** | **BOOLEAN** | Activity status of the alert policy | [optional] 
**type** | **String** | Type of the policy | 
**auto_restart_action** | [**AutoRestartAction**](AutoRestartAction.md) | Auto-restart action defined for the policy. | [optional] 
**auto_close_action** | [**AutoCloseAction**](AutoCloseAction.md) | Auto-close action defined for the policy. | [optional] 
**deduplication_action** | [**DeduplicationAction**](DeduplicationAction.md) | Deduplication action defined for the policy. | [optional] 
**delay_action** | [**DelayAction**](DelayAction.md) | Delay action defined for the policy. | [optional] 
**suppress** | **BOOLEAN** | If set to true, notifications related to the matching alert will be suppressed. Default value is false. | [optional] 


