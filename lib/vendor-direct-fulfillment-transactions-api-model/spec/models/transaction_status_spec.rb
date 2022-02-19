=begin
#Selling Partner API for Direct Fulfillment Transaction Status

#The Selling Partner API for Direct Fulfillment Transaction Status provides programmatic access to a direct fulfillment vendor's transaction status.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorDirectFulfillmentTransactionsApiModel::TransactionStatus
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransactionStatus' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorDirectFulfillmentTransactionsApiModel::TransactionStatus.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionStatus' do
    it 'should create an instance of TransactionStatus' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorDirectFulfillmentTransactionsApiModel::TransactionStatus)
    end
  end
  describe 'test attribute "transaction_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
