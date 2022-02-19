=begin
#Selling Partner API for FBA Small And Light

#The Selling Partner API for FBA Small and Light lets you help sellers manage their listings in the Small and Light program. The program reduces the cost of fulfilling orders for small and lightweight FBA inventory. You can enroll or remove items from the program and check item eligibility and enrollment status. You can also preview the estimated program fees charged to a seller for items sold while enrolled in the program.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'uri'

module AmzSpApi::FbaSmallAndLightApiModel
  class SmallAndLightApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Removes the item indicated by the specified seller SKU from the Small and Light program in the specified marketplace. If the item is not eligible for disenrollment, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace in which to remove the item from the Small and Light program. Note: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids, opts = {})
      delete_small_and_light_enrollment_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts)
      nil
    end

    # Removes the item indicated by the specified seller SKU from the Small and Light program in the specified marketplace. If the item is not eligible for disenrollment, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace in which to remove the item from the Small and Light program. Note: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_small_and_light_enrollment_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmallAndLightApi.delete_small_and_light_enrollment_by_seller_sku ...'
      end
      # verify the required parameter 'seller_sku' is set
      if @api_client.config.client_side_validation && seller_sku.nil?
        fail ArgumentError, "Missing the required parameter 'seller_sku' when calling SmallAndLightApi.delete_small_and_light_enrollment_by_seller_sku"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling SmallAndLightApi.delete_small_and_light_enrollment_by_seller_sku"
      end
      if @api_client.config.client_side_validation && marketplace_ids.length > 1
        fail ArgumentError, 'invalid value for "marketplace_ids" when calling SmallAndLightApi.delete_small_and_light_enrollment_by_seller_sku, number of items must be less than or equal to 1.'
      end

      # resource path
      local_var_path = '/fba/smallAndLight/v1/enrollments/{sellerSKU}'.sub('{' + 'sellerSKU' + '}', seller_sku.to_s)

      # query parameters
      query_params = {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmallAndLightApi#delete_small_and_light_enrollment_by_seller_sku\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the Small and Light program eligibility status of the item indicated by the specified seller SKU in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace for which the eligibility status is retrieved. NOTE: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [SmallAndLightEligibility]
    def get_small_and_light_eligibility_by_seller_sku(seller_sku, marketplace_ids, opts = {})
      data, _status_code, _headers = get_small_and_light_eligibility_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts)
      data
    end

    # Returns the Small and Light program eligibility status of the item indicated by the specified seller SKU in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace for which the eligibility status is retrieved. NOTE: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmallAndLightEligibility, Fixnum, Hash)>] SmallAndLightEligibility data, response status code and response headers
    def get_small_and_light_eligibility_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmallAndLightApi.get_small_and_light_eligibility_by_seller_sku ...'
      end
      # verify the required parameter 'seller_sku' is set
      if @api_client.config.client_side_validation && seller_sku.nil?
        fail ArgumentError, "Missing the required parameter 'seller_sku' when calling SmallAndLightApi.get_small_and_light_eligibility_by_seller_sku"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling SmallAndLightApi.get_small_and_light_eligibility_by_seller_sku"
      end
      if @api_client.config.client_side_validation && marketplace_ids.length > 1
        fail ArgumentError, 'invalid value for "marketplace_ids" when calling SmallAndLightApi.get_small_and_light_eligibility_by_seller_sku, number of items must be less than or equal to 1.'
      end

      # resource path
      local_var_path = '/fba/smallAndLight/v1/eligibilities/{sellerSKU}'.sub('{' + 'sellerSKU' + '}', seller_sku.to_s)

      # query parameters
      query_params = {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)

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
        :return_type => 'SmallAndLightEligibility')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmallAndLightApi#get_small_and_light_eligibility_by_seller_sku\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the Small and Light enrollment status for the item indicated by the specified seller SKU in the specified marketplace.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace for which the enrollment status is retrieved. Note: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [SmallAndLightEnrollment]
    def get_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids, opts = {})
      data, _status_code, _headers = get_small_and_light_enrollment_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts)
      data
    end

    # Returns the Small and Light enrollment status for the item indicated by the specified seller SKU in the specified marketplace.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 10 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace for which the enrollment status is retrieved. Note: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmallAndLightEnrollment, Fixnum, Hash)>] SmallAndLightEnrollment data, response status code and response headers
    def get_small_and_light_enrollment_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmallAndLightApi.get_small_and_light_enrollment_by_seller_sku ...'
      end
      # verify the required parameter 'seller_sku' is set
      if @api_client.config.client_side_validation && seller_sku.nil?
        fail ArgumentError, "Missing the required parameter 'seller_sku' when calling SmallAndLightApi.get_small_and_light_enrollment_by_seller_sku"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling SmallAndLightApi.get_small_and_light_enrollment_by_seller_sku"
      end
      if @api_client.config.client_side_validation && marketplace_ids.length > 1
        fail ArgumentError, 'invalid value for "marketplace_ids" when calling SmallAndLightApi.get_small_and_light_enrollment_by_seller_sku, number of items must be less than or equal to 1.'
      end

      # resource path
      local_var_path = '/fba/smallAndLight/v1/enrollments/{sellerSKU}'.sub('{' + 'sellerSKU' + '}', seller_sku.to_s)

      # query parameters
      query_params = {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)

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
        :return_type => 'SmallAndLightEnrollment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmallAndLightApi#get_small_and_light_enrollment_by_seller_sku\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the Small and Light fee estimates for the specified items. You must include a marketplaceId parameter to retrieve the proper fee estimates for items to be sold in that marketplace. The ordering of items in the response will mirror the order of the items in the request. Duplicate ASIN/price combinations are removed.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 3 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [SmallAndLightFeePreviews]
    def get_small_and_light_fee_preview(body, opts = {})
      data, _status_code, _headers = get_small_and_light_fee_preview_with_http_info(body, opts)
      data
    end

    # Returns the Small and Light fee estimates for the specified items. You must include a marketplaceId parameter to retrieve the proper fee estimates for items to be sold in that marketplace. The ordering of items in the response will mirror the order of the items in the request. Duplicate ASIN/price combinations are removed.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 1 | 3 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmallAndLightFeePreviews, Fixnum, Hash)>] SmallAndLightFeePreviews data, response status code and response headers
    def get_small_and_light_fee_preview_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmallAndLightApi.get_small_and_light_fee_preview ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling SmallAndLightApi.get_small_and_light_fee_preview"
      end
      # resource path
      local_var_path = '/fba/smallAndLight/v1/feePreviews'

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
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SmallAndLightFeePreviews')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmallAndLightApi#get_small_and_light_fee_preview\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Enrolls the item indicated by the specified seller SKU in the Small and Light program in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \"Usage Plans and Rate Limits\" in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace in which to enroll the item. Note: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [SmallAndLightEnrollment]
    def put_small_and_light_enrollment_by_seller_sku(seller_sku, marketplace_ids, opts = {})
      data, _status_code, _headers = put_small_and_light_enrollment_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts)
      data
    end

    # Enrolls the item indicated by the specified seller SKU in the Small and Light program in the specified marketplace. If the item is not eligible, the ineligibility reasons are returned.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 2 | 5 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
    # @param seller_sku The seller SKU that identifies the item.
    # @param marketplace_ids The marketplace in which to enroll the item. Note: Accepts a single marketplace only.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SmallAndLightEnrollment, Fixnum, Hash)>] SmallAndLightEnrollment data, response status code and response headers
    def put_small_and_light_enrollment_by_seller_sku_with_http_info(seller_sku, marketplace_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SmallAndLightApi.put_small_and_light_enrollment_by_seller_sku ...'
      end
      # verify the required parameter 'seller_sku' is set
      if @api_client.config.client_side_validation && seller_sku.nil?
        fail ArgumentError, "Missing the required parameter 'seller_sku' when calling SmallAndLightApi.put_small_and_light_enrollment_by_seller_sku"
      end
      # verify the required parameter 'marketplace_ids' is set
      if @api_client.config.client_side_validation && marketplace_ids.nil?
        fail ArgumentError, "Missing the required parameter 'marketplace_ids' when calling SmallAndLightApi.put_small_and_light_enrollment_by_seller_sku"
      end
      if @api_client.config.client_side_validation && marketplace_ids.length > 1
        fail ArgumentError, 'invalid value for "marketplace_ids" when calling SmallAndLightApi.put_small_and_light_enrollment_by_seller_sku, number of items must be less than or equal to 1.'
      end

      # resource path
      local_var_path = '/fba/smallAndLight/v1/enrollments/{sellerSKU}'.sub('{' + 'sellerSKU' + '}', seller_sku.to_s)

      # query parameters
      query_params = {}
      query_params[:'marketplaceIds'] = @api_client.build_collection_param(marketplace_ids, :csv)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SmallAndLightEnrollment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SmallAndLightApi#put_small_and_light_enrollment_by_seller_sku\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
