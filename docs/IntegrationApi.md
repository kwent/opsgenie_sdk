# OpsgenieSdk::IntegrationApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate_integration**](IntegrationApi.md#authenticate_integration) | **POST** /v2/integrations/authenticate | Authenticate Integration
[**create_integration**](IntegrationApi.md#create_integration) | **POST** /v2/integrations | Create Integration
[**delete_integration**](IntegrationApi.md#delete_integration) | **DELETE** /v2/integrations/{id} | Delete Integration
[**disable_integration**](IntegrationApi.md#disable_integration) | **POST** /v2/integrations/{id}/disable | Disable Integration
[**enable_integration**](IntegrationApi.md#enable_integration) | **POST** /v2/integrations/{id}/enable | Enable Integration
[**get_integration**](IntegrationApi.md#get_integration) | **GET** /v2/integrations/{id} | Get Integration
[**list_integrations**](IntegrationApi.md#list_integrations) | **GET** /v2/integrations | List Integrations
[**update_integration**](IntegrationApi.md#update_integration) | **PUT** /v2/integrations/{id} | Update Integration


# **authenticate_integration**
> SuccessResponse authenticate_integration(body)

Authenticate Integration

Authenticates integration with given type

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

api_instance = OpsgenieSdk::IntegrationApi.new

body = OpsgenieSdk::AuthenticateIntegrationPayload.new # AuthenticateIntegrationPayload | Request payload to authenticate integration


begin
  #Authenticate Integration
  result = api_instance.authenticate_integration(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->authenticate_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthenticateIntegrationPayload**](AuthenticateIntegrationPayload.md)| Request payload to authenticate integration | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_integration**
> CreateIntegrationResponse create_integration(body)

Create Integration

Creates a new integration

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

api_instance = OpsgenieSdk::IntegrationApi.new

body = OpsgenieSdk::Integration.new # Integration | Request payload of created integration


begin
  #Create Integration
  result = api_instance.create_integration(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->create_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Integration**](Integration.md)| Request payload of created integration | 

### Return type

[**CreateIntegrationResponse**](CreateIntegrationResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_integration**
> SuccessResponse delete_integration(id, )

Delete Integration

Delete integration with given id

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

api_instance = OpsgenieSdk::IntegrationApi.new

id = 'id_example' # String | Integration Id


begin
  #Delete Integration
  result = api_instance.delete_integration(id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->delete_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_integration**
> DisableIntegrationResponse disable_integration(id, )

Disable Integration

Disable integration with given ID

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

api_instance = OpsgenieSdk::IntegrationApi.new

id = 'id_example' # String | Integration Id


begin
  #Disable Integration
  result = api_instance.disable_integration(id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->disable_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 

### Return type

[**DisableIntegrationResponse**](DisableIntegrationResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_integration**
> EnableIntegrationResponse enable_integration(id, )

Enable Integration

Enable integration with given ID

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

api_instance = OpsgenieSdk::IntegrationApi.new

id = 'id_example' # String | Integration Id


begin
  #Enable Integration
  result = api_instance.enable_integration(id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->enable_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 

### Return type

[**EnableIntegrationResponse**](EnableIntegrationResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_integration**
> GetIntegrationResponse get_integration(id, )

Get Integration

Returns integration with given id

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

api_instance = OpsgenieSdk::IntegrationApi.new

id = 'id_example' # String | Integration Id


begin
  #Get Integration
  result = api_instance.get_integration(id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->get_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 

### Return type

[**GetIntegrationResponse**](GetIntegrationResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_integrations**
> ListIntegrationsResponse list_integrations(opts)

List Integrations

Returns list of integrations with given parameters

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

api_instance = OpsgenieSdk::IntegrationApi.new

opts = { 
  type: 'type_example', # String | Type of the integration (For instance, \"API\" for API Integration). If type parameter is given, the result will be filtered by type
  team_id: 'team_id_example', # String | The ID of the team. If the team ID parameter is given, the result will be filtered by teamId
  team_name: 'team_name_example' # String | The name of the team. If the team name parameter is given, the result will be filtered by teamName
}

begin
  #List Integrations
  result = api_instance.list_integrations(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->list_integrations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Type of the integration (For instance, \&quot;API\&quot; for API Integration). If type parameter is given, the result will be filtered by type | [optional] 
 **team_id** | **String**| The ID of the team. If the team ID parameter is given, the result will be filtered by teamId | [optional] 
 **team_name** | **String**| The name of the team. If the team name parameter is given, the result will be filtered by teamName | [optional] 

### Return type

[**ListIntegrationsResponse**](ListIntegrationsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_integration**
> UpdateIntegrationResponse update_integration(id, body)

Update Integration

Update integration with given id

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

api_instance = OpsgenieSdk::IntegrationApi.new

id = 'id_example' # String | Integration Id

body = OpsgenieSdk::Integration.new # Integration | Request payload of update integration action


begin
  #Update Integration
  result = api_instance.update_integration(id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IntegrationApi->update_integration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Integration Id | 
 **body** | [**Integration**](Integration.md)| Request payload of update integration action | 

### Return type

[**UpdateIntegrationResponse**](UpdateIntegrationResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



