# ClusterBackup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID of the resource. | [optional] |
| **cluster_id** | **String** | The unique ID of the cluster. | [optional] |
| **version** | **String** | The PostgreSQL version this backup was created from. | [optional] |
| **is_active** | **Boolean** | Whether a cluster currently backs up data to this backup. | [optional] |
| **earliest_recovery_target_time** | **Time** | The oldest available timestamp to which you can restore. | [optional] |
| **size** | **Integer** | Size of all base backups including the wal size in MB. | [optional] |
| **location** | **String** | The S3 location where the backups will be stored. | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::ClusterBackup.new(
  id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  cluster_id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  version: 12,
  is_active: true,
  earliest_recovery_target_time: 2021-10-23T01:21:10Z,
  size: 2052,
  location: de
)
```

