# Metadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_date** | **Time** | The ISO 8601 creation timestamp. | [optional] |
| **created_by** | **String** |  | [optional] |
| **created_by_user_id** | **String** |  | [optional] |
| **last_modified_date** | **Time** | The ISO 8601 modified timestamp. | [optional] |
| **last_modified_by** | **String** |  | [optional] |
| **last_modified_by_user_id** | **String** |  | [optional] |
| **state** | [**State**](State.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::Metadata.new(
  created_date: 2020-12-10T13:37:50+01:00,
  created_by: john.doe@example.com,
  created_by_user_id: 87f9a82e-b28d-49ed-9d04-fba2c0459cd3,
  last_modified_date: 2020-12-11T13:37:50+01:00,
  last_modified_by: jane.doe@example.com,
  last_modified_by_user_id: 87f9a82e-b28d-49ed-9d04-fba2c0459cd3,
  state: null
)
```

