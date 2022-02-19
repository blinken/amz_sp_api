=begin
#Selling Partner API for Direct Fulfillment Inventory Updates

#The Selling Partner API for Direct Fulfillment Inventory Updates provides programmatic access to a direct fulfillment vendor's inventory updates.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UpdateInventoryApi' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdateInventoryApi' do
    it 'should create an instance of UpdateInventoryApi' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentInventoryApiModel::UpdateInventoryApi)
    end
  end

  # unit tests for submit_inventory_update
  # Submits inventory updates for the specified warehouse for either a partial or full feed of inventory items.  **Usage Plans:**  | Plan type | Rate (requests per second) | Burst | | ---- | ---- | ---- | |Default| 10 | 10 | |Selling partner specific| Variable | Variable |  The x-amzn-RateLimit-Limit response header returns the usage plan rate limits that were applied to the requested operation. Rate limits for some selling partners will vary from the default rate and burst shown in the table above. For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param body 
  # @param warehouse_id Identifier for the warehouse for which to update inventory.
  # @param [Hash] opts the optional parameters
  # @return [SubmitInventoryUpdateResponse]
  describe 'submit_inventory_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end