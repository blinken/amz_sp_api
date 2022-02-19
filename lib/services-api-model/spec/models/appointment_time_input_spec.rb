=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AmzSpApi::ServicesApiModel::AppointmentTimeInput
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AppointmentTimeInput' do
  before do
    # run before each test
    @instance = AmzSpApi::ServicesApiModel::AppointmentTimeInput.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AppointmentTimeInput' do
    it 'should create an instance of AppointmentTimeInput' do
      expect(@instance).to be_instance_of(AmzSpApi::ServicesApiModel::AppointmentTimeInput)
    end
  end
  describe 'test attribute "start_time"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "duration_in_minutes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
