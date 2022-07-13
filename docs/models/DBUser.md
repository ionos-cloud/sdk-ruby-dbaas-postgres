# DBUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username for the initial PostgreSQL user. Some system usernames are restricted (e.g. \&quot;postgres\&quot;, \&quot;admin\&quot;, \&quot;standby\&quot;).  |  |
| **password** | **String** |  |  |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::DBUser.new(
  username: db-admin,
  password: password
)
```

