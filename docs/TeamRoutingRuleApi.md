# OpsgenieSdk::TeamRoutingRuleApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_team_routing_rule_order**](TeamRoutingRuleApi.md#change_team_routing_rule_order) | **POST** /v2/teams/{identifier}/routing-rules/{id}/change-order | Change Team Routing Rule Order
[**create_team_routing_rule**](TeamRoutingRuleApi.md#create_team_routing_rule) | **POST** /v2/teams/{identifier}/routing-rules | Create Team Routing Rule
[**delete_team_routing_rule**](TeamRoutingRuleApi.md#delete_team_routing_rule) | **DELETE** /v2/teams/{identifier}/routing-rules/{id} | Delete Team Routing Rule
[**get_team_routing_rule**](TeamRoutingRuleApi.md#get_team_routing_rule) | **GET** /v2/teams/{identifier}/routing-rules/{id} | Get Team Routing Rule
[**list_team_routing_rules**](TeamRoutingRuleApi.md#list_team_routing_rules) | **GET** /v2/teams/{identifier}/routing-rules | List Team Routing Rules
[**update_team_routing_rule**](TeamRoutingRuleApi.md#update_team_routing_rule) | **PATCH** /v2/teams/{identifier}/routing-rules/{id} | Update Team Routing Rule (Partial)


# **change_team_routing_rule_order**
> SuccessResponse change_team_routing_rule_order(identifier, id, body, opts)

Change Team Routing Rule Order

Change the order of team routing rule with given id

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

api_instance = OpsgenieSdk::TeamRoutingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the team

id = 'id_example' # String | Id of the team routing rule

body = OpsgenieSdk::ChangeTeamRoutingRuleOrderPayload.new # ChangeTeamRoutingRuleOrderPayload | Request payload of change team routing rule order action

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Change Team Routing Rule Order
  result = api_instance.change_team_routing_rule_order(identifier, id, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoutingRuleApi->change_team_routing_rule_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **id** | **String**| Id of the team routing rule | 
 **body** | [**ChangeTeamRoutingRuleOrderPayload**](ChangeTeamRoutingRuleOrderPayload.md)| Request payload of change team routing rule order action | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_team_routing_rule**
> SuccessResponse create_team_routing_rule(identifier, body, opts)

Create Team Routing Rule

Creates a new team routing rule

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

api_instance = OpsgenieSdk::TeamRoutingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the team

body = OpsgenieSdk::CreateTeamRoutingRulePayload.new # CreateTeamRoutingRulePayload | Request payload of createTeamRoutingRule

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Create Team Routing Rule
  result = api_instance.create_team_routing_rule(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoutingRuleApi->create_team_routing_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **body** | [**CreateTeamRoutingRulePayload**](CreateTeamRoutingRulePayload.md)| Request payload of createTeamRoutingRule | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_team_routing_rule**
> SuccessResponse delete_team_routing_rule(identifier, id, , opts)

Delete Team Routing Rule

Delete team routing rule with given id

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

api_instance = OpsgenieSdk::TeamRoutingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the team

id = 'id_example' # String | Id of the team routing rule

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Delete Team Routing Rule
  result = api_instance.delete_team_routing_rule(identifier, id, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoutingRuleApi->delete_team_routing_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **id** | **String**| Id of the team routing rule | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_team_routing_rule**
> GetTeamRoutingRuleResponse get_team_routing_rule(identifier, id, , opts)

Get Team Routing Rule

Returns team routing rule with given id

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

api_instance = OpsgenieSdk::TeamRoutingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the team

id = 'id_example' # String | Id of the team routing rule

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Get Team Routing Rule
  result = api_instance.get_team_routing_rule(identifier, id, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoutingRuleApi->get_team_routing_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **id** | **String**| Id of the team routing rule | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**GetTeamRoutingRuleResponse**](GetTeamRoutingRuleResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_team_routing_rules**
> ListTeamRoutingRulesResponse list_team_routing_rules(identifier, , opts)

List Team Routing Rules

Returns list of team routing rules

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

api_instance = OpsgenieSdk::TeamRoutingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the team

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #List Team Routing Rules
  result = api_instance.list_team_routing_rules(identifier, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoutingRuleApi->list_team_routing_rules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**ListTeamRoutingRulesResponse**](ListTeamRoutingRulesResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_team_routing_rule**
> SuccessResponse update_team_routing_rule(identifier, id, , opts)

Update Team Routing Rule (Partial)

Update routing rule of the team

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

api_instance = OpsgenieSdk::TeamRoutingRuleApi.new

identifier = 'identifier_example' # String | Identifier of the team

id = 'id_example' # String | Id of the team routing rule

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
  body: OpsgenieSdk::UpdateTeamRoutingRulePayload.new # UpdateTeamRoutingRulePayload | Request payload of update Team Routing Rule action
}

begin
  #Update Team Routing Rule (Partial)
  result = api_instance.update_team_routing_rule(identifier, id, , opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamRoutingRuleApi->update_team_routing_rule: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **id** | **String**| Id of the team routing rule | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]
 **body** | [**UpdateTeamRoutingRulePayload**](UpdateTeamRoutingRulePayload.md)| Request payload of update Team Routing Rule action | [optional] 

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



