# ClusterLogsMessages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **Time** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::ClusterLogsMessages.new(
  time: 2021-09-06T10:00:38.253+02:00,
  message: Hello World
)
```

