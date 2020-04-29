# OpsgenieSdk::AlertPolicy

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
**ignore_original_actions** | **BOOLEAN** |  | [optional] 
**ignore_original_details** | **BOOLEAN** | If set to true, policy will ignore the original details of the alert. Default value is false | [optional] 
**ignore_original_responders** | **BOOLEAN** | If set to true, policy will ignore the original responders of the alert. Default value is false | [optional] 
**ignore_original_tags** | **BOOLEAN** | If set to true, policy will ignore the original tags of the alert. Default value is false | [optional] 
**ignore_original_teams** | **BOOLEAN** | If set to true, policy will ignore the original teams of the alert. Default value is false | [optional] 
**continue** | **BOOLEAN** | Will continue with other modify policies if set to true | [optional] 
**_alias** | **String** | Alias of the alert. You can use {{alias}} to refer to the original alias. Default value is {{alias}} | [optional] 
**description** | **String** | Description of the alert. You can use {{description}} to refer to the original alert description. Default value is {{description}} | [optional] 
**entity** | **String** | Entity field of the alert. You can use {{entity}} to refer to the original entity. Default value is {{entity}} | [optional] 
**message** | **String** | Message of the alert | [optional] 
**source** | **String** | Source field of the alert. You can use {{source}} to refer to the original source. Default value is {{source}} | [optional] 
**actions** | **Array&lt;String&gt;** | Alert actions as a list of strings to add to the alerts original actions value. If ignoreOriginalActions field is set to true, this will replace the original actions. | [optional] 
**responders** | [**Array&lt;Responder&gt;**](Responder.md) | Responders to add to the alerts original responders value as a list of teams or users. If ignoreOriginalResponders field is set to true, this will replace the original responders. | [optional] 
**tags** | **Array&lt;String&gt;** | Tags to add to the alerts original tags value as a list of strings. If ignoreOriginalTags field is set to true, this will replace the original tags. | [optional] 
**details** | **Hash&lt;String, String&gt;** | Custom properties to add to the alerts original details value as a list of strings. If ignoreOriginalDetails field is set to true, this will replace the original details. | [optional] 
**priority** | **String** | Priority level of the alert | [optional] 


