# OpsgenieSdk::AlertApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledge_alert**](AlertApi.md#acknowledge_alert) | **POST** /v2/alerts/{identifier}/acknowledge | Acknowledge Alert
[**add_attachment**](AlertApi.md#add_attachment) | **POST** /v2/alerts/{identifier}/attachments | Add Alert Attachment
[**add_details**](AlertApi.md#add_details) | **POST** /v2/alerts/{identifier}/details | Add Details
[**add_note**](AlertApi.md#add_note) | **POST** /v2/alerts/{identifier}/notes | Add Note
[**add_responder**](AlertApi.md#add_responder) | **POST** /v2/alerts/{identifier}/responders | Add Responder
[**add_tags**](AlertApi.md#add_tags) | **POST** /v2/alerts/{identifier}/tags | Add Tags
[**add_team**](AlertApi.md#add_team) | **POST** /v2/alerts/{identifier}/teams | Add Team
[**assign_alert**](AlertApi.md#assign_alert) | **POST** /v2/alerts/{identifier}/assign | Assign Alert
[**close_alert**](AlertApi.md#close_alert) | **POST** /v2/alerts/{identifier}/close | Close Alert
[**count_alerts**](AlertApi.md#count_alerts) | **GET** /v2/alerts/count | Count Alerts
[**create_alert**](AlertApi.md#create_alert) | **POST** /v2/alerts | Create Alert
[**create_saved_searches**](AlertApi.md#create_saved_searches) | **POST** /v2/alerts/saved-searches | Create Saved Search
[**delete_alert**](AlertApi.md#delete_alert) | **DELETE** /v2/alerts/{identifier} | Delete Alert
[**delete_saved_search**](AlertApi.md#delete_saved_search) | **DELETE** /v2/alerts/saved-searches/{identifier} | Delete Saved Search
[**escalate_alert**](AlertApi.md#escalate_alert) | **POST** /v2/alerts/{identifier}/escalate | Escalate Alert
[**execute_custom_alert_action**](AlertApi.md#execute_custom_alert_action) | **POST** /v2/alerts/{identifier}/actions/{actionName} | Custom Alert Action
[**get_alert**](AlertApi.md#get_alert) | **GET** /v2/alerts/{identifier} | Get Alert
[**get_attachment**](AlertApi.md#get_attachment) | **GET** /v2/alerts/{identifier}/attachments/{attachmentId} | Get Alert Attachment
[**get_request_status**](AlertApi.md#get_request_status) | **GET** /v2/alerts/requests/{requestId} | Get Request Status of Alert
[**get_saved_search**](AlertApi.md#get_saved_search) | **GET** /v2/alerts/saved-searches/{identifier} | Get Saved Search
[**list_alerts**](AlertApi.md#list_alerts) | **GET** /v2/alerts | List Alerts
[**list_attachments**](AlertApi.md#list_attachments) | **GET** /v2/alerts/{identifier}/attachments | List Alert Attachments
[**list_logs**](AlertApi.md#list_logs) | **GET** /v2/alerts/{identifier}/logs | List Alert Logs
[**list_notes**](AlertApi.md#list_notes) | **GET** /v2/alerts/{identifier}/notes | List Alert Notes
[**list_recipients**](AlertApi.md#list_recipients) | **GET** /v2/alerts/{identifier}/recipients | List Alert Recipients
[**list_saved_searches**](AlertApi.md#list_saved_searches) | **GET** /v2/alerts/saved-searches | Lists Saved Searches
[**remove_attachment**](AlertApi.md#remove_attachment) | **DELETE** /v2/alerts/{identifier}/attachments/{attachmentId} | Remove Alert Attachment
[**remove_details**](AlertApi.md#remove_details) | **DELETE** /v2/alerts/{identifier}/details | Remove Details
[**remove_tags**](AlertApi.md#remove_tags) | **DELETE** /v2/alerts/{identifier}/tags | Remove Tags
[**snooze_alert**](AlertApi.md#snooze_alert) | **POST** /v2/alerts/{identifier}/snooze | Snooze Alert
[**un_acknowledge_alert**](AlertApi.md#un_acknowledge_alert) | **POST** /v2/alerts/{identifier}/unacknowledge | UnAcknowledge Alert
[**update_alert_description**](AlertApi.md#update_alert_description) | **PUT** /v2/alerts/{identifier}/description | Update Alert Description
[**update_alert_message**](AlertApi.md#update_alert_message) | **PUT** /v2/alerts/{identifier}/message | Update Alert Message
[**update_alert_priority**](AlertApi.md#update_alert_priority) | **PUT** /v2/alerts/{identifier}/priority | Update Alert Priority
[**update_saved_search**](AlertApi.md#update_saved_search) | **PATCH** /v2/alerts/saved-searches/{identifier} | Update Saved Search


# **acknowledge_alert**
> SuccessResponse acknowledge_alert(identifier, , opts)

Acknowledge Alert

Acknowledges alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  body: OpsgenieSdk::AcknowledgeAlertPayload.new # AcknowledgeAlertPayload | Request payload of acknowledging alert action
}

begin
  #Acknowledge Alert
  result = api_instance.acknowledge_alert(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->acknowledge_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **body** | [**AcknowledgeAlertPayload**](AcknowledgeAlertPayload.md)| Request payload of acknowledging alert action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_attachment**
> SuccessResponse add_attachment(identifier, file, opts)

Add Alert Attachment

Add Alert Attachment to related alert

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

file = File.new('/path/to/file.txt') # File | Attachment file to be uploaded

opts = { 
  alert_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  user: 'user_example', # String | Display name of the request owner
  index_file: 'index_file_example' # String | Name of html file which will be shown when attachment clicked on UI
}

begin
  #Add Alert Attachment
  result = api_instance.add_attachment(identifier, file, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->add_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **file** | **File**| Attachment file to be uploaded | 
 **alert_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **user** | **String**| Display name of the request owner | [optional] 
 **index_file** | **String**| Name of html file which will be shown when attachment clicked on UI | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **add_details**
> SuccessResponse add_details(identifier, body, opts)

Add Details

Add details to the alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::AddDetailsToAlertPayload.new # AddDetailsToAlertPayload | Request payload of adding alert details action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Add Details
  result = api_instance.add_details(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->add_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**AddDetailsToAlertPayload**](AddDetailsToAlertPayload.md)| Request payload of adding alert details action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_note**
> SuccessResponse add_note(identifier, body, opts)

Add Note

Adds note to alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::AddNoteToAlertPayload.new # AddNoteToAlertPayload | Request payload of adding note to alert action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Add Note
  result = api_instance.add_note(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->add_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**AddNoteToAlertPayload**](AddNoteToAlertPayload.md)| Request payload of adding note to alert action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_responder**
> SuccessResponse add_responder(identifier, body, opts)

Add Responder

Add responder to alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::AddResponderToAlertPayload.new # AddResponderToAlertPayload | Request payload of adding responder to alert action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Add Responder
  result = api_instance.add_responder(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->add_responder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**AddResponderToAlertPayload**](AddResponderToAlertPayload.md)| Request payload of adding responder to alert action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_tags**
> SuccessResponse add_tags(identifier, body, opts)

Add Tags

Add tags to the alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::AddTagsToAlertPayload.new # AddTagsToAlertPayload | Request payload of creating alert tags action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Add Tags
  result = api_instance.add_tags(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->add_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**AddTagsToAlertPayload**](AddTagsToAlertPayload.md)| Request payload of creating alert tags action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **add_team**
> SuccessResponse add_team(identifier, body, opts)

Add Team

Add team to alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::AddTeamToAlertPayload.new # AddTeamToAlertPayload | Request payload of adding team to alert action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Add Team
  result = api_instance.add_team(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->add_team: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**AddTeamToAlertPayload**](AddTeamToAlertPayload.md)| Request payload of adding team to alert action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **assign_alert**
> SuccessResponse assign_alert(identifier, body, opts)

Assign Alert

Assign alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::AssignAlertPayload.new # AssignAlertPayload | Request payload of assigning alert action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Assign Alert
  result = api_instance.assign_alert(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->assign_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**AssignAlertPayload**](AssignAlertPayload.md)| Request payload of assigning alert action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **close_alert**
> SuccessResponse close_alert(identifier, , opts)

Close Alert

Closes alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  body: OpsgenieSdk::CloseAlertPayload.new # CloseAlertPayload | Request payload of closing alert action
}

begin
  #Close Alert
  result = api_instance.close_alert(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->close_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **body** | [**CloseAlertPayload**](CloseAlertPayload.md)| Request payload of closing alert action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **count_alerts**
> GetCountAlertsResponse count_alerts(opts)

Count Alerts

Count alerts in Opsgenie

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

api_instance = OpsgenieSdk::AlertApi.new

opts = { 
  query: 'query_example', # String | Search query to apply while filtering the alerts
  search_identifier: 'search_identifier_example', # String | Identifier of the saved search query to apply while filtering the alerts
  search_identifier_type: 'id' # String | Identifier type of the saved search query. Possible values are id and name. Default value is id. If searchIdentifier is not provided, this value is ignored.
}

begin
  #Count Alerts
  result = api_instance.count_alerts(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->count_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Search query to apply while filtering the alerts | [optional] 
 **search_identifier** | **String**| Identifier of the saved search query to apply while filtering the alerts | [optional] 
 **search_identifier_type** | **String**| Identifier type of the saved search query. Possible values are id and name. Default value is id. If searchIdentifier is not provided, this value is ignored. | [optional] [default to id]

### Return type

[**GetCountAlertsResponse**](GetCountAlertsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_alert**
> SuccessResponse create_alert(body)

Create Alert

Creates a new alert

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

api_instance = OpsgenieSdk::AlertApi.new

body = OpsgenieSdk::CreateAlertPayload.new # CreateAlertPayload | Request payload of created alert


begin
  #Create Alert
  result = api_instance.create_alert(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->create_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateAlertPayload**](CreateAlertPayload.md)| Request payload of created alert | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_saved_searches**
> CreateSavedSearchResponse create_saved_searches(body)

Create Saved Search

Create saved search with given fields

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

api_instance = OpsgenieSdk::AlertApi.new

body = OpsgenieSdk::CreateSavedSearchPayload.new # CreateSavedSearchPayload | Request payload of creating saved search


begin
  #Create Saved Search
  result = api_instance.create_saved_searches(body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->create_saved_searches: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateSavedSearchPayload**](CreateSavedSearchPayload.md)| Request payload of creating saved search | 

### Return type

[**CreateSavedSearchResponse**](CreateSavedSearchResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_alert**
> SuccessResponse delete_alert(identifier, , opts)

Delete Alert

Deletes an alert using alert id, tiny id or alias

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  user: 'user_example', # String | Display name of the request owner
  source: 'source_example' # String | Display name of the request source
}

begin
  #Delete Alert
  result = api_instance.delete_alert(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->delete_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **user** | **String**| Display name of the request owner | [optional] 
 **source** | **String**| Display name of the request source | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_saved_search**
> SuccessResponse delete_saved_search(identifier, , opts)

Delete Saved Search

Deletes saved search using given search identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of the saved search which could be 'id' or 'name'

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', or 'name'
}

begin
  #Delete Saved Search
  result = api_instance.delete_saved_search(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->delete_saved_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the saved search which could be &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, or &#39;name&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **escalate_alert**
> SuccessResponse escalate_alert(identifier, body, opts)

Escalate Alert

Escalate alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::EscalateAlertToNextPayload.new # EscalateAlertToNextPayload | Request payload of escalating alert action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Escalate Alert
  result = api_instance.escalate_alert(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->escalate_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**EscalateAlertToNextPayload**](EscalateAlertToNextPayload.md)| Request payload of escalating alert action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **execute_custom_alert_action**
> SuccessResponse execute_custom_alert_action(identifier, action_name, opts)

Custom Alert Action

Custom actions for the alert

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

action_name = 'action_name_example' # String | Name of the action to execute

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  body: OpsgenieSdk::ExecuteCustomAlertActionPayload.new # ExecuteCustomAlertActionPayload | Request payload of executing custom alert action
}

begin
  #Custom Alert Action
  result = api_instance.execute_custom_alert_action(identifier, action_name, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->execute_custom_alert_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **action_name** | **String**| Name of the action to execute | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **body** | [**ExecuteCustomAlertActionPayload**](ExecuteCustomAlertActionPayload.md)| Request payload of executing custom alert action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_alert**
> GetAlertResponse get_alert(identifier, , opts)

Get Alert

Returns alert with given id, tiny id or alias

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Get Alert
  result = api_instance.get_alert(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->get_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**GetAlertResponse**](GetAlertResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_attachment**
> GetAlertAttachmentResponse get_attachment(identifier, attachment_id, opts)

Get Alert Attachment

Get alert attachment name and url for the given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

attachment_id = 789 # Integer | Identifier of alert attachment

opts = { 
  alert_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Get Alert Attachment
  result = api_instance.get_attachment(identifier, attachment_id, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->get_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **attachment_id** | **Integer**| Identifier of alert attachment | 
 **alert_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**GetAlertAttachmentResponse**](GetAlertAttachmentResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_request_status**
> GetRequestStatusResponse get_request_status(request_id)

Get Request Status of Alert

Used to track the status and alert details (if any) of the request whose identifier is given

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

api_instance = OpsgenieSdk::AlertApi.new

request_id = 'request_id_example' # String | Universally unique identifier of the questioned request


begin
  #Get Request Status of Alert
  result = api_instance.get_request_status(request_id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->get_request_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_id** | **String**| Universally unique identifier of the questioned request | 

### Return type

[**GetRequestStatusResponse**](GetRequestStatusResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_saved_search**
> GetSavedSearchResponse get_saved_search(identifier, , opts)

Get Saved Search

Get saved search for the given search identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of the saved search which could be 'id' or 'name'

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', or 'name'
}

begin
  #Get Saved Search
  result = api_instance.get_saved_search(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->get_saved_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the saved search which could be &#39;id&#39; or &#39;name&#39; | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetSavedSearchResponse**](GetSavedSearchResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_alerts**
> ListAlertsResponse list_alerts(opts)

List Alerts

Returns list of alerts

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

api_instance = OpsgenieSdk::AlertApi.new

opts = { 
  query: 'query_example', # String | Search query to apply while filtering the alerts
  search_identifier: 'search_identifier_example', # String | Identifier of the saved search query to apply while filtering the alerts
  search_identifier_type: 'id', # String | Identifier type of the saved search query. Possible values are 'id', or 'name'
  offset: 56, # Integer | Start index of the result set (to apply pagination). Minimum value (and also default value) is 0
  limit: 56, # Integer | Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
  sort: 'createdAt', # String | Name of the field that result set will be sorted by
  order: 'desc' # String | Sorting order of the result set
}

begin
  #List Alerts
  result = api_instance.list_alerts(opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->list_alerts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Search query to apply while filtering the alerts | [optional] 
 **search_identifier** | **String**| Identifier of the saved search query to apply while filtering the alerts | [optional] 
 **search_identifier_type** | **String**| Identifier type of the saved search query. Possible values are &#39;id&#39;, or &#39;name&#39; | [optional] [default to id]
 **offset** | **Integer**| Start index of the result set (to apply pagination). Minimum value (and also default value) is 0 | [optional] 
 **limit** | **Integer**| Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100 | [optional] 
 **sort** | **String**| Name of the field that result set will be sorted by | [optional] [default to createdAt]
 **order** | **String**| Sorting order of the result set | [optional] [default to desc]

### Return type

[**ListAlertsResponse**](ListAlertsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_attachments**
> ListAlertAttachmentsResponse list_attachments(identifier, , opts)

List Alert Attachments

List alert attachment names and urls for related alert

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  alert_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #List Alert Attachments
  result = api_instance.list_attachments(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->list_attachments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **alert_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**ListAlertAttachmentsResponse**](ListAlertAttachmentsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_logs**
> ListAlertLogsResponse list_logs(identifier, , opts)

List Alert Logs

List alert logs for the given alert identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  offset: 'offset_example', # String | Starting value of the offset property
  direction: 'next', # String | Page direction to apply for the given offset with 'next' and 'prev'
  limit: 56, # Integer | Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
  order: 'desc', # String | Sorting order of the result set
}

begin
  #List Alert Logs
  result = api_instance.list_logs(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->list_logs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **offset** | **String**| Starting value of the offset property | [optional] 
 **direction** | **String**| Page direction to apply for the given offset with &#39;next&#39; and &#39;prev&#39; | [optional] [default to next]
 **limit** | **Integer**| Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100 | [optional] 
 **order** | **String**| Sorting order of the result set | [optional] [default to desc]

### Return type

[**ListAlertLogsResponse**](ListAlertLogsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_notes**
> ListAlertNotesResponse list_notes(identifier, , opts)

List Alert Notes

List alert notes for the given alert identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  offset: 'offset_example', # String | Starting value of the offset property
  direction: 'next', # String | Page direction to apply for the given offset with 'next' and 'prev'
  limit: 56, # Integer | Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100
  order: 'desc', # String | Sorting order of the result set
}

begin
  #List Alert Notes
  result = api_instance.list_notes(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->list_notes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **offset** | **String**| Starting value of the offset property | [optional] 
 **direction** | **String**| Page direction to apply for the given offset with &#39;next&#39; and &#39;prev&#39; | [optional] [default to next]
 **limit** | **Integer**| Maximum number of items to provide in the result. Must be a positive integer value. Default value is 20 and maximum value is 100 | [optional] 
 **order** | **String**| Sorting order of the result set | [optional] [default to desc]

### Return type

[**ListAlertNotesResponse**](ListAlertNotesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_recipients**
> ListAlertRecipientsResponse list_recipients(identifier, , opts)

List Alert Recipients

List alert recipients for the given alert identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #List Alert Recipients
  result = api_instance.list_recipients(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->list_recipients: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**ListAlertRecipientsResponse**](ListAlertRecipientsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_saved_searches**
> ListSavedSearchesResponse list_saved_searches

Lists Saved Searches

List all saved searches

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

api_instance = OpsgenieSdk::AlertApi.new

begin
  #Lists Saved Searches
  result = api_instance.list_saved_searches
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->list_saved_searches: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListSavedSearchesResponse**](ListSavedSearchesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_attachment**
> SuccessResponse remove_attachment(identifier, attachment_id, opts)

Remove Alert Attachment

Remove alert attachment for the given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

attachment_id = 789 # Integer | Identifier of alert attachment

opts = { 
  alert_identifier_type: 'id', # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  user: 'user_example', # String | Display name of the request owner
}

begin
  #Remove Alert Attachment
  result = api_instance.remove_attachment(identifier, attachment_id, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->remove_attachment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **attachment_id** | **Integer**| Identifier of alert attachment | 
 **alert_identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **user** | **String**| Display name of the request owner | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_details**
> SuccessResponse remove_details(identifier, keys, opts)

Remove Details

Remove details of the alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

keys = ['keys_example'] # Array<String> | Comma separated list of keys to remove from the custom properties of the alert (e.g. 'key1,key2')

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  user: 'user_example', # String | Display name of the request owner
  note: 'note_example', # String | Additional alert note to add
  source: 'source_example' # String | Display name of the request source
}

begin
  #Remove Details
  result = api_instance.remove_details(identifier, keys, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->remove_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **keys** | [**Array&lt;String&gt;**](String.md)| Comma separated list of keys to remove from the custom properties of the alert (e.g. &#39;key1,key2&#39;) | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **user** | **String**| Display name of the request owner | [optional] 
 **note** | **String**| Additional alert note to add | [optional] 
 **source** | **String**| Display name of the request source | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **remove_tags**
> SuccessResponse remove_tags(identifier, tags, opts)

Remove Tags

Remove tags of the alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

tags = ['tags_example'] # Array<String> | Tags field of the given alert as comma seperated values (e.g. 'tag1, tag2')

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  user: 'user_example', # String | Display name of the request owner
  note: 'note_example', # String | Additional alert note to add
  source: 'source_example' # String | Display name of the request source
}

begin
  #Remove Tags
  result = api_instance.remove_tags(identifier, tags, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->remove_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **tags** | [**Array&lt;String&gt;**](String.md)| Tags field of the given alert as comma seperated values (e.g. &#39;tag1, tag2&#39;) | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **user** | **String**| Display name of the request owner | [optional] 
 **note** | **String**| Additional alert note to add | [optional] 
 **source** | **String**| Display name of the request source | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **snooze_alert**
> SuccessResponse snooze_alert(identifier, body, opts)

Snooze Alert

Snooze alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::SnoozeAlertPayload.new # SnoozeAlertPayload | Request payload of snoozing alert action

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Snooze Alert
  result = api_instance.snooze_alert(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->snooze_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**SnoozeAlertPayload**](SnoozeAlertPayload.md)| Request payload of snoozing alert action | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **un_acknowledge_alert**
> SuccessResponse un_acknowledge_alert(identifier, , opts)

UnAcknowledge Alert

UnAcknowledge alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
  body: OpsgenieSdk::UnAcknowledgeAlertPayload.new # UnAcknowledgeAlertPayload | Request payload of unacknowledging alert action
}

begin
  #UnAcknowledge Alert
  result = api_instance.un_acknowledge_alert(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->un_acknowledge_alert: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]
 **body** | [**UnAcknowledgeAlertPayload**](UnAcknowledgeAlertPayload.md)| Request payload of unacknowledging alert action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_alert_description**
> SuccessResponse update_alert_description(identifier, body, opts)

Update Alert Description

Update the description of the alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::UpdateAlertDescriptionPayload.new # UpdateAlertDescriptionPayload | Request payload of update alert description

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Update Alert Description
  result = api_instance.update_alert_description(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->update_alert_description: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**UpdateAlertDescriptionPayload**](UpdateAlertDescriptionPayload.md)| Request payload of update alert description | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_alert_message**
> SuccessResponse update_alert_message(identifier, body, opts)

Update Alert Message

Update the message of the alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::UpdateAlertMessagePayload.new # UpdateAlertMessagePayload | Request payload of update alert message

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Update Alert Message
  result = api_instance.update_alert_message(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->update_alert_message: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**UpdateAlertMessagePayload**](UpdateAlertMessagePayload.md)| Request payload of update alert message | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_alert_priority**
> SuccessResponse update_alert_priority(identifier, body, opts)

Update Alert Priority

Update the priority of the alert with given identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of alert which could be alert id, tiny id or alert alias

body = OpsgenieSdk::UpdateAlertPriorityPayload.new # UpdateAlertPriorityPayload | Request payload of update alert priority

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', 'alias' or 'tiny'
}

begin
  #Update Alert Priority
  result = api_instance.update_alert_priority(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->update_alert_priority: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of alert which could be alert id, tiny id or alert alias | 
 **body** | [**UpdateAlertPriorityPayload**](UpdateAlertPriorityPayload.md)| Request payload of update alert priority | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, &#39;alias&#39; or &#39;tiny&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_saved_search**
> GetSavedSearchResponse update_saved_search(identifier, body, opts)

Update Saved Search

Update saved search for the given search identifier

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

api_instance = OpsgenieSdk::AlertApi.new

identifier = 'identifier_example' # String | Identifier of the saved search which could be 'id' or 'name'

body = OpsgenieSdk::UpdateSavedSearchPayload.new # UpdateSavedSearchPayload | Request payload of updating saved search

opts = { 
  identifier_type: 'id' # String | Type of the identifier that is provided as an in-line parameter. Possible values are 'id', or 'name'
}

begin
  #Update Saved Search
  result = api_instance.update_saved_search(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling AlertApi->update_saved_search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the saved search which could be &#39;id&#39; or &#39;name&#39; | 
 **body** | [**UpdateSavedSearchPayload**](UpdateSavedSearchPayload.md)| Request payload of updating saved search | 
 **identifier_type** | **String**| Type of the identifier that is provided as an in-line parameter. Possible values are &#39;id&#39;, or &#39;name&#39; | [optional] [default to id]

### Return type

[**GetSavedSearchResponse**](GetSavedSearchResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



