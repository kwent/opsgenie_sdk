# OpsgenieSdk::UpdateUserPayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **String** | E-mail address of the user | [optional] 
**full_name** | **String** | Name of the user | [optional] 
**role** | [**UserRole**](UserRole.md) | Role of user. It may be one of owner, admin, user or the name of a custom role you&#39;ve created. | [optional] 
**skype_username** | **String** | Skype username of the user | [optional] 
**time_zone** | **String** | Timezone of the user. If not set, timezone of the customer will be used instead. | [optional] 
**locale** | **String** | Location information of the user. If not set, locale of the customer will be used instead. | [optional] 
**user_address** | [**UserAddress**](UserAddress.md) | Address of the user | [optional] 
**tags** | **Array&lt;String&gt;** | List of labels attached to the user. You can label users to differentiate them from the rest. For example, you can add ITManager tag to differentiate people with this role from others. | [optional] 
**details** | **Hash&lt;String, Array&lt;String&gt;&gt;** | Set of user defined properties. | [optional] 
**invitation_disabled** | **BOOLEAN** | Invitation email will not be sent if set to true. Default value is false | [optional] 


