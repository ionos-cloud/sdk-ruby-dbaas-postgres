# CreateClusterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **postgres_version** | **String** | The PostgreSQL version of your cluster. |  |
| **instances** | **Integer** | The total number of instances in the cluster (one master and n-1 standbys).  |  |
| **cores** | **Integer** | The number of CPU cores per instance. |  |
| **ram** | **Integer** | The amount of memory per instance in megabytes. Has to be a multiple of 1024. |  |
| **storage_size** | **Integer** | The amount of storage per instance in megabytes. |  |
| **storage_type** | [**StorageType**](StorageType.md) |  |  |
| **connections** | [**Array&lt;Connection&gt;**](Connection.md) |  |  |
| **location** | **String** | The physical location where the cluster will be created. This will be where all of your instances live. Property cannot be modified after datacenter creation.  |  |
| **backup_location** | **String** | The S3 location where the backups will be stored. | [optional] |
| **display_name** | **String** | The friendly name of your cluster. |  |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **credentials** | [**DBUser**](DBUser.md) |  |  |
| **synchronization_mode** | [**SynchronizationMode**](SynchronizationMode.md) |  |  |
| **from_backup** | [**CreateRestoreRequest**](CreateRestoreRequest.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::CreateClusterProperties.new(
  postgres_version: 13,
  instances: 2,
  cores: 4,
  ram: 2048,
  storage_size: 5000,
  storage_type: null,
  connections: null,
  location: de/fra,
  backup_location: de,
  display_name: PostgreSQL cluster,
  maintenance_window: null,
  credentials: null,
  synchronization_mode: null,
  from_backup: null
)
```

