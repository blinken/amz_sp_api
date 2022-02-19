=begin
#Selling Partner API for Pricing

#The Selling Partner API for Pricing helps you programmatically retrieve product pricing and offer information for Amazon Marketplace products.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ProductPricingApiModel::AttributeSetList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AttributeSetList' do
  before do
    # run before each test
    @instance = AmzSpApi::ProductPricingApiModel::AttributeSetList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AttributeSetList' do
    it 'should create an instance of AttributeSetList' do
      expect(@instance).to be_instance_of(AmzSpApi::ProductPricingApiModel::AttributeSetList)
    end
  end
end
