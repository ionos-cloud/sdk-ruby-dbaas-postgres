# ClustersApi

All URIs are relative to *https://api.ionos.com/databases/postgresql*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cluster_postgres_versions_get**](ClustersApi.md#cluster_postgres_versions_get) | **GET** /clusters/{clusterId}/postgresversions | List PostgreSQL versions |
| [**clusters_delete**](ClustersApi.md#clusters_delete) | **DELETE** /clusters/{clusterId} | Delete a cluster |
| [**clusters_find_by_id**](ClustersApi.md#clusters_find_by_id) | **GET** /clusters/{clusterId} | Fetch a cluster |
| [**clusters_get**](ClustersApi.md#clusters_get) | **GET** /clusters | List clusters |
| [**clusters_patch**](ClustersApi.md#clusters_patch) | **PATCH** /clusters/{clusterId} | Patch a cluster |
| [**clusters_post**](ClustersApi.md#clusters_post) | **POST** /clusters | Create a cluster |
| [**postgres_versions_get**](ClustersApi.md#postgres_versions_get) | **GET** /clusters/postgresversions | List PostgreSQL versions |


## cluster_postgres_versions_get

> <PostgresVersionList> cluster_postgres_versions_get(cluster_id)

List PostgreSQL versions

Retrieves a list of all PostgreSQL versions available for this cluster including the current version. 

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

api_instance = IonoscloudDbaasPostgres::ClustersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.

begin
  # List PostgreSQL versions
  result = api_instance.cluster_postgres_versions_get(cluster_id)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->cluster_postgres_versions_get: #{e}"
end
```

#### Using the cluster_postgres_versions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostgresVersionList>, Integer, Hash)> cluster_postgres_versions_get_with_http_info(cluster_id)

```ruby
begin
  # List PostgreSQL versions
  data, status_code, headers = api_instance.cluster_postgres_versions_get_with_http_info(cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostgresVersionList>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->cluster_postgres_versions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |

### Return type

[**PostgresVersionList**](PostgresVersionList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_delete

> <ClusterResponse> clusters_delete(cluster_id)

Delete a cluster

Delete a PostgreSQL cluster.

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

api_instance = IonoscloudDbaasPostgres::ClustersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.

begin
  # Delete a cluster
  result = api_instance.clusters_delete(cluster_id)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_delete: #{e}"
end
```

#### Using the clusters_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_delete_with_http_info(cluster_id)

```ruby
begin
  # Delete a cluster
  data, status_code, headers = api_instance.clusters_delete_with_http_info(cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_find_by_id

> <ClusterResponse> clusters_find_by_id(cluster_id)

Fetch a cluster

You can retrieve a PostgreSQL cluster by using its ID. This value can be found in the response body when a PostgreSQL cluster is created or when you GET a list of PostgreSQL clusters. 

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

api_instance = IonoscloudDbaasPostgres::ClustersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.

begin
  # Fetch a cluster
  result = api_instance.clusters_find_by_id(cluster_id)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_find_by_id: #{e}"
end
```

#### Using the clusters_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_find_by_id_with_http_info(cluster_id)

```ruby
begin
  # Fetch a cluster
  data, status_code, headers = api_instance.clusters_find_by_id_with_http_info(cluster_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_get

> <ClusterList> clusters_get(opts)

List clusters

Retrieves a list of PostgreSQL clusters.

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

api_instance = IonoscloudDbaasPostgres::ClustersApi.new
opts = {
  filter_name: 'filter_name_example' # String | Response filter to list only the PostgreSQL clusters that contain the specified name. The value is case insensitive and matched on the 'displayName' field. 
}

begin
  # List clusters
  result = api_instance.clusters_get(opts)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_get: #{e}"
end
```

#### Using the clusters_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterList>, Integer, Hash)> clusters_get_with_http_info(opts)

```ruby
begin
  # List clusters
  data, status_code, headers = api_instance.clusters_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterList>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter_name** | **String** | Response filter to list only the PostgreSQL clusters that contain the specified name. The value is case insensitive and matched on the &#39;displayName&#39; field.  | [optional] |

### Return type

[**ClusterList**](ClusterList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_patch

> <ClusterResponse> clusters_patch(cluster_id, patch_cluster_request)

Patch a cluster

Patch attributes of a PostgreSQL cluster.

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

api_instance = IonoscloudDbaasPostgres::ClustersApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
patch_cluster_request = IonoscloudDbaasPostgres::PatchClusterRequest.new # PatchClusterRequest | The modified cluster.

begin
  # Patch a cluster
  result = api_instance.clusters_patch(cluster_id, patch_cluster_request)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_patch: #{e}"
end
```

#### Using the clusters_patch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_patch_with_http_info(cluster_id, patch_cluster_request)

```ruby
begin
  # Patch a cluster
  data, status_code, headers = api_instance.clusters_patch_with_http_info(cluster_id, patch_cluster_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_patch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **patch_cluster_request** | [**PatchClusterRequest**](PatchClusterRequest.md) | The modified cluster. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## clusters_post

> <ClusterResponse> clusters_post(create_cluster_request)

Create a cluster

Creates a new PostgreSQL cluster. If the `fromBackup` field is populated, the new cluster will be created based on the given backup. 

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

api_instance = IonoscloudDbaasPostgres::ClustersApi.new
create_cluster_request = IonoscloudDbaasPostgres::CreateClusterRequest.new # CreateClusterRequest | The cluster to be created.

begin
  # Create a cluster
  result = api_instance.clusters_post(create_cluster_request)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_post: #{e}"
end
```

#### Using the clusters_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterResponse>, Integer, Hash)> clusters_post_with_http_info(create_cluster_request)

```ruby
begin
  # Create a cluster
  data, status_code, headers = api_instance.clusters_post_with_http_info(create_cluster_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterResponse>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->clusters_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_cluster_request** | [**CreateClusterRequest**](CreateClusterRequest.md) | The cluster to be created. |  |

### Return type

[**ClusterResponse**](ClusterResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## postgres_versions_get

> <PostgresVersionList> postgres_versions_get

List PostgreSQL versions

Retrieves a list of all available PostgreSQL versions.

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

api_instance = IonoscloudDbaasPostgres::ClustersApi.new

begin
  # List PostgreSQL versions
  result = api_instance.postgres_versions_get
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->postgres_versions_get: #{e}"
end
```

#### Using the postgres_versions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostgresVersionList>, Integer, Hash)> postgres_versions_get_with_http_info

```ruby
begin
  # List PostgreSQL versions
  data, status_code, headers = api_instance.postgres_versions_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostgresVersionList>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling ClustersApi->postgres_versions_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PostgresVersionList**](PostgresVersionList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

