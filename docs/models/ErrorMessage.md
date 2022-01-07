# ErrorMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error_code** | **String** | Application internal error code  | [optional] |
| **message** | **String** | A human readable explanation specific to this occurrence of the problem.  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::ErrorMessage.new(
  error_code: dbaas-err-api-123,
  message: Error message example
)
```

