=begin
#Selling Partner API for Retail Procurement Payments

#The Selling Partner API for Retail Procurement Payments provides programmatic access to vendors payments data.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::VendorInvoicesApiModel::DateTime
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DateTime' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorInvoicesApiModel::DateTime.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DateTime' do
    it 'should create an instance of DateTime' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorInvoicesApiModel::DateTime)
    end
  end
end
