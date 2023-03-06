# RestoresApi

All URIs are relative to *https://api.ionos.com/databases/postgresql*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cluster_restore_post**](RestoresApi.md#cluster_restore_post) | **POST** /clusters/{clusterId}/restore | In-place restore of a cluster |


## cluster_restore_post

> cluster_restore_post(cluster_id, create_restore_request)

In-place restore of a cluster

Triggers an in-place restore of the given PostgreSQL.

### Examples

```ruby
require 'time'
require 'ionoscloud-dbaas-postgres'
# setup authorization
IonoscloudDbaasPostgres.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IonoscloudDbaasPostgres::RestoresApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
create_restore_request = IonoscloudDbaasPostgres::CreateRestoreRequest.new({backup_id: 'dcd31531-3ac8-11eb-9feb-046c59cc737e'}) # CreateRestoreRequest | The restore request to create.

begin
  # In-place restore of a cluster
  api_instance.cluster_restore_post(cluster_id, create_restore_request)
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling RestoresApi->cluster_restore_post: #{e}"
end
```

#### Using the cluster_restore_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cluster_restore_post_with_http_info(cluster_id, create_restore_request)

```ruby
begin
  # In-place restore of a cluster
  data, status_code, headers = api_instance.cluster_restore_post_with_http_info(cluster_id, create_restore_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling RestoresApi->cluster_restore_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **create_restore_request** | [**CreateRestoreRequest**](../models/CreateRestoreRequest.md) | The restore request to create. |  |

### Return type

nil (empty response body)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

