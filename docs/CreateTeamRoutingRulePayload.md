# OpsgenieSdk::CreateTeamRoutingRulePayload

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the team routing rule | [optional] 
**order** | **Integer** | Order of team routing rule within the rules. order value is actually the index of the team routing rule. | [optional] 
**criteria** | [**Filter**](Filter.md) |  | [optional] 
**time_restriction** | [**TimeRestrictionInterval**](TimeRestrictionInterval.md) |  | [optional] 
**notify** | [**Recipient**](Recipient.md) |  | 
**timezone** | **String** | Timezone of team routing rule. If timezone field is not given, account timezone is used as default. | [optional] 


