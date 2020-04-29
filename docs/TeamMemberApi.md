# OpsgenieSdk::TeamMemberApi

All URIs are relative to *https://api.opsgenie.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_team_member**](TeamMemberApi.md#add_team_member) | **POST** /v2/teams/{identifier}/members | Add Team Member
[**delete_team_member**](TeamMemberApi.md#delete_team_member) | **DELETE** /v2/teams/{identifier}/members/{memberIdentifier} | Delete Team Member


# **add_team_member**
> SuccessResponse add_team_member(identifier, body, opts)

Add Team Member

Adds a member to team with given identifier

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

api_instance = OpsgenieSdk::TeamMemberApi.new

identifier = 'identifier_example' # String | Identifier of the team

body = OpsgenieSdk::AddTeamMemberPayload.new # AddTeamMemberPayload | Request payload of added team member

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Add Team Member
  result = api_instance.add_team_member(identifier, body, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamMemberApi->add_team_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **body** | [**AddTeamMemberPayload**](AddTeamMemberPayload.md)| Request payload of added team member | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **delete_team_member**
> SuccessResponse delete_team_member(identifier, member_identifier, opts)

Delete Team Member

Deletes the member of team with given identifier

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

api_instance = OpsgenieSdk::TeamMemberApi.new

identifier = 'identifier_example' # String | Identifier of the team

member_identifier = 'member_identifier_example' # String | User id or username of member for removal

opts = { 
  team_identifier_type: 'id' # String | Type of the identifier. Possible values are 'id' and 'name'. Default value is 'id'
}

begin
  #Delete Team Member
  result = api_instance.delete_team_member(identifier, member_identifier, opts)
  p result
rescue OpsgenieSdk::ApiError => e
  puts "Exception when calling TeamMemberApi->delete_team_member: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Identifier of the team | 
 **member_identifier** | **String**| User id or username of member for removal | 
 **team_identifier_type** | **String**| Type of the identifier. Possible values are &#39;id&#39; and &#39;name&#39;. Default value is &#39;id&#39; | [optional] [default to id]

### Return type

[**SuccessResponse**](SuccessResponse.md)

### Authorization

[GenieKey](../README.md#GenieKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



