=begin
#Selling Partner API for Pricing

#The Selling Partner API for Pricing helps you programmatically retrieve product pricing and offer information for Amazon Marketplace products.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

# Common files
require 'product-pricing-api-model/api_client'
require 'product-pricing-api-model/api_error'
require 'product-pricing-api-model/version'
require 'product-pricing-api-model/configuration'

# Models
require 'product-pricing-api-model/models/asin_identifier'
require 'product-pricing-api-model/models/attribute_set_list'
require 'product-pricing-api-model/models/buy_box_eligible_offers'
require 'product-pricing-api-model/models/buy_box_price_type'
require 'product-pricing-api-model/models/buy_box_prices'
require 'product-pricing-api-model/models/competitive_price_list'
require 'product-pricing-api-model/models/competitive_price_type'
require 'product-pricing-api-model/models/competitive_pricing_type'
require 'product-pricing-api-model/models/condition_type'
require 'product-pricing-api-model/models/detailed_shipping_time_type'
require 'product-pricing-api-model/models/error'
require 'product-pricing-api-model/models/error_list'
require 'product-pricing-api-model/models/fulfillment_channel_type'
require 'product-pricing-api-model/models/get_offers_response'
require 'product-pricing-api-model/models/get_offers_result'
require 'product-pricing-api-model/models/get_pricing_response'
require 'product-pricing-api-model/models/identifier_type'
require 'product-pricing-api-model/models/item_identifier'
require 'product-pricing-api-model/models/lowest_price_type'
require 'product-pricing-api-model/models/lowest_prices'
require 'product-pricing-api-model/models/money_type'
require 'product-pricing-api-model/models/number_of_offer_listings_list'
require 'product-pricing-api-model/models/number_of_offers'
require 'product-pricing-api-model/models/offer_count_type'
require 'product-pricing-api-model/models/offer_customer_type'
require 'product-pricing-api-model/models/offer_detail'
require 'product-pricing-api-model/models/offer_detail_list'
require 'product-pricing-api-model/models/offer_listing_count_type'
require 'product-pricing-api-model/models/offer_type'
require 'product-pricing-api-model/models/offers_list'
require 'product-pricing-api-model/models/points'
require 'product-pricing-api-model/models/price'
require 'product-pricing-api-model/models/price_list'
require 'product-pricing-api-model/models/price_type'
require 'product-pricing-api-model/models/prime_information_type'
require 'product-pricing-api-model/models/product'
require 'product-pricing-api-model/models/quantity_discount_price_type'
require 'product-pricing-api-model/models/quantity_discount_type'
require 'product-pricing-api-model/models/relationship_list'
require 'product-pricing-api-model/models/sales_rank_list'
require 'product-pricing-api-model/models/sales_rank_type'
require 'product-pricing-api-model/models/seller_feedback_type'
require 'product-pricing-api-model/models/seller_sku_identifier'
require 'product-pricing-api-model/models/ships_from_type'
require 'product-pricing-api-model/models/summary'

# APIs
require 'product-pricing-api-model/api/product_pricing_api'

module AmzSpApi::ProductPricingApiModel
  class << self
    # Customize default settings for the SDK using block.
    #   AmzSpApi::ProductPricingApiModel.configure do |config|
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
