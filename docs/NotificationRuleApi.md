# OpsgenieSdk::NotificationRuleApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_notification_rule_order**](NotificationRuleApi.md#change_notification_rule_order) | **POST** /v2/users/{identifier}/notification-rules/{ruleId}/change-order | Change order of Notification Rule
[**create_notification_rule**](NotificationRuleApi.md#create_notification_rule) | **POST** /v2/users/{identifier}/notification-rules | Create Notification Rule
[**delete_notification_rule**](NotificationRuleApi.md#delete_notification_rule) | **DELETE** /v2/users/{identifier}/notification-rules/{ruleId} | Delete Notification Rule
[**disable_notification_rule**](NotificationRuleApi.md#disable_notification_rule) | **POST** /v2/users/{identifier}/notification-rules/{ruleId}/disable | Disable Notification Rule
[**enable_notification_rule**](NotificationRuleApi.md#enable_notification_rule) | **POST** /v2/users/{identifier}/notification-rules/{ruleId}/enable | Enable Notification Rule
[**get_notification_rule**](NotificationRuleApi.md#get_notification_rule) | **GET** /v2/users/{identifier}/notification-rules/{ruleId} | Get Notification Rule
[**list_notification_rules**](NotificationRuleApi.md#list_notification_rules) | **GET** /v2/users/{identifier}/notification-rules | List Notification Rules
[**update_notification_rule**](NotificationRuleApi.md#update_notification_rule) | **PATCH** /v2/users/{identifier}/notification-rules/{ruleId} | Update Notification Rule (Partial)


# **change_notification_rule_order**
> SuccessResponse change_notification_rule_order(identifier, rule_id, body)

Change order of Notification Rule

Changes order of a notification rule with given notification rule id

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

body = OpsgenieSdk::ChangeNotificationRuleOrderPayload.new # ChangeNotificationRuleOrderPayload | Request payload of change order of notification rule


begin
  #Change order of Notification Rule
  result = api_instance.change_notification_rule_order(identifier, rule_id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->change_notification_rule_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **body** | [**ChangeNotificationRuleOrderPayload**](ChangeNotificationRuleOrderPayload.md)| Request payload of change order of notification rule | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_notification_rule**
> CreateNotificationRuleResponse create_notification_rule(identifier, body)

Create Notification Rule

Creates a new notification rule

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

body = OpsgenieSdk::CreateNotificationRulePayload.new # CreateNotificationRulePayload | Request payload of create notification rule


begin
  #Create Notification Rule
  result = api_instance.create_notification_rule(identifier, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->create_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **body** | [**CreateNotificationRulePayload**](CreateNotificationRulePayload.md)| Request payload of create notification rule | 

### Return type

[**CreateNotificationRuleResponse**](CreateNotificationRuleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_notification_rule**
> SuccessResponse delete_notification_rule(identifier, rule_id, )

Delete Notification Rule

Deletes a notification rule with given notification rule id

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.


begin
  #Delete Notification Rule
  result = api_instance.delete_notification_rule(identifier, rule_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->delete_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **disable_notification_rule**
> SuccessResponse disable_notification_rule(identifier, rule_id, )

Disable Notification Rule

Disables a notification rule with given notification rule id

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.


begin
  #Disable Notification Rule
  result = api_instance.disable_notification_rule(identifier, rule_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->disable_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **enable_notification_rule**
> SuccessResponse enable_notification_rule(identifier, rule_id, )

Enable Notification Rule

Enables a notification rule with given notification rule id

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.


begin
  #Enable Notification Rule
  result = api_instance.enable_notification_rule(identifier, rule_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->enable_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_notification_rule**
> GetNotificationRuleResponse get_notification_rule(identifier, rule_id, )

Get Notification Rule

Returns notification rule with given id

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.


begin
  #Get Notification Rule
  result = api_instance.get_notification_rule(identifier, rule_id, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->get_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 

### Return type

[**GetNotificationRuleResponse**](GetNotificationRuleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_notification_rules**
> ListNotificationRulesResponse list_notification_rules(identifier, )

List Notification Rules

Returns list of notification rules

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched


begin
  #List Notification Rules
  result = api_instance.list_notification_rules(identifier, )
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->list_notification_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 

### Return type

[**ListNotificationRulesResponse**](ListNotificationRulesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_notification_rule**
> UpdateNotificationRuleResponse update_notification_rule(identifier, rule_id, body)

Update Notification Rule (Partial)

Updates the notification rule with given notification rule id

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

api_instance = OpsgenieSdk::NotificationRuleApi.new

identifier = 'identifier_example' # String | Identifier of the user to be searched

rule_id = 'rule_id_example' # String | Id of the notification rule that step will belong to.

body = OpsgenieSdk::UpdateNotificationRulePayload.new # UpdateNotificationRulePayload | Request payload of update notification rule


begin
  #Update Notification Rule (Partial)
  result = api_instance.update_notification_rule(identifier, rule_id, body)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling NotificationRuleApi->update_notification_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the user to be searched | 
 **rule_id** | **String**| Id of the notification rule that step will belong to. | 
 **body** | [**UpdateNotificationRulePayload**](UpdateNotificationRulePayload.md)| Request payload of update notification rule | 

### Return type

[**UpdateNotificationRuleResponse**](UpdateNotificationRuleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



