# OpsgenieSdk::ScheduleRotationApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_schedule_rotation**](ScheduleRotationApi.md#create_schedule_rotation) | **POST** /v2/schedules/{identifier}/rotations | Create Schedule Rotation
[**delete_schedule_rotation**](ScheduleRotationApi.md#delete_schedule_rotation) | **DELETE** /v2/schedules/{identifier}/rotations/{id} | Delete Schedule Rotation
[**get_schedule_rotation**](ScheduleRotationApi.md#get_schedule_rotation) | **GET** /v2/schedules/{identifier}/rotations/{id} | Get Schedule Rotation
[**list_schedule_rotations**](ScheduleRotationApi.md#list_schedule_rotations) | **GET** /v2/schedules/{identifier}/rotations | List Schedule Rotations
[**update_schedule_rotation**](ScheduleRotationApi.md#update_schedule_rotation) | **PATCH** /v2/schedules/{identifier}/rotations/{id} | Update Schedule Rotation (Partial)


# **create_schedule_rotation**
> SuccessResponse create_schedule_rotation(identifierbody, opts)

Create Schedule Rotation

Creates a new schedule rotation

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

api_instance = OpsgenieSdk::ScheduleRotationApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

body = OpsgenieSdk::CreateScheduleRotationPayload.new # CreateScheduleRotationPayload | Request payload of created schedule rotation

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Create Schedule Rotation
  result = api_instance.create_schedule_rotation(identifierbody, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleRotationApi->create_schedule_rotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **body** | [**CreateScheduleRotationPayload**](CreateScheduleRotationPayload.md)| Request payload of created schedule rotation | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_schedule_rotation**
> SuccessResponse delete_schedule_rotation(identifierid, , opts)

Delete Schedule Rotation

Delete schedule rotation with given identifier

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

api_instance = OpsgenieSdk::ScheduleRotationApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

id = 'id_example' # String | Identifier of schedule rotation

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Delete Schedule Rotation
  result = api_instance.delete_schedule_rotation(identifierid, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleRotationApi->delete_schedule_rotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **id** | **String**| Identifier of schedule rotation | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_schedule_rotation**
> GetScheduleRotationResponse get_schedule_rotation(identifierid, , opts)

Get Schedule Rotation

Returns schedule rotation with given id

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

api_instance = OpsgenieSdk::ScheduleRotationApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

id = 'id_example' # String | Identifier of schedule rotation

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Get Schedule Rotation
  result = api_instance.get_schedule_rotation(identifierid, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleRotationApi->get_schedule_rotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **id** | **String**| Identifier of schedule rotation | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetScheduleRotationResponse**](GetScheduleRotationResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_schedule_rotations**
> ListScheduleRotationsResponse list_schedule_rotations(identifier, opts)

List Schedule Rotations

Returns list of schedule rotations

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

api_instance = OpsgenieSdk::ScheduleRotationApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #List Schedule Rotations
  result = api_instance.list_schedule_rotations(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleRotationApi->list_schedule_rotations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**ListScheduleRotationsResponse**](ListScheduleRotationsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_schedule_rotation**
> SuccessResponse update_schedule_rotation(identifierid, body, opts)

Update Schedule Rotation (Partial)

Update schedule rotation with given id

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

api_instance = OpsgenieSdk::ScheduleRotationApi.new

identifier = 'identifier_example' # String | Identifier of schedule which could be id or name

id = 'id_example' # String | Identifier of schedule rotation

body = OpsgenieSdk::UpdateScheduleRotationPayload.new # UpdateScheduleRotationPayload | Request payload of update schedule rotation action

opts = { 
  schedule_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'name'
}

begin
  #Update Schedule Rotation (Partial)
  result = api_instance.update_schedule_rotation(identifierid, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling ScheduleRotationApi->update_schedule_rotation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of schedule which could be id or name | 
 **id** | **String**| Identifier of schedule rotation | 
 **body** | [**UpdateScheduleRotationPayload**](UpdateScheduleRotationPayload.md)| Request payload of update schedule rotation action | 
 **schedule_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



