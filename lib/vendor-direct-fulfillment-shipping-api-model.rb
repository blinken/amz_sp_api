=begin
#Selling Partner API for Direct Fulfillment Shipping

#The Selling Partner API for Direct Fulfillment Shipping provides programmatic access to a direct fulfillment vendor's shipping data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

# Common files
require 'vendor-direct-fulfillment-shipping-api-model/api_client'
require 'vendor-direct-fulfillment-shipping-api-model/api_error'
require 'vendor-direct-fulfillment-shipping-api-model/version'
require 'vendor-direct-fulfillment-shipping-api-model/configuration'

# Models
require 'vendor-direct-fulfillment-shipping-api-model/models/address'
require 'vendor-direct-fulfillment-shipping-api-model/models/container'
require 'vendor-direct-fulfillment-shipping-api-model/models/customer_invoice'
require 'vendor-direct-fulfillment-shipping-api-model/models/customer_invoice_list'
require 'vendor-direct-fulfillment-shipping-api-model/models/decimal'
require 'vendor-direct-fulfillment-shipping-api-model/models/dimensions'
require 'vendor-direct-fulfillment-shipping-api-model/models/error'
require 'vendor-direct-fulfillment-shipping-api-model/models/error_list'
require 'vendor-direct-fulfillment-shipping-api-model/models/get_customer_invoice_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/get_customer_invoices_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/get_packing_slip_list_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/get_packing_slip_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/get_shipping_label_list_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/get_shipping_label_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/item'
require 'vendor-direct-fulfillment-shipping-api-model/models/item_quantity'
require 'vendor-direct-fulfillment-shipping-api-model/models/label_data'
require 'vendor-direct-fulfillment-shipping-api-model/models/packed_item'
require 'vendor-direct-fulfillment-shipping-api-model/models/packing_slip'
require 'vendor-direct-fulfillment-shipping-api-model/models/packing_slip_list'
require 'vendor-direct-fulfillment-shipping-api-model/models/pagination'
require 'vendor-direct-fulfillment-shipping-api-model/models/party_identification'
require 'vendor-direct-fulfillment-shipping-api-model/models/shipment_confirmation'
require 'vendor-direct-fulfillment-shipping-api-model/models/shipment_details'
require 'vendor-direct-fulfillment-shipping-api-model/models/shipment_status_update'
require 'vendor-direct-fulfillment-shipping-api-model/models/shipping_label'
require 'vendor-direct-fulfillment-shipping-api-model/models/shipping_label_list'
require 'vendor-direct-fulfillment-shipping-api-model/models/shipping_label_request'
require 'vendor-direct-fulfillment-shipping-api-model/models/status_update_details'
require 'vendor-direct-fulfillment-shipping-api-model/models/status_update_details_shipment_schedule'
require 'vendor-direct-fulfillment-shipping-api-model/models/submit_shipment_confirmations_request'
require 'vendor-direct-fulfillment-shipping-api-model/models/submit_shipment_confirmations_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/submit_shipment_status_updates_request'
require 'vendor-direct-fulfillment-shipping-api-model/models/submit_shipment_status_updates_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/submit_shipping_labels_request'
require 'vendor-direct-fulfillment-shipping-api-model/models/submit_shipping_labels_response'
require 'vendor-direct-fulfillment-shipping-api-model/models/tax_registration_details'
require 'vendor-direct-fulfillment-shipping-api-model/models/transaction_reference'
require 'vendor-direct-fulfillment-shipping-api-model/models/weight'

# APIs
require 'vendor-direct-fulfillment-shipping-api-model/api/customer_invoices_api'
require 'vendor-direct-fulfillment-shipping-api-model/api/vendor_shipping_api'
require 'vendor-direct-fulfillment-shipping-api-model/api/vendor_shipping_labels_api'

module AmzSpApi::VendorDirectFulfillmentShippingApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorDirectFulfillmentShippingApiModel.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
