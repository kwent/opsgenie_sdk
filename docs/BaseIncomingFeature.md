# OpsgenieSdk::BaseIncomingFeature

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


