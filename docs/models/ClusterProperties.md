# ClusterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The friendly name of your cluster. | [optional] |
| **postgres_version** | **String** | The PostgreSQL version of your cluster. | [optional] |
| **location** | [**Location**](Location.md) |  | [optional] |
| **backup_location** | [**BackupLocation**](BackupLocation.md) |  | [optional] |
| **instances** | **Integer** | The total number of instances in the cluster (one master and n-1 standbys).  | [optional] |
| **ram** | **Integer** | The amount of memory per instance in megabytes. Has to be a multiple of 1024. | [optional] |
| **cores** | **Integer** | The number of CPU cores per instance. | [optional] |
| **storage_size** | **Integer** | The amount of storage per instance in megabytes. | [optional] |
| **storage_type** | [**StorageType**](StorageType.md) |  | [optional] |
| **connections** | [**Array&lt;Connection&gt;**](Connection.md) |  | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **synchronization_mode** | [**SynchronizationMode**](SynchronizationMode.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::ClusterProperties.new(
  display_name: PostgreSQL cluster,
  postgres_version: 13,
  location: null,
  backup_location: null,
  instances: 2,
  ram: 2048,
  cores: 4,
  storage_size: 5000,
  storage_type: null,
  connections: null,
  maintenance_window: null,
  synchronization_mode: null
)
```

