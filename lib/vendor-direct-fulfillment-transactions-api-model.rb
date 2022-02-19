=begin
#Selling Partner API for Direct Fulfillment Transaction Status

#The Selling Partner API for Direct Fulfillment Transaction Status provides programmatic access to a direct fulfillment vendor's transaction status.

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
require 'vendor-direct-fulfillment-transactions-api-model/api_client'
require 'vendor-direct-fulfillment-transactions-api-model/api_error'
require 'vendor-direct-fulfillment-transactions-api-model/version'
require 'vendor-direct-fulfillment-transactions-api-model/configuration'

# Models
require 'vendor-direct-fulfillment-transactions-api-model/models/error'
require 'vendor-direct-fulfillment-transactions-api-model/models/error_list'
require 'vendor-direct-fulfillment-transactions-api-model/models/get_transaction_response'
require 'vendor-direct-fulfillment-transactions-api-model/models/transaction'
require 'vendor-direct-fulfillment-transactions-api-model/models/transaction_status'

# APIs
require 'vendor-direct-fulfillment-transactions-api-model/api/vendor_transaction_api'

module AmzSpApi::VendorDirectFulfillmentTransactionsApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::VendorDirectFulfillmentTransactionsApiModel.configure do |config|
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
