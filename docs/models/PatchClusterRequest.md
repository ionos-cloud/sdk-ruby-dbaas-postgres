# PatchClusterRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**Metadata**](Metadata.md) |  | [optional] |
| **properties** | [**PatchClusterProperties**](PatchClusterProperties.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::PatchClusterRequest.new(
  metadata: null,
  properties: null
)
```

