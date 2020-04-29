# OpsgenieSdk::CustomUserRoleApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_custom_user_role**](CustomUserRoleApi.md#create_custom_user_role) | **POST** /v2/roles | Create Custom User Role
[**delete_custom_user_role**](CustomUserRoleApi.md#delete_custom_user_role) | **DELETE** /v2/roles/{identifier} | Delete Custom User Role
[**get_custom_user_role**](CustomUserRoleApi.md#get_custom_user_role) | **GET** /v2/roles/{identifier} | Get Custom User Role
[**list_custom_user_roles**](CustomUserRoleApi.md#list_custom_user_roles) | **GET** /v2/roles | List Custom User Roles
[**update_custom_user_role**](CustomUserRoleApi.md#update_custom_user_role) | **PUT** /v2/roles/{identifier} | Update Custom User Role


# **create_custom_user_role**
> SuccessResponse create_custom_user_role(body)

Create Custom User Role

Creates a new custom user role

### Example
```ruby
# load the gem
require 'opsgenie_sdk'
# setup authorization
OpsgenieSdk.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpsgenieSdk::CustomUserRoleApi.new

body = OpsgenieSdk::CreateCustomUserRolePayload.new # CreateCustomUserRolePayload | Request payload of created custom user role


begin
  #Create Custom User Role
  result = api_instance.create_custom_user_role(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling CustomUserRoleApi->create_custom_user_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateCustomUserRolePayload**](CreateCustomUserRolePayload.md)| Request payload of created custom user role | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_custom_user_role**
> SuccessResponse delete_custom_user_role(identifier, opts)

Delete Custom User Role

Deletes a custom user role using role 'id' or 'name'

### Example
```ruby
# load the gem
require 'opsgenie_sdk'
# setup authorization
OpsgenieSdk.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpsgenieSdk::CustomUserRoleApi.new

identifier = 'identifier_example' # String | Identifier of custom user role which could be user role 'id' or 'name'

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Delete Custom User Role
  result = api_instance.delete_custom_user_role(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling CustomUserRoleApi->delete_custom_user_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of custom user role which could be user role &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_custom_user_role**
> GetCustomUserRoleResponse get_custom_user_role(identifier, opts)

Get Custom User Role

Returns custom user role with given 'id' or 'name'

### Example
```ruby
# load the gem
require 'opsgenie_sdk'
# setup authorization
OpsgenieSdk.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpsgenieSdk::CustomUserRoleApi.new

identifier = 'identifier_example' # String | Identifier of custom user role which could be user role 'id' or 'name'

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Get Custom User Role
  result = api_instance.get_custom_user_role(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling CustomUserRoleApi->get_custom_user_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of custom user role which could be user role &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetCustomUserRoleResponse**](GetCustomUserRoleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_custom_user_roles**
> ListCustomUserRolesResponse list_custom_user_roles

List Custom User Roles

Returns list of custom user roles

### Example
```ruby
# load the gem
require 'opsgenie_sdk'
# setup authorization
OpsgenieSdk.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpsgenieSdk::CustomUserRoleApi.new

begin
  #List Custom User Roles
  result = api_instance.list_custom_user_roles
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling CustomUserRoleApi->list_custom_user_roles: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListCustomUserRolesResponse**](ListCustomUserRolesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_custom_user_role**
> SuccessResponse update_custom_user_role(identifier, opts)

Update Custom User Role

Updates the custom user role using role 'id' or 'name'

### Example
```ruby
# load the gem
require 'opsgenie_sdk'
# setup authorization
OpsgenieSdk.configure do |config|
  # Configure API key authorization: GenieKey
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpsgenieSdk::CustomUserRoleApi.new

identifier = 'identifier_example' # String | Identifier of custom user role which could be user role 'id' or 'name'

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
  body: OpsgenieSdk::UpdateCustomUserRolePayload.new # UpdateCustomUserRolePayload | Request payload of update custom user role
}

begin
  #Update Custom User Role
  result = api_instance.update_custom_user_role(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling CustomUserRoleApi->update_custom_user_role: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of custom user role which could be user role &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]
 **body** | [**UpdateCustomUserRolePayload**](UpdateCustomUserRolePayload.md)| Request payload of update custom user role | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



