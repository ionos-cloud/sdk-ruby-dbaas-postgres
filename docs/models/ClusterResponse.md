# ClusterResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ResourceType**](ResourceType.md) |  | [optional] |
| **id** | **String** | The unique ID of the resource. | [optional] |
| **metadata** | [**Metadata**](Metadata.md) |  | [optional] |
| **properties** | [**ClusterProperties**](ClusterProperties.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::ClusterResponse.new(
  type: null,
  id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  metadata: null,
  properties: null
)
```

