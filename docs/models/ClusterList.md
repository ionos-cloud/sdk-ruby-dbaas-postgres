# ClusterList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ResourceType**](ResourceType.md) |  | [optional] |
| **id** | **String** | The unique ID of the resource. | [optional] |
| **items** | [**Array&lt;ClusterResponse&gt;**](ClusterResponse.md) |  | [optional] |
| **offset** | **Integer** | The offset specified in the request (if none was specified, the default offset is 0) (not implemented yet).  | [optional][readonly] |
| **limit** | **Integer** | The limit specified in the request (if none was specified, use the endpoint&#39;s default pagination limit) (not implemented yet, always return number of items).  | [optional][readonly] |
| **_links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::ClusterList.new(
  type: null,
  id: 498ae72f-411f-11eb-9d07-046c59cc737e,
  items: null,
  offset: 0,
  limit: 42,
  _links: null
)
```

