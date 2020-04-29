# OpsgenieSdk::ForwardingRuleApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_forwarding_rule**](ForwardingRuleApi.md#create_forwarding_rule) | **POST** /v2/forwarding-rules | Create Forwarding Rule
[**delete_forwarding_rule**](ForwardingRuleApi.md#delete_forwarding_rule) | **DELETE** /v2/forwarding-rules/{identifier} | Delete Forwarding Rule
[**get_forwarding_rule**](ForwardingRuleApi.md#get_forwarding_rule) | **GET** /v2/forwarding-rules/{identifier} | Get Forwarding Rule
[**list_forwarding_rules**](ForwardingRuleApi.md#list_forwarding_rules) | **GET** /v2/forwarding-rules | List Forwarding Rules
[**update_forwarding_rule**](ForwardingRuleApi.md#update_forwarding_rule) | **PUT** /v2/forwarding-rules/{identifier} | Update Forwarding Rule


# **create_forwarding_rule**
> CreateForwardingRuleResponse create_forwarding_rule(body)

Create Forwarding Rule

Creates a new forwarding rule

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

api_instance = OpsgenieSdk::ForwardingRuleApi.new

body = OpsgenieSdk::CreateForwardingRulePayload.new # CreateForwardingRulePayload | Request payload to created forwarding rule


begin
  #Create Forwarding Rule
  result = api_instance.create_forwarding_rule(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ForwardingRuleApi->create_forwarding_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateForwardingRulePayload**](CreateForwardingRulePayload.md)| Request payload to created forwarding rule | 

### Return type

[**CreateForwardingRuleResponse**](CreateForwardingRuleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_forwarding_rule**
> SuccessResponse delete_forwarding_rule(identifier, opts)

Delete Forwarding Rule

Deletes forwarding rule with given identifier

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

api_instance = OpsgenieSdk::ForwardingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the forwarding rule which could be forwarding rule 'id' or 'alias'

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'alias'
}

begin
  #Delete Forwarding Rule
  result = api_instance.delete_forwarding_rule(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ForwardingRuleApi->delete_forwarding_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the forwarding rule which could be forwarding rule &#39;id&#39; or &#39;alias&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;alias&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_forwarding_rule**
> GetForwardingRuleResponse get_forwarding_rule(identifier, opts)

Get Forwarding Rule

Returns forwarding rule with given id or alias

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

api_instance = OpsgenieSdk::ForwardingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the forwarding rule which could be forwarding rule 'id' or 'alias'

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'alias'
}

begin
  #Get Forwarding Rule
  result = api_instance.get_forwarding_rule(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ForwardingRuleApi->get_forwarding_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the forwarding rule which could be forwarding rule &#39;id&#39; or &#39;alias&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;alias&#39; | [optional] [default to id]

### Return type

[**GetForwardingRuleResponse**](GetForwardingRuleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_forwarding_rules**
> ListForwardingRulesResponse list_forwarding_rules

List Forwarding Rules

Returns list of forwarding rules

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

api_instance = OpsgenieSdk::ForwardingRuleApi.new

begin
  #List Forwarding Rules
  result = api_instance.list_forwarding_rules
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ForwardingRuleApi->list_forwarding_rules: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListForwardingRulesResponse**](ListForwardingRulesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_forwarding_rule**
> SuccessResponse update_forwarding_rule(identifierbody, opts)

Update Forwarding Rule

Update forwarding rule with given rule id or alias

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

api_instance = OpsgenieSdk::ForwardingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the forwarding rule which could be forwarding rule 'id' or 'alias'

body = OpsgenieSdk::UpdateForwardingRulePayload.new # UpdateForwardingRulePayload | Request payload of update forwarding rule action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'alias'
}

begin
  #Update Forwarding Rule
  result = api_instance.update_forwarding_rule(identifierbody, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ForwardingRuleApi->update_forwarding_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the forwarding rule which could be forwarding rule &#39;id&#39; or &#39;alias&#39; | 
 **body** | [**UpdateForwardingRulePayload**](UpdateForwardingRulePayload.md)| Request payload of update forwarding rule action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;alias&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



