# OpsgenieSdk::EscalationApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_escalation**](EscalationApi.md#create_escalation) | **POST** /v2/escalations | Create Escalation
[**delete_escalation**](EscalationApi.md#delete_escalation) | **DELETE** /v2/escalations/{identifier} | Delete Escalation
[**get_escalation**](EscalationApi.md#get_escalation) | **GET** /v2/escalations/{identifier} | Get Escalation
[**list_escalations**](EscalationApi.md#list_escalations) | **GET** /v2/escalations | List Escalations
[**update_escalation**](EscalationApi.md#update_escalation) | **PATCH** /v2/escalations/{identifier} | Update Escalation (Partial)


# **create_escalation**
> SuccessResponse create_escalation(body)

Create Escalation

Creates a new escalation

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

api_instance = OpsgenieSdk::EscalationApi.new

body = OpsgenieSdk::CreateEscalationPayload.new # CreateEscalationPayload | Request payload of created escalation


begin
  #Create Escalation
  result = api_instance.create_escalation(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling EscalationApi->create_escalation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEscalationPayload**](CreateEscalationPayload.md)| Request payload of created escalation | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_escalation**
> SuccessResponse delete_escalation(identifier, opts)

Delete Escalation

Deletes an escalation using escalation 'id' or 'name'

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

api_instance = OpsgenieSdk::EscalationApi.new

identifier = 'identifier_example' # String | Identifier of escalation which could be escalation 'id' or 'name'

opts = { 
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Delete Escalation
  result = api_instance.delete_escalation(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling EscalationApi->delete_escalation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_escalation**
> GetEscalationResponse get_escalation(identifier, opts)

Get Escalation

Returns escalation with given 'id' or 'name'

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

api_instance = OpsgenieSdk::EscalationApi.new

identifier = 'identifier_example' # String | Identifier of escalation which could be escalation 'id' or 'name'

opts = { 
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Get Escalation
  result = api_instance.get_escalation(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling EscalationApi->get_escalation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetEscalationResponse**](GetEscalationResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_escalations**
> ListEscalationsResponse list_escalations

List Escalations

Returns list of escalations

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

api_instance = OpsgenieSdk::EscalationApi.new

begin
  #List Escalations
  result = api_instance.list_escalations
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling EscalationApi->list_escalations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListEscalationsResponse**](ListEscalationsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_escalation**
> SuccessResponse update_escalation(identifier, opts)

Update Escalation (Partial)

Updates the escalation using escalation 'id' or 'name'

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

api_instance = OpsgenieSdk::EscalationApi.new

identifier = 'identifier_example' # String | Identifier of escalation which could be escalation 'id' or 'name'

opts = { 
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
  body: OpsgenieSdk::UpdateEscalationPayload.new # UpdateEscalationPayload | Request payload of update escalation
}

begin
  #Update Escalation (Partial)
  result = api_instance.update_escalation(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling EscalationApi->update_escalation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of escalation which could be escalation &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]
 **body** | [**UpdateEscalationPayload**](UpdateEscalationPayload.md)| Request payload of update escalation | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



