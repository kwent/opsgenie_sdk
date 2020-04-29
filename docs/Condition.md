# OpsgenieSdk::Condition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | Specifies which alert field will be used in condition. Possible values are message, alias, description, source, entity, tags, actions, extra-properties, recipients or teams | 
**key** | **String** | If field is set as extra-properties, key could be used for key-value pair | [optional] 
**_not** | **BOOLEAN** | Indicates behaviour of the given operation. Default value is false | [optional] 
**operation** | **String** | It is the operation that will be executed for the given field and key. | 
**expected_value** | **String** | User defined value that will be compared with alert field according to the operation. Default value is empty string | [optional] 
**order** | **Integer** | Order of the condition in conditions list | [optional] 


