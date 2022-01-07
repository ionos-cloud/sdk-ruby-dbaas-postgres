# Connection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **datacenter_id** | **String** | The datacenter to connect your cluster to. |  |
| **lan_id** | **String** | The numeric LAN ID to connect your cluster to. |  |
| **cidr** | **String** | The IP and subnet for your cluster. Note the following unavailable IP ranges: 10.233.64.0/18 10.233.0.0/18 10.233.114.0/24  |  |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::Connection.new(
  datacenter_id: null,
  lan_id: 2,
  cidr: 192.168.1.100/24
)
```

