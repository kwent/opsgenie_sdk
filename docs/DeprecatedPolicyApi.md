# OpsgenieSdk::DeprecatedPolicyApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_alert_policy_order**](DeprecatedPolicyApi.md#change_alert_policy_order) | **POST** /v1/policies/{policyId}/change-order | Change Alert Policy Order
[**create_alert_policy**](DeprecatedPolicyApi.md#create_alert_policy) | **POST** /v1/policies | Create Alert Policy
[**delete_alert_policy**](DeprecatedPolicyApi.md#delete_alert_policy) | **DELETE** /v1/policies/{policyId} | Delete Alert Policy
[**disable_alert_policy**](DeprecatedPolicyApi.md#disable_alert_policy) | **POST** /v1/policies/{policyId}/disable | Disable Alert Policy
[**enable_alert_policy**](DeprecatedPolicyApi.md#enable_alert_policy) | **POST** /v1/policies/{policyId}/enable | Enable Alert Policy
[**get_alert_policy**](DeprecatedPolicyApi.md#get_alert_policy) | **GET** /v1/policies/{policyId} | Get Alert Policy
[**list_alert_policies**](DeprecatedPolicyApi.md#list_alert_policies) | **GET** /v1/policies | List Alert Policies
[**update_alert_policy**](DeprecatedPolicyApi.md#update_alert_policy) | **PUT** /v1/policies/{policyId} | Update Alert Policy


# **change_alert_policy_order**
> SuccessResponse change_alert_policy_order(policy_id, body)

Change Alert Policy Order

Change execution order of the alert policy with given id

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

body = OpsgenieSdk::DeprecatedChangeAlertPolicyOrderPayload.new # DeprecatedChangeAlertPolicyOrderPayload | Change order payload


begin
  #Change Alert Policy Order
  result = api_instance.change_alert_policy_order(policy_id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->change_alert_policy_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **body** | [**DeprecatedChangeAlertPolicyOrderPayload**](DeprecatedChangeAlertPolicyOrderPayload.md)| Change order payload | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_alert_policy**
> DeprecatedCreateAlertPolicyResponse create_alert_policy(body)

Create Alert Policy

Creates a new alert policy

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

body = OpsgenieSdk::DeprecatedAlertPolicy.new # DeprecatedAlertPolicy | Payload of created alert policy


begin
  #Create Alert Policy
  result = api_instance.create_alert_policy(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->create_alert_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeprecatedAlertPolicy**](DeprecatedAlertPolicy.md)| Payload of created alert policy | 

### Return type

[**DeprecatedCreateAlertPolicyResponse**](DeprecatedCreateAlertPolicyResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_alert_policy**
> SuccessResponse delete_alert_policy(policy_id, )

Delete Alert Policy

Delete alert policy with given id

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy


begin
  #Delete Alert Policy
  result = api_instance.delete_alert_policy(policy_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->delete_alert_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_alert_policy**
> SuccessResponse disable_alert_policy(policy_id, )

Disable Alert Policy

Disable the alert policy with given id

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy


begin
  #Disable Alert Policy
  result = api_instance.disable_alert_policy(policy_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->disable_alert_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_alert_policy**
> SuccessResponse enable_alert_policy(policy_id, )

Enable Alert Policy

Enable the alert policy with given id

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy


begin
  #Enable Alert Policy
  result = api_instance.enable_alert_policy(policy_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->enable_alert_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alert_policy**
> DeprecatedGetAlertPolicyResponse get_alert_policy(policy_id, )

Get Alert Policy

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy


begin
  #Get Alert Policy
  result = api_instance.get_alert_policy(policy_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->get_alert_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 

### Return type

[**DeprecatedGetAlertPolicyResponse**](DeprecatedGetAlertPolicyResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_alert_policies**
> DeprecatedListAlertPoliciesResponse list_alert_policies

List Alert Policies

Returns list alert policies

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

begin
  #List Alert Policies
  result = api_instance.list_alert_policies
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->list_alert_policies: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DeprecatedListAlertPoliciesResponse**](DeprecatedListAlertPoliciesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_alert_policy**
> SuccessResponse update_alert_policy(policy_id, body)

Update Alert Policy

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

api_instance = OpsgenieSdk::DeprecatedPolicyApi.new

policy_id = 'policy_id_example' # String | Id of the requested policy

body = OpsgenieSdk::DeprecatedAlertPolicy.new # DeprecatedAlertPolicy | Payload of updated alert policy


begin
  #Update Alert Policy
  result = api_instance.update_alert_policy(policy_id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling DeprecatedPolicyApi->update_alert_policy: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| Id of the requested policy | 
 **body** | [**DeprecatedAlertPolicy**](DeprecatedAlertPolicy.md)| Payload of updated alert policy | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



