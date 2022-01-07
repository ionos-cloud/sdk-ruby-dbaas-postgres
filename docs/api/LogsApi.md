# LogsApi

All URIs are relative to *https://api.ionos.com/databases/postgresql*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cluster_logs_get**](LogsApi.md#cluster_logs_get) | **GET** /clusters/{clusterId}/logs | Get logs of your cluster |


## cluster_logs_get

> <ClusterLogs> cluster_logs_get(cluster_id, opts)

Get logs of your cluster

Retrieves PostgreSQL logs based on the given parameters.

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

api_instance = IonoscloudDbaasPostgres::LogsApi.new
cluster_id = 'cluster_id_example' # String | The unique ID of the cluster.
opts = {
  limit: 56, # Integer | The maximal number of log lines to return.
  start: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start time for the query in RFC3339 format.
  _end: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end time for the query in RFC3339 format.
}

begin
  # Get logs of your cluster
  result = api_instance.cluster_logs_get(cluster_id, opts)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling LogsApi->cluster_logs_get: #{e}"
end
```

#### Using the cluster_logs_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClusterLogs>, Integer, Hash)> cluster_logs_get_with_http_info(cluster_id, opts)

```ruby
begin
  # Get logs of your cluster
  data, status_code, headers = api_instance.cluster_logs_get_with_http_info(cluster_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClusterLogs>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling LogsApi->cluster_logs_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cluster_id** | **String** | The unique ID of the cluster. |  |
| **limit** | **Integer** | The maximal number of log lines to return. | [optional] |
| **start** | **Time** | The start time for the query in RFC3339 format. | [optional] |
| **_end** | **Time** | The end time for the query in RFC3339 format. | [optional] |

### Return type

[**ClusterLogs**](ClusterLogs.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

