# OpsgenieSdk::BaseIncident

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**tiny_id** | **String** |  | [optional] 
**message** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**is_seen** | **BOOLEAN** |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] 
**created_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**source** | **String** |  | [optional] 
**owner** | **String** |  | [optional] 
**priority** | **String** |  | [optional] 
**responders** | [**Array&lt;Responder&gt;**](Responder.md) |  | [optional] 
**owner_team** | **String** |  | [optional] 
**extra_properties** | **Hash&lt;String, String&gt;** | Map of key-value pairs to use as custom properties of the incident | [optional] 


