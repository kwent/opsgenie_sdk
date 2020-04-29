# OpsgenieSdk::DeskIntegration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**suppress_notifications** | **BOOLEAN** | If enabled, notifications that come from alerts will be suppressed. Defaults to false | [optional] 
**ignore_teams_from_payload** | **BOOLEAN** | If enabled, the integration will ignore teams sent in request payloads. Defaults to false | [optional] 
**ignore_recipients_from_payload** | **BOOLEAN** | If enabled, the integration will ignore recipients sent in request payloads. Defaults to false | [optional] 
**recipients** | [**Array&lt;Recipient&gt;**](Recipient.md) | Optional user, schedule, teams or escalation names to calculate which users will receive the notifications of the alert. Recipients which are exceeding the limit are ignored | [optional] 
**is_advanced** | **BOOLEAN** |  | [optional] 
**ignore_responders_from_payload** | **BOOLEAN** |  | [optional] 
**ignore_tags_from_payload** | **BOOLEAN** |  | [optional] 
**ignore_extra_properties_from_payload** | **BOOLEAN** |  | [optional] 
**responders** | [**Array&lt;Recipient&gt;**](Recipient.md) |  | [optional] 
**priority** | **String** |  | [optional] 
**custom_priority** | **String** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**extra_properties** | **Hash&lt;String, String&gt;** |  | [optional] 
**assigned_team** | [**TeamMeta**](TeamMeta.md) |  | [optional] 
**feature_type** | **String** |  | [optional] 
**allow_configuration_access** | **BOOLEAN** | This parameter is for allowing or restricting the configuration access. If configuration access is restricted, the integration will be limited to Alert API requests and sending heartbeats. Defaults to false | [optional] 
**allow_read_access** | **BOOLEAN** |  | [optional] 
**allow_write_access** | **BOOLEAN** | This parameter is for configuring the read-only access of integration. If the integration is limited to read-only access, the integration will not be authorized to perform any create, update or delete action within any domain. Defaults to true | [optional] 
**allow_delete_access** | **BOOLEAN** |  | [optional] 
**type** | **String** | Type of the integration. (For instance, \&quot;API\&quot; for API Integration) | 
**id** | **String** |  | [optional] 
**name** | **String** | Name of the integration. Name must be unique for each integration | 
**enabled** | **BOOLEAN** | This parameter is for specifying whether the integration will be enabled or not | [optional] 
**owner_team** | [**TeamMeta**](TeamMeta.md) |  | [optional] 
**is_global** | **BOOLEAN** |  | [optional] 
**_read_only** | **Array&lt;String&gt;** |  | [optional] 


