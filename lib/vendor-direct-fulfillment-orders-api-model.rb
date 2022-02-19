=begin
#Selling Partner API for Direct Fulfillment Orders

#The Selling Partner API for Direct Fulfillment Orders provides programmatic access to a direct fulfillment vendor's order data.

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

# Common files
require 'vendor-direct-fulfillment-orders-api-model/api_client'
require 'vendor-direct-fulfillment-orders-api-model/api_error'
require 'vendor-direct-fulfillment-orders-api-model/version'
require 'vendor-direct-fulfillment-orders-api-model/configuration'

# Models
require 'vendor-direct-fulfillment-orders-api-model/models/acknowledgement_status'
require 'vendor-direct-fulfillment-orders-api-model/models/address'
require 'vendor-direct-fulfillment-orders-api-model/models/decimal'
require 'vendor-direct-fulfillment-orders-api-model/models/error'
require 'vendor-direct-fulfillment-orders-api-model/models/error_list'
require 'vendor-direct-fulfillment-orders-api-model/models/get_order_response'
require 'vendor-direct-fulfillment-orders-api-model/models/get_orders_response'
require 'vendor-direct-fulfillment-orders-api-model/models/gift_details'
require 'vendor-direct-fulfillment-orders-api-model/models/item_quantity'
require 'vendor-direct-fulfillment-orders-api-model/models/money'
require 'vendor-direct-fulfillment-orders-api-model/models/order'
require 'vendor-direct-fulfillment-orders-api-model/models/order_acknowledgement_item'
require 'vendor-direct-fulfillment-orders-api-model/models/order_details'
require 'vendor-direct-fulfillment-orders-api-model/models/order_details_tax_total'
require 'vendor-direct-fulfillment-orders-api-model/models/order_item'
require 'vendor-direct-fulfillment-orders-api-model/models/order_item_acknowledgement'
require 'vendor-direct-fulfillment-orders-api-model/models/order_item_tax_details'
require 'vendor-direct-fulfillment-orders-api-model/models/order_list'
require 'vendor-direct-fulfillment-orders-api-model/models/pagination'
require 'vendor-direct-fulfillment-orders-api-model/models/party_identification'
require 'vendor-direct-fulfillment-orders-api-model/models/scheduled_delivery_shipment'
require 'vendor-direct-fulfillment-orders-api-model/models/shipment_dates'
require 'vendor-direct-fulfillment-orders-api-model/models/shipment_details'
require 'vendor-direct-fulfillment-orders-api-model/models/submit_acknowledgement_request'
require 'vendor-direct-fulfillment-orders-api-model/models/submit_acknowledgement_response'
require 'vendor-direct-fulfillment-orders-api-model/models/tax_details'
require 'vendor-direct-fulfillment-orders-api-model/models/tax_line_item'
require 'vendor-direct-fulfillment-orders-api-model/models/tax_registration_details'
require 'vendor-direct-fulfillment-orders-api-model/models/transaction_id'

# APIs
require 'vendor-direct-fulfillment-orders-api-model/api/vendor_orders_api'

module AmzSpApi::VendorDirectFulfillmentOrdersApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorDirectFulfillmentOrdersApiModel.configure do |config|
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
