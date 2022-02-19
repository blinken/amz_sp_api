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

# Unit tests for AmzSpApi::OrdersApiModel::PointsGrantedDetail
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PointsGrantedDetail' do
  before do
    # run before each test
    @instance = AmzSpApi::OrdersApiModel::PointsGrantedDetail.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PointsGrantedDetail' do
    it 'should create an instance of PointsGrantedDetail' do
      expect(@instance).to be_instance_of(AmzSpApi::OrdersApiModel::PointsGrantedDetail)
    end
  end
  describe 'test attribute "points_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "points_monetary_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
