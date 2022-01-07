=begin
#IONOS DBaaS REST API

#An enterprise-grade Database is provided as a Service (DBaaS) solution that can be managed through a browser-based \"Data Center Designer\" (DCD) tool or via an easy to use API.  The API allows you to create additional database clusters or modify existing ones. It is designed to allow users to leverage the same power and flexibility found within the DCD visual tool. Both tools are consistent with their concepts and lend well to making the experience smooth and intuitive. 

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'cgi'

module IonoscloudDbaasPostgres
  class LogsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get logs of your cluster
    # Retrieves PostgreSQL logs based on the given parameters.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximal number of log lines to return.
    # @option opts [Time] :start The start time for the query in RFC3339 format.
    # @option opts [Time] :_end The end time for the query in RFC3339 format.
    # @return [ClusterLogs]
    def cluster_logs_get(cluster_id, opts = {})
      data, _status_code, _headers = cluster_logs_get_with_http_info(cluster_id, opts)
      data
    end

    # Get logs of your cluster
    # Retrieves PostgreSQL logs based on the given parameters.
    # @param cluster_id [String] The unique ID of the cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The maximal number of log lines to return.
    # @option opts [Time] :start The start time for the query in RFC3339 format.
    # @option opts [Time] :_end The end time for the query in RFC3339 format.
    # @return [Array<(ClusterLogs, Integer, Hash)>] ClusterLogs data, response status code and response headers
    def cluster_logs_get_with_http_info(cluster_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LogsApi.cluster_logs_get ...'
      end
      # verify the required parameter 'cluster_id' is set
      if @api_client.config.client_side_validation && cluster_id.nil?
        fail ArgumentError, "Missing the required parameter 'cluster_id' when calling LogsApi.cluster_logs_get"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 5000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LogsApi.cluster_logs_get, must be smaller than or equal to 5000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling LogsApi.cluster_logs_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/clusters/{clusterId}/logs'.sub('{' + 'clusterId' + '}', CGI.escape(cluster_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
      query_params[:'end'] = opts[:'_end'] if !opts[:'_end'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ClusterLogs'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth', 'tokenAuth']

      new_options = opts.merge(
        :operation => :"LogsApi.cluster_logs_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LogsApi#cluster_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
