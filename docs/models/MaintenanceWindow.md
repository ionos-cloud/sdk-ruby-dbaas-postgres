# MaintenanceWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | **String** | Start of the maintenance window in UTC time. |  |
| **day_of_the_week** | [**DayOfTheWeek**](DayOfTheWeek.md) |  |  |

## Example

```ruby
require 'ionoscloud-dbaas-postgres'

instance = IonoscloudDbaasPostgres::MaintenanceWindow.new(
  time: 16:30:59,
  day_of_the_week: null
)
```

