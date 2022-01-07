# ClusterLogsInstances

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the PostgreSQL instance. | [optional] |
| **messages** | [**Array&lt;ClusterLogsMessages&gt;**](ClusterLogsMessages.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::ClusterLogsInstances.new(
  name: postgres-cluster-0,
  messages: null
)
```

