# Pagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | The offset specified in the request (if none was specified, the default offset is 0).  | [optional][default to 0] |
| **limit** | **Integer** | The limit specified in the request (if none was specified, the default limit is 100).  | [optional][default to 100] |
| **links** | [**PaginationLinks**](PaginationLinks.md) |  | [optional] |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::Pagination.new(
  offset: 200,
  limit: 100,
  links: null
)
```

