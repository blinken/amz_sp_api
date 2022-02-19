=begin
#Selling Partner API for Direct Fulfillment Shipping

#The Selling Partner API for Direct Fulfillment Shipping provides programmatic access to a direct fulfillment vendor's shipping data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'uri'

module AmzSpApi::VendorDirectFulfillmentShippingApiModel
  class CustomerInvoicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a customer invoice based on the purchaseOrderNumber that you specify.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param purchase_order_number Purchase order number of the shipment for which to return the invoice.
    # @param [Hash] opts the optional parameters
    # @return [GetCustomerInvoiceResponse]
    def get_customer_invoice(purchase_order_number, opts = {})
      data, _status_code, _headers = get_customer_invoice_with_http_info(purchase_order_number, opts)
      data
    end

    # Returns a customer invoice based on the purchaseOrderNumber that you specify.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param purchase_order_number Purchase order number of the shipment for which to return the invoice.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCustomerInvoiceResponse, Fixnum, Hash)>] GetCustomerInvoiceResponse data, response status code and response headers
    def get_customer_invoice_with_http_info(purchase_order_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerInvoicesApi.get_customer_invoice ...'
      end
      # verify the required parameter 'purchase_order_number' is set
      if @api_client.config.client_side_validation && purchase_order_number.nil?
        fail ArgumentError, "Missing the required parameter 'purchase_order_number' when calling CustomerInvoicesApi.get_customer_invoice"
      end
      if @api_client.config.client_side_validation && purchase_order_number !~ Regexp.new(/^[a-zA-Z0-9]+$/)
        fail ArgumentError, "invalid value for 'purchase_order_number' when calling CustomerInvoicesApi.get_customer_invoice, must conform to the pattern /^[a-zA-Z0-9]+$/."
      end

      # resource path
      local_var_path = '/vendor/directFulfillment/shipping/v1/customerInvoices/{purchaseOrderNumber}'.sub('{' + 'purchaseOrderNumber' + '}', purchase_order_number.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetCustomerInvoiceResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerInvoicesApi#get_customer_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of customer invoices created during a time frame that you specify. You define the  time frame using the createdAfter and createdBefore parameters. You must use both of these parameters. The date range to search must be no more than 7 days.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param created_after Orders that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param created_before Orders that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ship_from_party_id The vendor warehouseId for order fulfillment. If not specified, the result will contain orders for all warehouses.
    # @option opts [Integer] :limit The limit to the number of records returned
    # @option opts [String] :sort_order Sort ASC or DESC by order creation date.
    # @option opts [String] :next_token Used for pagination when there are more orders than the specified result size limit. The token value is returned in the previous API call.
    # @return [GetCustomerInvoicesResponse]
    def get_customer_invoices(created_after, created_before, opts = {})
      data, _status_code, _headers = get_customer_invoices_with_http_info(created_after, created_before, opts)
      data
    end

    # Returns a list of customer invoices created during a time frame that you specify. You define the  time frame using the createdAfter and createdBefore parameters. You must use both of these parameters. The date range to search must be no more than 7 days.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param created_after Orders that became available after this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param created_before Orders that became available before this date and time will be included in the result. Must be in ISO-8601 date/time format.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :ship_from_party_id The vendor warehouseId for order fulfillment. If not specified, the result will contain orders for all warehouses.
    # @option opts [Integer] :limit The limit to the number of records returned
    # @option opts [String] :sort_order Sort ASC or DESC by order creation date.
    # @option opts [String] :next_token Used for pagination when there are more orders than the specified result size limit. The token value is returned in the previous API call.
    # @return [Array<(GetCustomerInvoicesResponse, Fixnum, Hash)>] GetCustomerInvoicesResponse data, response status code and response headers
    def get_customer_invoices_with_http_info(created_after, created_before, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerInvoicesApi.get_customer_invoices ...'
      end
      # verify the required parameter 'created_after' is set
      if @api_client.config.client_side_validation && created_after.nil?
        fail ArgumentError, "Missing the required parameter 'created_after' when calling CustomerInvoicesApi.get_customer_invoices"
      end
      # verify the required parameter 'created_before' is set
      if @api_client.config.client_side_validation && created_before.nil?
        fail ArgumentError, "Missing the required parameter 'created_before' when calling CustomerInvoicesApi.get_customer_invoices"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomerInvoicesApi.get_customer_invoices, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling CustomerInvoicesApi.get_customer_invoices, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && opts[:'sort_order'] && !['ASC', 'DESC'].include?(opts[:'sort_order'])
        fail ArgumentError, 'invalid value for "sort_order", must be one of ASC, DESC'
      end
      # resource path
      local_var_path = '/vendor/directFulfillment/shipping/v1/customerInvoices'

      # query parameters
      query_params = {}
      query_params[:'createdAfter'] = created_after
      query_params[:'createdBefore'] = created_before
      query_params[:'shipFromPartyId'] = opts[:'ship_from_party_id'] if !opts[:'ship_from_party_id'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'nextToken'] = opts[:'next_token'] if !opts[:'next_token'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetCustomerInvoicesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerInvoicesApi#get_customer_invoices\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
