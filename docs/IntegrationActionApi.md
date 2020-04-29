# OpsgenieSdk::IntegrationActionApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration_action**](IntegrationActionApi.md#create_integration_action) | **POST** /v2/integrations/{id}/actions | Create Integration Action
[**list_integration_actions**](IntegrationActionApi.md#list_integration_actions) | **GET** /v2/integrations/{id}/actions | List Integration Actions
[**update_integration_actions**](IntegrationActionApi.md#update_integration_actions) | **PUT** /v2/integrations/{id}/actions | Update Integration Actions


# **create_integration_action**
> CreateIntegrationActionsResponse create_integration_action(id, body)

Create Integration Action

Creates integration actions of given integration id

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

api_instance = OpsgenieSdk::IntegrationActionApi.new

id = 'id_example' # String | Integration Id

body = OpsgenieSdk::BaseIntegrationAction.new # BaseIntegrationAction | Request payload to create integration action


begin
  #Create Integration Action
  result = api_instance.create_integration_action(id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationActionApi->create_integration_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 
 **body** | [**BaseIntegrationAction**](BaseIntegrationAction.md)| Request payload to create integration action | 

### Return type

[**CreateIntegrationActionsResponse**](CreateIntegrationActionsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_integration_actions**
> ListIntegrationActionsResponse list_integration_actions(id, )

List Integration Actions

List integration actions of given integration id

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

api_instance = OpsgenieSdk::IntegrationActionApi.new

id = 'id_example' # String | Integration Id


begin
  #List Integration Actions
  result = api_instance.list_integration_actions(id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationActionApi->list_integration_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 

### Return type

[**ListIntegrationActionsResponse**](ListIntegrationActionsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_integration_actions**
> UpdateIntegrationActionsResponse update_integration_actions(id, body)

Update Integration Actions

Updates integration actions of given integration id

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

api_instance = OpsgenieSdk::IntegrationActionApi.new

id = 'id_example' # String | Integration Id

body = OpsgenieSdk::ActionCategorized.new # ActionCategorized | Request payload to update integration actions


begin
  #Update Integration Actions
  result = api_instance.update_integration_actions(id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationActionApi->update_integration_actions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 
 **body** | [**ActionCategorized**](ActionCategorized.md)| Request payload to update integration actions | 

### Return type

[**UpdateIntegrationActionsResponse**](UpdateIntegrationActionsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



