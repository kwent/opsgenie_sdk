# OpsgenieSdk::ScheduleOverrideApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_schedule_override**](ScheduleOverrideApi.md#create_schedule_override) | **POST** /v2/schedules/{identifier}/overrides | Create Schedule Override
[**delete_schedule_override**](ScheduleOverrideApi.md#delete_schedule_override) | **DELETE** /v2/schedules/{identifier}/overrides/{alias} | Delete Schedule Override
[**get_schedule_override**](ScheduleOverrideApi.md#get_schedule_override) | **GET** /v2/schedules/{identifier}/overrides/{alias} | Get Schedule Override
[**list_schedule_override**](ScheduleOverrideApi.md#list_schedule_override) | **GET** /v2/schedules/{identifier}/overrides | List Schedule Overrides
[**update_schedule_override**](ScheduleOverrideApi.md#update_schedule_override) | **PUT** /v2/schedules/{identifier}/overrides/{alias} | Update Schedule Override


# **create_schedule_override**
> CreateScheduleOverrideResponse create_schedule_override(identifierbody, opts)

Create Schedule Override

Creates a schedule override for the specified user and schedule

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

api_instance = OpsgenieSdk::ScheduleOverrideApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

body = OpsgenieSdk::CreateScheduleOverridePayload.new # CreateScheduleOverridePayload | Request payload of created schedule override

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Create Schedule Override
  result = api_instance.create_schedule_override(identifierbody, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleOverrideApi->create_schedule_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **body** | [**CreateScheduleOverridePayload**](CreateScheduleOverridePayload.md)| Request payload of created schedule override | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**CreateScheduleOverrideResponse**](CreateScheduleOverrideResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_schedule_override**
> SuccessResponse delete_schedule_override(identifier_alias, opts)

Delete Schedule Override

Delete schedule override with given alias

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

api_instance = OpsgenieSdk::ScheduleOverrideApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

_alias = '_alias_example' # String | Alias of the schedule override

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Delete Schedule Override
  result = api_instance.delete_schedule_override(identifier_alias, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleOverrideApi->delete_schedule_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **_alias** | **String**| Alias of the schedule override | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_schedule_override**
> GetScheduleOverrideResponse get_schedule_override(identifier_alias, opts)

Get Schedule Override

Gets schedule override details with given alias

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

api_instance = OpsgenieSdk::ScheduleOverrideApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

_alias = '_alias_example' # String | Alias of the schedule override

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Get Schedule Override
  result = api_instance.get_schedule_override(identifier_alias, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleOverrideApi->get_schedule_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **_alias** | **String**| Alias of the schedule override | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetScheduleOverrideResponse**](GetScheduleOverrideResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_schedule_override**
> ListScheduleOverrideResponse list_schedule_override(identifier, opts)

List Schedule Overrides

Returns list of schedule overrides

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

api_instance = OpsgenieSdk::ScheduleOverrideApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #List Schedule Overrides
  result = api_instance.list_schedule_override(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleOverrideApi->list_schedule_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**ListScheduleOverrideResponse**](ListScheduleOverrideResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_schedule_override**
> UpdateScheduleOverrideResponse update_schedule_override(identifier_aliasbody, opts)

Update Schedule Override

Update schedule override with given alias

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

api_instance = OpsgenieSdk::ScheduleOverrideApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

_alias = '_alias_example' # String | Alias of the schedule override

body = OpsgenieSdk::UpdateScheduleOverridePayload.new # UpdateScheduleOverridePayload | Request payload of update schedule override

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Update Schedule Override
  result = api_instance.update_schedule_override(identifier_aliasbody, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleOverrideApi->update_schedule_override: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **_alias** | **String**| Alias of the schedule override | 
 **body** | [**UpdateScheduleOverridePayload**](UpdateScheduleOverridePayload.md)| Request payload of update schedule override | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**UpdateScheduleOverrideResponse**](UpdateScheduleOverrideResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



