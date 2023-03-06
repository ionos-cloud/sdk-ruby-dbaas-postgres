# BackupsApi

All URIs are relative to *https://api.ionos.com/databases/postgresql*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cluster_backups_get**](BackupsApi.md#cluster_backups_get) | **GET** /clusters/{clusterId}/backups | List backups of cluster |
| [**clusters_backups_find_by_id**](BackupsApi.md#clusters_backups_find_by_id) | **GET** /clusters/backups/{backupId} | Fetch a cluster backup |
| [**clusters_backups_get**](BackupsApi.md#clusters_backups_get) | **GET** /clusters/backups | List cluster backups |


## cluster_backups_get

> <ClusterBackupList> cluster_backups_get(cluster_id, opts)

List backups of cluster

Retrieves a list of all backups of the given PostgreSQL cluster.

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

api_instance = IonoscloudDbaasPostgres::BackupsApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
opts = {
  limit: 100, # Integer | The maximum number of elements to return. Use together with 'offset' for pagination.
  offset: 200 # Integer | The first element to return. Use together with 'limit' for pagination.
}

begin
  # List backups of cluster
  result = api_instance.cluster_backups_get(cluster_id, opts)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling BackupsApi->cluster_backups_get: #{e}"
end
```

#### Using the cluster_backups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterBackupList>, Integer, Hash)> cluster_backups_get_with_http_info(cluster_id, opts)

```ruby
begin
  # List backups of cluster
  data, status_code, headers = api_instance.cluster_backups_get_with_http_info(cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterBackupList>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling BackupsApi->cluster_backups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **limit** | **Integer** | The maximum number of elements to return. Use together with &#39;offset&#39; for pagination. | [optional][default to 100] |
| **offset** | **Integer** | The first element to return. Use together with &#39;limit&#39; for pagination. | [optional][default to 0] |

### Return type

[**ClusterBackupList**](../models/ClusterBackupList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_backups_find_by_id

> <BackupResponse> clusters_backups_find_by_id(backup_id)

Fetch a cluster backup

Retrieve a PostgreSQL cluster backup by using its ID. This value can be found when you GET a list of PostgreSQL cluster backups. 

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

api_instance = IonoscloudDbaasPostgres::BackupsApi.new
backup_id = 'backup_id_example' # String | The unique ID of the backup.

begin
  # Fetch a cluster backup
  result = api_instance.clusters_backups_find_by_id(backup_id)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling BackupsApi->clusters_backups_find_by_id: #{e}"
end
```

#### Using the clusters_backups_find_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BackupResponse>, Integer, Hash)> clusters_backups_find_by_id_with_http_info(backup_id)

```ruby
begin
  # Fetch a cluster backup
  data, status_code, headers = api_instance.clusters_backups_find_by_id_with_http_info(backup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BackupResponse>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling BackupsApi->clusters_backups_find_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backup_id** | **String** | The unique ID of the backup. |  |

### Return type

[**BackupResponse**](../models/BackupResponse.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## clusters_backups_get

> <ClusterBackupList> clusters_backups_get(opts)

List cluster backups

Retrieves a list of all PostgreSQL cluster backups.

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

api_instance = IonoscloudDbaasPostgres::BackupsApi.new
opts = {
  limit: 100, # Integer | The maximum number of elements to return. Use together with 'offset' for pagination.
  offset: 200 # Integer | The first element to return. Use together with 'limit' for pagination.
}

begin
  # List cluster backups
  result = api_instance.clusters_backups_get(opts)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling BackupsApi->clusters_backups_get: #{e}"
end
```

#### Using the clusters_backups_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterBackupList>, Integer, Hash)> clusters_backups_get_with_http_info(opts)

```ruby
begin
  # List cluster backups
  data, status_code, headers = api_instance.clusters_backups_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterBackupList>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling BackupsApi->clusters_backups_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The maximum number of elements to return. Use together with &#39;offset&#39; for pagination. | [optional][default to 100] |
| **offset** | **Integer** | The first element to return. Use together with &#39;limit&#39; for pagination. | [optional][default to 0] |

### Return type

[**ClusterBackupList**](../models/ClusterBackupList.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

