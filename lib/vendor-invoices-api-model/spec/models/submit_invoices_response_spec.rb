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

# Unit tests for AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubmitInvoicesResponse' do
  before do
    # run before each test
    @instance = AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubmitInvoicesResponse' do
    it 'should create an instance of SubmitInvoicesResponse' do
      expect(@instance).to be_instance_of(AmzSpApi::VendorInvoicesApiModel::SubmitInvoicesResponse)
    end
  end
  describe 'test attribute "payload"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
