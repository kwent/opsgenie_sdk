# OpsgenieSdk::PolicyApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_policy_order**](PolicyApi.md#change_policy_order) | **POST** /v2/policies/{policyId}/change-order | Change Policy Order
[**create_policy**](PolicyApi.md#create_policy) | **POST** /v2/policies | Create Policy
[**delete_policy**](PolicyApi.md#delete_policy) | **DELETE** /v2/policies/{policyId} | Delete Policy
[**disable_policy**](PolicyApi.md#disable_policy) | **POST** /v2/policies/{policyId}/disable | Disable Policy
[**enable_policy**](PolicyApi.md#enable_policy) | **POST** /v2/policies/{policyId}/enable | Enable Policy
[**get_policy**](PolicyApi.md#get_policy) | **GET** /v2/policies/{policyId} | Get Policy
[**list_alert_policies**](PolicyApi.md#list_alert_policies) | **GET** /v2/policies/alert | List Alert Policies
[**list_notification_policies**](PolicyApi.md#list_notification_policies) | **GET** /v2/policies/notification | List Notification Policies
[**update_policy**](PolicyApi.md#update_policy) | **PUT** /v2/policies/{policyId} | Update Policy


# **change_policy_order**
> SuccessResponse change_policy_order(policy_id, body, opts)

Change Policy Order

Change execution order of the policy with given id

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

api_instance = OpsgenieSdk::PolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

body = OpsgenieSdk::ChangePolicyOrderPayload.new # ChangePolicyOrderPayload | Change order payload

opts = { 
  team_id: 'team_id_example' # String | TeamId of policy created if it belongs to a team
}

begin
  #Change Policy Order
  result = api_instance.change_policy_order(policy_id, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->change_policy_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **body** | [**ChangePolicyOrderPayload**](ChangePolicyOrderPayload.md)| Change order payload | 
 **team_id** | **String**| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_policy**
> CreatePolicyResponse create_policy(body, opts)

Create Policy

Creates a new policy

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

api_instance = OpsgenieSdk::PolicyApi.new

body = OpsgenieSdk::Policy.new # Policy | Payload of created policy

opts = { 
  team_id: nil # Object | TeamId of policy created if it belongs to a team
}

begin
  #Create Policy
  result = api_instance.create_policy(body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->create_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Policy**](Policy.md)| Payload of created policy | 
 **team_id** | [**Object**](.md)| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**CreatePolicyResponse**](CreatePolicyResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_policy**
> SuccessResponse delete_policy(policy_id, , opts)

Delete Policy

Delete policy with given id

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

api_instance = OpsgenieSdk::PolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

opts = { 
  team_id: nil # Object | TeamId of policy created if it belongs to a team
}

begin
  #Delete Policy
  result = api_instance.delete_policy(policy_id, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->delete_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **team_id** | [**Object**](.md)| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_policy**
> SuccessResponse disable_policy(policy_id, , opts)

Disable Policy

Disable the policy with given id

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

api_instance = OpsgenieSdk::PolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

opts = { 
  team_id: nil # Object | TeamId of policy created if it belongs to a team
}

begin
  #Disable Policy
  result = api_instance.disable_policy(policy_id, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->disable_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **team_id** | [**Object**](.md)| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_policy**
> SuccessResponse enable_policy(policy_id, , opts)

Enable Policy

Enable the policy with given id

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

api_instance = OpsgenieSdk::PolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

opts = { 
  team_id: nil # Object | TeamId of policy created if it belongs to a team
}

begin
  #Enable Policy
  result = api_instance.enable_policy(policy_id, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->enable_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **team_id** | [**Object**](.md)| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_policy**
> GetPolicyResponse get_policy(policy_id, , opts)

Get Policy

Used to get details of a single policy with id

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

api_instance = OpsgenieSdk::PolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

opts = { 
  team_id: nil # Object | TeamId of policy created if it belongs to a team
}

begin
  #Get Policy
  result = api_instance.get_policy(policy_id, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->get_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **team_id** | [**Object**](.md)| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**GetPolicyResponse**](GetPolicyResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_alert_policies**
> ListPoliciesResponse list_alert_policies(opts)

List Alert Policies

Returns the list of alert policies

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

api_instance = OpsgenieSdk::PolicyApi.new

opts = { 
  team_id: nil # Object | TeamId of policy created if it belongs to a team
}

begin
  #List Alert Policies
  result = api_instance.list_alert_policies(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->list_alert_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | [**Object**](.md)| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**ListPoliciesResponse**](ListPoliciesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_notification_policies**
> ListPoliciesResponse list_notification_policies(opts)

List Notification Policies

Returns the list of notification policies

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

api_instance = OpsgenieSdk::PolicyApi.new

opts = { 
  team_id: nil # Object | TeamId of policy created if it belongs to a team
}

begin
  #List Notification Policies
  result = api_instance.list_notification_policies(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->list_notification_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | [**Object**](.md)| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**ListPoliciesResponse**](ListPoliciesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_policy**
> SuccessResponse update_policy(policy_id, body, opts)

Update Policy

Update alert policy with given id

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

api_instance = OpsgenieSdk::PolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

body = OpsgenieSdk::Policy.new # Policy | Payload of updated policy

opts = { 
  team_id: 'team_id_example' # String | TeamId of policy created if it belongs to a team
}

begin
  #Update Policy
  result = api_instance.update_policy(policy_id, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling PolicyApi->update_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **body** | [**Policy**](Policy.md)| Payload of updated policy | 
 **team_id** | **String**| TeamId of policy created if it belongs to a team | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



