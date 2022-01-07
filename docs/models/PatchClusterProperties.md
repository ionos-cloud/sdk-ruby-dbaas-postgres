# PatchClusterProperties

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cores** | **Integer** | The number of CPU cores per instance. | [optional] |
| **ram** | **Integer** | The amount of memory per instance in megabytes. Has to be a multiple of 1024. | [optional] |
| **storage_size** | **Integer** | The amount of storage per instance in megabytes. | [optional] |
| **connections** | [**Array&lt;Connection&gt;**](Connection.md) |  | [optional] |
| **display_name** | **String** | The friendly name of your cluster. | [optional] |
| **maintenance_window** | [**MaintenanceWindow**](MaintenanceWindow.md) |  | [optional] |
| **postgres_version** | **String** | The PostgreSQL version of your cluster. | [optional] |
| **instances** | **Integer** | The total number of instances in the cluster (one master and n-1 standbys).  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::PatchClusterProperties.new(
  cores: 4,
  ram: 2048,
  storage_size: 5000,
  connections: null,
  display_name: PostgreSQL cluster,
  maintenance_window: null,
  postgres_version: 13,
  instances: 2
)
```

