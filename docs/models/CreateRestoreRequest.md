# CreateRestoreRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_id** | **String** | The unique ID of the backup you want to restore. |  |
| **recovery_target_time** | **Time** | If this value is supplied as ISO 8601 timestamp, the backup will be replayed up until the given timestamp. If empty, the backup will be applied completely.  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::CreateRestoreRequest.new(
  backup_id: dcd31531-3ac8-11eb-9feb-046c59cc737e,
  recovery_target_time: 2020-12-10T13:37:50+01:00
)
```

