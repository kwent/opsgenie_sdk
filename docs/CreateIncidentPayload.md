# OpsgenieSdk::CreateIncidentPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Message of the incident | [optional] 
**description** | **String** | Description field of the incident that is generally used to provide a detailed information about the incident. | [optional] 
**responders** | [**Array&lt;Recipient&gt;**](Recipient.md) | Responders that the incident will be routed to send notifications | [optional] 
**tags** | **Array&lt;String&gt;** | Tags of the incident. | [optional] 
**details** | **Hash&lt;String, String&gt;** | Map of key-value pairs to use as custom properties of the incident | [optional] 
**priority** | **String** | Priority level of the incident | [optional] 
**note** | **String** | Additional note that will be added while creating the incident | [optional] 
**service_id** | **String** | Service on which incident will be created. | [optional] 
**status_page_entry** | [**Hash&lt;String, StatusPageEntry&gt;**](StatusPageEntry.md) | Status page entry fields. If this field is leaved blank, message and description of incident will be used for title and detail respectively. | [optional] 
**notify_stakeholders** | **BOOLEAN** | Indicate whether stakeholders are notified or not. Default value is false. | [optional] 


