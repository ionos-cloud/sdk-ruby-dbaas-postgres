# MetadataApi

All URIs are relative to *https://api.ionos.com/databases/postgresql*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**infos_version_get**](MetadataApi.md#infos_version_get) | **GET** /infos/version | Get the current API version |
| [**infos_versions_get**](MetadataApi.md#infos_versions_get) | **GET** /infos/versions | Fetch all API versions |


## infos_version_get

> <APIVersion> infos_version_get

Get the current API version

Retrieves the current version of the responding API.

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

api_instance = IonoscloudDbaasPostgres::MetadataApi.new

begin
  # Get the current API version
  result = api_instance.infos_version_get
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling MetadataApi->infos_version_get: #{e}"
end
```

#### Using the infos_version_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<APIVersion>, Integer, Hash)> infos_version_get_with_http_info

```ruby
begin
  # Get the current API version
  data, status_code, headers = api_instance.infos_version_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <APIVersion>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling MetadataApi->infos_version_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**APIVersion**](../models/APIVersion.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## infos_versions_get

> <Array<APIVersion>> infos_versions_get

Fetch all API versions

Retrieves all available versions of the responding API.

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

api_instance = IonoscloudDbaasPostgres::MetadataApi.new

begin
  # Fetch all API versions
  result = api_instance.infos_versions_get
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling MetadataApi->infos_versions_get: #{e}"
end
```

#### Using the infos_versions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<APIVersion>>, Integer, Hash)> infos_versions_get_with_http_info

```ruby
begin
  # Fetch all API versions
  data, status_code, headers = api_instance.infos_versions_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<APIVersion>>
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Error when calling MetadataApi->infos_versions_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;APIVersion&gt;**](../models/APIVersion.md)

### Authorization

basicAuth, tokenAuth

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

