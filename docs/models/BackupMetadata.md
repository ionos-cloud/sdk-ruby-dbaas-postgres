# BackupMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_date** | **Time** | The ISO 8601 creation timestamp. | [optional] |
| **state** | [**State**](State.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::BackupMetadata.new(
  created_date: 2020-12-10T13:37:50+01:00,
  state: null
)
```

