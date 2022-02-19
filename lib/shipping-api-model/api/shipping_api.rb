=begin
#Selling Partner API for Shipping

#Provides programmatic access to Amazon Shipping APIs.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module AmzSpApi::ShippingApiModel
  class ShippingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Cancel a shipment by the given shipmentId.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param shipment_id 
    # @param [Hash] opts the optional parameters
    # @return [CancelShipmentResponse]
    def cancel_shipment(shipment_id, opts = {})
      data, _status_code, _headers = cancel_shipment_with_http_info(shipment_id, opts)
      return data
    end

    # 
    # Cancel a shipment by the given shipmentId.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param shipment_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CancelShipmentResponse, Fixnum, Hash)>] CancelShipmentResponse data, response status code and response headers
    def cancel_shipment_with_http_info(shipment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.cancel_shipment ..."
      end
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShippingApi.cancel_shipment" if shipment_id.nil?
      # resource path
      local_var_path = "/shipping/v1/shipments/{shipmentId}/cancel".sub('{format}','json').sub('{' + 'shipmentId' + '}', shipment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CancelShipmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#cancel_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create a new shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [CreateShipmentResponse]
    def create_shipment(body, opts = {})
      data, _status_code, _headers = create_shipment_with_http_info(body, opts)
      return data
    end

    # 
    # Create a new shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateShipmentResponse, Fixnum, Hash)>] CreateShipmentResponse data, response status code and response headers
    def create_shipment_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.create_shipment ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ShippingApi.create_shipment" if body.nil?
      # resource path
      local_var_path = "/shipping/v1/shipments".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateShipmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#create_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Verify if the current account is valid.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param [Hash] opts the optional parameters
    # @return [GetAccountResponse]
    def get_account(opts = {})
      data, _status_code, _headers = get_account_with_http_info(opts)
      return data
    end

    # 
    # Verify if the current account is valid.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccountResponse, Fixnum, Hash)>] GetAccountResponse data, response status code and response headers
    def get_account_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.get_account ..."
      end
      # resource path
      local_var_path = "/shipping/v1/account".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'GetAccountResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#get_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get service rates.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [GetRatesResponse]
    def get_rates(body, opts = {})
      data, _status_code, _headers = get_rates_with_http_info(body, opts)
      return data
    end

    # 
    # Get service rates.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetRatesResponse, Fixnum, Hash)>] GetRatesResponse data, response status code and response headers
    def get_rates_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.get_rates ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ShippingApi.get_rates" if body.nil?
      # resource path
      local_var_path = "/shipping/v1/rates".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetRatesResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#get_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Return the entire shipment object for the shipmentId.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param shipment_id 
    # @param [Hash] opts the optional parameters
    # @return [GetShipmentResponse]
    def get_shipment(shipment_id, opts = {})
      data, _status_code, _headers = get_shipment_with_http_info(shipment_id, opts)
      return data
    end

    # 
    # Return the entire shipment object for the shipmentId.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param shipment_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetShipmentResponse, Fixnum, Hash)>] GetShipmentResponse data, response status code and response headers
    def get_shipment_with_http_info(shipment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.get_shipment ..."
      end
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShippingApi.get_shipment" if shipment_id.nil?
      # resource path
      local_var_path = "/shipping/v1/shipments/{shipmentId}".sub('{format}','json').sub('{' + 'shipmentId' + '}', shipment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'GetShipmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#get_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Return the tracking information of a shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param tracking_id 
    # @param [Hash] opts the optional parameters
    # @return [GetTrackingInformationResponse]
    def get_tracking_information(tracking_id, opts = {})
      data, _status_code, _headers = get_tracking_information_with_http_info(tracking_id, opts)
      return data
    end

    # 
    # Return the tracking information of a shipment.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 1 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param tracking_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetTrackingInformationResponse, Fixnum, Hash)>] GetTrackingInformationResponse data, response status code and response headers
    def get_tracking_information_with_http_info(tracking_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.get_tracking_information ..."
      end
      # verify the required parameter 'tracking_id' is set
      fail ArgumentError, "Missing the required parameter 'tracking_id' when calling ShippingApi.get_tracking_information" if tracking_id.nil?
      # resource path
      local_var_path = "/shipping/v1/tracking/{trackingId}".sub('{format}','json').sub('{' + 'trackingId' + '}', tracking_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

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
        :return_type => 'GetTrackingInformationResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#get_tracking_information\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Purchase shipping labels based on a given rate.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param shipment_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseLabelsResponse]
    def purchase_labels(shipment_id, body, opts = {})
      data, _status_code, _headers = purchase_labels_with_http_info(shipment_id, body, opts)
      return data
    end

    # 
    # Purchase shipping labels based on a given rate.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param shipment_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseLabelsResponse, Fixnum, Hash)>] PurchaseLabelsResponse data, response status code and response headers
    def purchase_labels_with_http_info(shipment_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.purchase_labels ..."
      end
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShippingApi.purchase_labels" if shipment_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ShippingApi.purchase_labels" if body.nil?
      # resource path
      local_var_path = "/shipping/v1/shipments/{shipmentId}/purchaseLabels".sub('{format}','json').sub('{' + 'shipmentId' + '}', shipment_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseLabelsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#purchase_labels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Purchase shipping labels.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [PurchaseShipmentResponse]
    def purchase_shipment(body, opts = {})
      data, _status_code, _headers = purchase_shipment_with_http_info(body, opts)
      return data
    end

    # 
    # Purchase shipping labels.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PurchaseShipmentResponse, Fixnum, Hash)>] PurchaseShipmentResponse data, response status code and response headers
    def purchase_shipment_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.purchase_shipment ..."
      end
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ShippingApi.purchase_shipment" if body.nil?
      # resource path
      local_var_path = "/shipping/v1/purchaseShipment".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PurchaseShipmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#purchase_shipment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Retrieve shipping label based on the shipment id and tracking id.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param shipment_id 
    # @param tracking_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [RetrieveShippingLabelResponse]
    def retrieve_shipping_label(shipment_id, tracking_id, body, opts = {})
      data, _status_code, _headers = retrieve_shipping_label_with_http_info(shipment_id, tracking_id, body, opts)
      return data
    end

    # 
    # Retrieve shipping label based on the shipment id and tracking id.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 15 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param shipment_id 
    # @param tracking_id 
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetrieveShippingLabelResponse, Fixnum, Hash)>] RetrieveShippingLabelResponse data, response status code and response headers
    def retrieve_shipping_label_with_http_info(shipment_id, tracking_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShippingApi.retrieve_shipping_label ..."
      end
      # verify the required parameter 'shipment_id' is set
      fail ArgumentError, "Missing the required parameter 'shipment_id' when calling ShippingApi.retrieve_shipping_label" if shipment_id.nil?
      # verify the required parameter 'tracking_id' is set
      fail ArgumentError, "Missing the required parameter 'tracking_id' when calling ShippingApi.retrieve_shipping_label" if tracking_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling ShippingApi.retrieve_shipping_label" if body.nil?
      # resource path
      local_var_path = "/shipping/v1/shipments/{shipmentId}/containers/{trackingId}/label".sub('{format}','json').sub('{' + 'shipmentId' + '}', shipment_id.to_s).sub('{' + 'trackingId' + '}', tracking_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RetrieveShippingLabelResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingApi#retrieve_shipping_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
