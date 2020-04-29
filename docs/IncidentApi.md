# OpsgenieSdk::IncidentApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**close_incident**](IncidentApi.md#close_incident) | **POST** /v1/incidents/{identifier}/close | Close Incident
[**create_incident**](IncidentApi.md#create_incident) | **POST** /v1/incidents/create | Create Incident
[**delete_incident**](IncidentApi.md#delete_incident) | **DELETE** /v1/incidents/{identifier} | Delete Incident
[**get_incident**](IncidentApi.md#get_incident) | **GET** /v1/incidents/{identifier} | Get Incident
[**get_incident_request_status**](IncidentApi.md#get_incident_request_status) | **GET** /v1/incidents/requests/{requestId} | Get Request Status of Incident
[**list_incidents**](IncidentApi.md#list_incidents) | **GET** /v1/incidents/ | List incidents


# **close_incident**
> SuccessResponse close_incident(identifier, opts)

Close Incident

Closes incident with given identifier

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

api_instance = OpsgenieSdk::IncidentApi.new

identifier = 'identifier_example' # String | Identifier of incident which could be incident id or tiny id

opts = { 
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'tiny. Default is id'
  body: OpsgenieSdk::CloseIncidentPayload.new # CloseIncidentPayload | Request payload of closing incident action
}

begin
  #Close Incident
  result = api_instance.close_incident(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IncidentApi->close_incident: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of incident which could be incident id or tiny id | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39; | [optional] [default to id]
 **body** | [**CloseIncidentPayload**](CloseIncidentPayload.md)| Request payload of closing incident action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_incident**
> SuccessResponse create_incident(body)

Create Incident

Creates a new incident

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

api_instance = OpsgenieSdk::IncidentApi.new

body = OpsgenieSdk::CreateIncidentPayload.new # CreateIncidentPayload | Request payload of created incident


begin
  #Create Incident
  result = api_instance.create_incident(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IncidentApi->create_incident: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateIncidentPayload**](CreateIncidentPayload.md)| Request payload of created incident | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_incident**
> SuccessResponse delete_incident(identifier, opts)

Delete Incident

Deletes an incident using incident id or the tiny id

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

api_instance = OpsgenieSdk::IncidentApi.new

identifier = 'identifier_example' # String | Identifier of incident which could be incident id or tiny id

opts = { 
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'tiny. Default is id'
}

begin
  #Delete Incident
  result = api_instance.delete_incident(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IncidentApi->delete_incident: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of incident which could be incident id or tiny id | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_incident**
> GetIncidentResponse get_incident(identifier, opts)

Get Incident

Returns incident with given id, tiny id or alias

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

api_instance = OpsgenieSdk::IncidentApi.new

identifier = 'identifier_example' # String | Identifier of incident which could be incident id or tiny id

opts = { 
  identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id' or 'tiny. Default is id'
}

begin
  #Get Incident
  result = api_instance.get_incident(identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IncidentApi->get_incident: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of incident which could be incident id or tiny id | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39; or &#39;tiny. Default is id&#39; | [optional] [default to id]

### Return type

[**GetIncidentResponse**](GetIncidentResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_incident_request_status**
> GetIncidentRequestStatusResponse get_incident_request_status(request_id)

Get Request Status of Incident

Used to track the status and incident details (if any) of the request whose identifier is given

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

api_instance = OpsgenieSdk::IncidentApi.new

request_id = 'request_id_example' # String | Universally unique identifier of the questioned request


begin
  #Get Request Status of Incident
  result = api_instance.get_incident_request_status(request_id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IncidentApi->get_incident_request_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Universally unique identifier of the questioned request | 

### Return type

[**GetIncidentRequestStatusResponse**](GetIncidentRequestStatusResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_incidents**
> ListIncidentsResponse list_incidents(query, opts)

List incidents

Return list of incidents

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

api_instance = OpsgenieSdk::IncidentApi.new

query = 'query_example' # String | Search query to apply while filtering the incidents.

opts = { 
  offset: 56, # Integer | Start index of the result set (to apply pagination). Minimum value (and also default value) is 0.
  limit: 56, # Integer | Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
  sort: 'createdAt', # String | Name of the field that result set will be sorted by
  order: 'desc' # String | Sorting order of the result set
}

begin
  #List incidents
  result = api_instance.list_incidents(query, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling IncidentApi->list_incidents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Search query to apply while filtering the incidents. | 
 **offset** | **Integer**| Start index of the result set (to apply pagination). Minimum value (and also default value) is 0. | [optional] 
 **limit** | **Integer**| Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100 | [optional] 
 **sort** | **String**| Name of the field that result set will be sorted by | [optional] [default to createdAt]
 **order** | **String**| Sorting order of the result set | [optional] [default to desc]

### Return type

[**ListIncidentsResponse**](ListIncidentsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



