=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module YNAB
  class MonthsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Single budget month
    # Returns a single budget month
    # @param budget_id The ID of the Budget.  \&quot;last-used\&quot; can also be used to specify the last used budget.
    # @param month The Budget Month in ISO format (e.g. 2016-12-01).    \&quot;current\&quot; can also be used to specify the current calendar month (UTC).
    # @param [Hash] opts the optional parameters
    # @return [MonthDetailResponse]
    def get_budget_month(budget_id, month, opts = {})
      data, _status_code, _headers = get_budget_month_with_http_info(budget_id, month, opts)
      data
    end

    # Single budget month
    # Returns a single budget month
    # @param budget_id The ID of the Budget.  \&quot;last-used\&quot; can also be used to specify the last used budget.
    # @param month The Budget Month in ISO format (e.g. 2016-12-01).    \&quot;current\&quot; can also be used to specify the current calendar month (UTC).
    # @param [Hash] opts the optional parameters
    # @return [Array<(MonthDetailResponse, Fixnum, Hash)>] MonthDetailResponse data, response status code and response headers
    def get_budget_month_with_http_info(budget_id, month, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonthsApi.get_budget_month ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling MonthsApi.get_budget_month"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        fail ArgumentError, "Missing the required parameter 'month' when calling MonthsApi.get_budget_month"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/months/{month}'.sub('{' + 'budget_id' + '}', budget_id.to_s).sub('{' + 'month' + '}', month.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MonthDetailResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonthsApi#get_budget_month\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List budget months
    # Returns all budget months
    # @param budget_id The ID of the Budget.  \&quot;last-used\&quot; can also be used to specify the last used budget.
    # @param [Hash] opts the optional parameters
    # @return [MonthSummariesResponse]
    def get_budget_months(budget_id, opts = {})
      data, _status_code, _headers = get_budget_months_with_http_info(budget_id, opts)
      data
    end

    # List budget months
    # Returns all budget months
    # @param budget_id The ID of the Budget.  \&quot;last-used\&quot; can also be used to specify the last used budget.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MonthSummariesResponse, Fixnum, Hash)>] MonthSummariesResponse data, response status code and response headers
    def get_budget_months_with_http_info(budget_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MonthsApi.get_budget_months ...'
      end
      # verify the required parameter 'budget_id' is set
      if @api_client.config.client_side_validation && budget_id.nil?
        fail ArgumentError, "Missing the required parameter 'budget_id' when calling MonthsApi.get_budget_months"
      end
      # resource path
      local_var_path = '/budgets/{budget_id}/months'.sub('{' + 'budget_id' + '}', budget_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MonthSummariesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MonthsApi#get_budget_months\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
