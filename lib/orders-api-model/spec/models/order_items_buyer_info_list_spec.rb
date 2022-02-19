=begin
#Selling Partner API for Orders

#The Selling Partner API for Orders helps you programmatically retrieve order information. These APIs let you develop fast, flexible, custom applications in areas like order synchronization, order research, and demand-based decision support tools.

OpenAPI spec version: v0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::OrdersApiModel::OrderItemsBuyerInfoList
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrderItemsBuyerInfoList' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersApiModel::OrderItemsBuyerInfoList.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderItemsBuyerInfoList' do
    it 'should create an instance of OrderItemsBuyerInfoList' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersApiModel::OrderItemsBuyerInfoList)
    end
  end
  describe 'test attribute "order_items"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amazon_order_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
