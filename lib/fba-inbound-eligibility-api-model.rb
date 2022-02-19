=begin
#Selling Partner API for FBA Inbound Eligibilty

#With the FBA Inbound Eligibility API, you can build applications that let sellers get eligibility previews for items before shipping them to Amazon's fulfillment centers. With this API you can find out if an item is eligible for inbound shipment to Amazon's fulfillment centers in a specific marketplace. You can also find out if an item is eligible for using the manufacturer barcode for FBA inventory tracking. Sellers can use this information to inform their decisions about which items to ship Amazon's fulfillment centers.

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
require 'fba-inbound-eligibility-api-model/api_client'
require 'fba-inbound-eligibility-api-model/api_error'
require 'fba-inbound-eligibility-api-model/version'
require 'fba-inbound-eligibility-api-model/configuration'

# Models
require 'fba-inbound-eligibility-api-model/models/error'
require 'fba-inbound-eligibility-api-model/models/error_list'
require 'fba-inbound-eligibility-api-model/models/get_item_eligibility_preview_response'
require 'fba-inbound-eligibility-api-model/models/item_eligibility_preview'

# APIs
require 'fba-inbound-eligibility-api-model/api/fba_inbound_api'

module AmzSpApi::FbaInboundEligibilityApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::FbaInboundEligibilityApiModel.configure do |config|
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
