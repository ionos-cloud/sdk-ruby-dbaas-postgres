# Introduction

## Overview

An enterprise-grade Database is provided as a Service (DBaaS) solution that
can be managed through a browser-based \"Data Center Designer\" (DCD) tool or
via an easy to use API.

The API allows you to create additional database clusters or modify existing
ones. It is designed to allow users to leverage the same power and
flexibility found within the DCD visual tool. Both tools are consistent with
their concepts and lend well to making the experience smooth and intuitive.

## Getting Started

### Instalation

### 1. Build a gem

To build the Ruby code into a gem:

```text
gem build ionoscloud-dbaas-postgres.gemspec
```

Then either install the gem locally:

```text
gem install ./ionoscloud-dbaas-postgres-<gem-version>.gem
```

\(for development, run `gem install --dev ./ionoscloud-dbaas-postgres-<gem-version>.gem` to install the development dependencies\)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

```text
gem 'ionoscloud-dbaas-postgres', '~> <gem-version>'
```

### 2. Install from Git

If the Ruby gem is hosted at a git repository: [https://github.com/ionos-cloud/sdk-ruby-dbaas-postgres](https://github.com/ionos-cloud/sdk-ruby-dbaas-postgres), then add the following in the Gemfile:

```text
gem 'ionoscloud-dbaas-postgres', :git => 'https://github.com/ionos-cloud/sdk-ruby-dbaas-postgres.git'
```

### 3. Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```text
ruby -Ilib script.rb
```

### 4. Install from RubyGems

Just add this to the Gemfile:

```text
gem 'ionoscloud-dbaas-postgres', '~> <gem-version>'
```

### After installing please run the following code:

```ruby
# Load the gem
require 'ionoscloud-dbaas-postgres'

# Setup authorization
IonoscloudDbaasPostgres.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = IonoscloudDbaasPostgres::DefaultApi.new
opts = {
  pretty: true, # Boolean | Controls whether response is pretty-printed (with indentation and new lines)
  depth: 56, # Integer | Controls the details depth of response objects.  Eg. GET /datacenters/[ID]  - depth=0: only direct properties are included. Children (servers etc.) are not included  - depth=1: direct properties and children references are included  - depth=2: direct properties and children properties are included  - depth=3: direct properties and children properties and children's children are included  - depth=... and so on
  x_contract_number: 56 # Integer | Users having more than 1 contract need to provide contract number, against which all API requests should be executed
}

begin
  #Display API information
  result = api_instance.api_info_get(opts)
  p result
rescue IonoscloudDbaasPostgres::ApiError => e
  puts "Exception when calling DefaultApi->api_info_get: #{e}"
end
```

### Authentication

The username and password or the authentication token can be manually specified when initializing the SDK client:

```ruby
IonoscloudDbaasPostgres.configure do |config|
  # Configure HTTP basic authorization: Basic Authentication
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Configure API key authorization: Token Authentication
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end
```

Environment variables can also be used for initialization. For example:

```ruby
IonoscloudDbaasPostgres.configure do |config|
  config.username = ENV['IONOS_USERNAME']
  config.password = ENV['IONOS_PASSWORD']
  config.api_key['Authorization'] = ENV['IONOS_TOKEN']
end
```

{% hint style="danger" %}
**Warning**: Make sure to follow the Information Security Best Practices when using credentials within your code or storing them in a file.
{% endhint %}

### Changing the base URL

Base URL for the HTTP operation can be changed in the following way:

```ruby
IonoscloudDbaasPostgres.configure do |config|
  config.username = ENV['IONOS_USERNAME']
  config.password = ENV['IONOS_PASSWORD']

  # Configure the url used by the SDK
  config.host = 'https://api.ionos.com/databases/postgresql'
  # This must be set as well because of the way the API works, otherwise the set url will not be used
  condif.server_index = nil
end
```

## Feature Reference

The IONOS Cloud SDK for Ruby aims to offer access to all resources in the IONOS Cloud API and also offers some additional features that make the integration easier:

* authentication for API calls
* handling of asynchronous requests 

## FAQ

1. How can I open a bug/feature request? 

Bugs & feature requests can be open on the repository issues: [https://github.com/ionos-cloud/sdk-ruby-dbaas-postgres/issues/new/choose](https://github.com/ionos-cloud/sdk-ruby-dbaas-postgres/issues/new/choose)

2. Can I contribute to the Ruby SDK?

Pure SDKs are automatically generated using OpenAPI Generator and don’t support manual changes. If you need changes please open an issue and we’ll try to take care of it.

