# OpsgenieSdk::NotificationRuleStepApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_notification_rule_step**](NotificationRuleStepApi.md#create_notification_rule_step) | **POST** /v2/users/{identifier}/notification-rules/{ruleId}/steps | Create Notification Rule Step
[**delete_notification_rule_step**](NotificationRuleStepApi.md#delete_notification_rule_step) | **DELETE** /v2/users/{identifier}/notification-rules/{ruleId}/steps/{id} | Delete Notification Rule Step
[**disable_notification_rule_step**](NotificationRuleStepApi.md#disable_notification_rule_step) | **POST** /v2/users/{identifier}/notification-rules/{ruleId}/steps/{id}/disable | Disable Notification Rule Step
[**enable_notification_rule_step**](NotificationRuleStepApi.md#enable_notification_rule_step) | **POST** /v2/users/{identifier}/notification-rules/{ruleId}/steps/{id}/enable | Enable Notification Rule Step
[**get_notification_rule_step**](NotificationRuleStepApi.md#get_notification_rule_step) | **GET** /v2/users/{identifier}/notification-rules/{ruleId}/steps/{id} | Get Notification Rule Step
[**list_notification_rule_steps**](NotificationRuleStepApi.md#list_notification_rule_steps) | **GET** /v2/users/{identifier}/notification-rules/{ruleId}/steps | List Notification Rule Steps
[**update_notification_rule_step**](NotificationRuleStepApi.md#update_notification_rule_step) | **PATCH** /v2/users/{identifier}/notification-rules/{ruleId}/steps/{id} | Update Notification Rule Step (Partial)


# **create_notification_rule_step**
> SuccessResponse create_notification_rule_step(identifier, rule_id, body)

Create Notification Rule Step

Creates a new notification rule step

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

api_instance = OpsgenieSdk::NotificationRuleStepApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

body = OpsgenieSdk::CreateNotificationRuleStepPayload.new # CreateNotificationRuleStepPayload | Request payload to create notification rule step


begin
  #Create Notification Rule Step
  result = api_instance.create_notification_rule_step(identifier, rule_id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleStepApi->create_notification_rule_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **body** | [**CreateNotificationRuleStepPayload**](CreateNotificationRuleStepPayload.md)| Request payload to create notification rule step | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_notification_rule_step**
> SuccessResponse delete_notification_rule_step(identifier, rule_id, id)

Delete Notification Rule Step

Deletes a notification rule step using user identifier, rule id, notification rule step id

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

api_instance = OpsgenieSdk::NotificationRuleStepApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

id = 'id_example' # String | Id of the rule step will be changed.


begin
  #Delete Notification Rule Step
  result = api_instance.delete_notification_rule_step(identifier, rule_id, id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleStepApi->delete_notification_rule_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **id** | **String**| Id of the rule step will be changed. | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_notification_rule_step**
> SuccessResponse disable_notification_rule_step(identifier, rule_id, id)

Disable Notification Rule Step

Disables a new notification rule step

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

api_instance = OpsgenieSdk::NotificationRuleStepApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

id = 'id_example' # String | Id of the rule step will be changed.


begin
  #Disable Notification Rule Step
  result = api_instance.disable_notification_rule_step(identifier, rule_id, id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleStepApi->disable_notification_rule_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **id** | **String**| Id of the rule step will be changed. | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_notification_rule_step**
> SuccessResponse enable_notification_rule_step(identifier, rule_id, id)

Enable Notification Rule Step

Enables a new notification rule step

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

api_instance = OpsgenieSdk::NotificationRuleStepApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

id = 'id_example' # String | Id of the rule step will be changed.


begin
  #Enable Notification Rule Step
  result = api_instance.enable_notification_rule_step(identifier, rule_id, id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleStepApi->enable_notification_rule_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **id** | **String**| Id of the rule step will be changed. | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_notification_rule_step**
> GetNotificationRuleStepResponse get_notification_rule_step(identifier, rule_id, id)

Get Notification Rule Step

Returns notification rule step with given user identifier and rule id

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

api_instance = OpsgenieSdk::NotificationRuleStepApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

id = 'id_example' # String | Id of the rule step will be changed.


begin
  #Get Notification Rule Step
  result = api_instance.get_notification_rule_step(identifier, rule_id, id)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleStepApi->get_notification_rule_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **id** | **String**| Id of the rule step will be changed. | 

### Return type

[**GetNotificationRuleStepResponse**](GetNotificationRuleStepResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_notification_rule_steps**
> ListNotificationRuleStepsResponse list_notification_rule_steps(identifier, rule_id, )

List Notification Rule Steps

Returns list of notification rule steps

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

api_instance = OpsgenieSdk::NotificationRuleStepApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.


begin
  #List Notification Rule Steps
  result = api_instance.list_notification_rule_steps(identifier, rule_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleStepApi->list_notification_rule_steps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 

### Return type

[**ListNotificationRuleStepsResponse**](ListNotificationRuleStepsResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_notification_rule_step**
> SuccessResponse update_notification_rule_step(identifier, rule_id, id, opts)

Update Notification Rule Step (Partial)

Update a notification rule step with given user identifier, rule id, and notification rule step id

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

api_instance = OpsgenieSdk::NotificationRuleStepApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

id = 'id_example' # String | Id of the rule step will be changed.

opts = { 
  body: OpsgenieSdk::UpdateNotificationRuleStepPayload.new # UpdateNotificationRuleStepPayload | Request payload of update schedule action
}

begin
  #Update Notification Rule Step (Partial)
  result = api_instance.update_notification_rule_step(identifier, rule_id, id, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleStepApi->update_notification_rule_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **id** | **String**| Id of the rule step will be changed. | 
 **body** | [**UpdateNotificationRuleStepPayload**](UpdateNotificationRuleStepPayload.md)| Request payload of update schedule action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



