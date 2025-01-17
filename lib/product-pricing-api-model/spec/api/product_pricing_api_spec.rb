=begin
#Selling Partner API for Pricing

#The Selling Partner API for Pricing helps you programmatically retrieve product pricing and offer information for Amazon Marketplace products.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::ProductPricingApiModel::ProductPricingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductPricingApi' do
  before do
    # run before each test
    @instance = AmzSpApi::ProductPricingApiModel::ProductPricingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductPricingApi' do
    it 'should create an instance of ProductPricingApi' do
      expect(@instance).to be_instance_of(AmzSpApi::ProductPricingApiModel::ProductPricingApi)
    end
  end

  # unit tests for get_competitive_pricing
  # Returns competitive pricing information for a seller&#39;s offer listings based on seller SKU or ASIN.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 20 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_id A marketplace identifier. Specifies the marketplace for which prices are returned.
  # @param item_type Indicates whether ASIN values or seller SKU values are used to identify items. If you specify Asin, the information in the response will be dependent on the list of Asins you provide in the Asins parameter. If you specify Sku, the information in the response will be dependent on the list of Skus you provide in the Skus parameter. Possible values: Asin, Sku.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :asins A list of up to twenty Amazon Standard Identification Number (ASIN) values used to identify items in the given marketplace.
  # @option opts [Array<String>] :skus A list of up to twenty seller SKU values used to identify items in the given marketplace.
  # @option opts [String] :customer_type Indicates whether to request pricing information from the point of view of Consumer or Business buyers. Default is Consumer.
  # @return [GetPricingResponse]
  describe 'get_competitive_pricing test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_item_offers
  # Returns the lowest priced offers for a single item based on ASIN.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_id A marketplace identifier. Specifies the marketplace for which prices are returned.
  # @param item_condition Filters the offer listings to be considered based on item condition. Possible values: New, Used, Collectible, Refurbished, Club.
  # @param asin The Amazon Standard Identification Number (ASIN) of the item.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :customer_type Indicates whether to request Consumer or Business offers. Default is Consumer.
  # @return [GetOffersResponse]
  describe 'get_item_offers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_listing_offers
  # Returns the lowest priced offers for a single SKU listing.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 5 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_id A marketplace identifier. Specifies the marketplace for which prices are returned.
  # @param item_condition Filters the offer listings based on item condition. Possible values: New, Used, Collectible, Refurbished, Club.
  # @param seller_sku Identifies an item in the given marketplace. SellerSKU is qualified by the seller&#39;s SellerId, which is included with every operation that you submit.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :customer_type Indicates whether to request Consumer or Business offers. Default is Consumer.
  # @return [GetOffersResponse]
  describe 'get_listing_offers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_pricing
  # Returns pricing information for a seller&#39;s offer listings based on seller SKU or ASIN.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 20 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_id A marketplace identifier. Specifies the marketplace for which prices are returned.
  # @param item_type Indicates whether ASIN values or seller SKU values are used to identify items. If you specify Asin, the information in the response will be dependent on the list of Asins you provide in the Asins parameter. If you specify Sku, the information in the response will be dependent on the list of Skus you provide in the Skus parameter.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :asins A list of up to twenty Amazon Standard Identification Number (ASIN) values used to identify items in the given marketplace.
  # @option opts [Array<String>] :skus A list of up to twenty seller SKU values used to identify items in the given marketplace.
  # @option opts [String] :item_condition Filters the offer listings based on item condition. Possible values: New, Used, Collectible, Refurbished, Club.
  # @option opts [String] :offer_type Indicates whether to request pricing information for the seller&#39;s B2C or B2B offers. Default is B2C.
  # @return [GetPricingResponse]
  describe 'get_pricing test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
