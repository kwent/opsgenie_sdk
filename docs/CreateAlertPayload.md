# OpsgenieSdk::CreateAlertPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | **String** | Display name of the request owner | [optional] 
**note** | **String** | Additional note that will be added while creating the alert | [optional] 
**source** | **String** | Source field of the alert. Default value is IP address of the incoming request | [optional] 
**message** | **String** | Message of the alert | 
**_alias** | **String** | Client-defined identifier of the alert, that is also the key element of alert deduplication. | [optional] 
**description** | **String** | Description field of the alert that is generally used to provide a detailed information about the alert. | [optional] 
**responders** | [**Array&lt;Recipient&gt;**](Recipient.md) | Responders that the alert will be routed to send notifications | [optional] 
**visible_to** | [**Array&lt;Recipient&gt;**](Recipient.md) | Teams and users that the alert will become visible to without sending any notification | [optional] 
**actions** | **Array&lt;String&gt;** | Custom actions that will be available for the alert | [optional] 
**tags** | **Array&lt;String&gt;** | Tags of the alert | [optional] 
**details** | **Hash&lt;String, String&gt;** | Map of key-value pairs to use as custom properties of the alert | [optional] 
**entity** | **String** | Entity field of the alert that is generally used to specify which domain alert is related to | [optional] 
**priority** | **String** | Priority level of the alert | [optional] 


