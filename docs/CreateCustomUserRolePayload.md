# OpsgenieSdk::CreateCustomUserRolePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of custom user role | 
**extended_role** | **String** | Custom role. Must not be one of the defined values (i.e. \&quot;user\&quot;, \&quot;observer\&quot;, \&quot;stakeholder\&quot;) | [optional] 
**granted_rights** | **Array&lt;String&gt;** | Rights granted to the custom user role. | [optional] 
**disallowed_rights** | **Array&lt;String&gt;** | Rights disallowed for the custom user role. | [optional] 


