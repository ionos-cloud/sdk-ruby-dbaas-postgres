# Pagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset specified in the request (if none was specified, the default offset is 0) (not implemented yet).  | [optional][readonly] |
| **limit** | **Integer** | The limit specified in the request (if none was specified, use the endpoint&#39;s default pagination limit) (not implemented yet, always return number of items).  | [optional][readonly] |
| **_links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::Pagination.new(
  offset: 0,
  limit: 42,
  _links: null
)
```

