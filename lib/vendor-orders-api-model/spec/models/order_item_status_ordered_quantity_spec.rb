=begin
#Selling Partner API for Retail Procurement Orders

#The Selling Partner API for Retail Procurement Orders provides programmatic access to vendor orders data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorOrdersApiModel::OrderItemStatusOrderedQuantity
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderItemStatusOrderedQuantity' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorOrdersApiModel::OrderItemStatusOrderedQuantity.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderItemStatusOrderedQuantity' do
    it 'should create an instance of OrderItemStatusOrderedQuantity' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorOrdersApiModel::OrderItemStatusOrderedQuantity)
    end
  end
  describe 'test attribute "ordered_quantity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ordered_quantity_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
