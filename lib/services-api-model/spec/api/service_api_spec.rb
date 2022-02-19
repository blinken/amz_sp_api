=begin
#Selling Partner API for Services

#With the Services API, you can build applications that help service providers get and modify their service orders.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.26

=end

require 'spec_helper'
require 'json'

# Unit tests for AmzSpApi::ServicesApiModel::ServiceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ServiceApi' do
  before do
    # run before each test
    @instance = AmzSpApi::ServicesApiModel::ServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceApi' do
    it 'should create an instance of ServiceApi' do
      expect(@instance).to be_instance_of(AmzSpApi::ServicesApiModel::ServiceApi)
    end
  end

  # unit tests for add_appointment_for_service_job_by_service_job_id
  # Adds an appointment to the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param service_job_id An Amazon defined service job identifier.
  # @param body Add appointment operation input details.
  # @param [Hash] opts the optional parameters
  # @return [SetAppointmentResponse]
  describe 'add_appointment_for_service_job_by_service_job_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for cancel_service_job_by_service_job_id
  # Cancels the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param service_job_id An Amazon defined service job identifier.
  # @param cancellation_reason_code A cancel reason code that specifies the reason for cancelling a service job.
  # @param [Hash] opts the optional parameters
  # @return [CancelServiceJobByServiceJobIdResponse]
  describe 'cancel_service_job_by_service_job_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for complete_service_job_by_service_job_id
  # Completes the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param service_job_id An Amazon defined service job identifier.
  # @param [Hash] opts the optional parameters
  # @return [CompleteServiceJobByServiceJobIdResponse]
  describe 'complete_service_job_by_service_job_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_service_job_by_service_job_id
  # Gets service job details for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 20 | 40 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param service_job_id A service job identifier.
  # @param [Hash] opts the optional parameters
  # @return [GetServiceJobByServiceJobIdResponse]
  describe 'get_service_job_by_service_job_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_service_jobs
  # Gets service job details for the specified filter query.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 10 | 40 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param marketplace_ids Used to select jobs that were placed in the specified marketplaces. 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :service_order_ids List of service order ids for the query you want to perform.Max values supported 20. 
  # @option opts [Array<String>] :service_job_status A list of one or more job status by which to filter the list of jobs.
  # @option opts [String] :page_token String returned in the response of your previous request.
  # @option opts [Integer] :page_size A non-negative integer that indicates the maximum number of jobs to return in the list, Value must be 1 - 20. Default 20. 
  # @option opts [String] :sort_field Sort fields on which you want to sort the output.
  # @option opts [String] :sort_order Sort order for the query you want to perform.
  # @option opts [String] :created_after A date used for selecting jobs created after (or at) a specified time must be in ISO 8601 format. Required if LastUpdatedAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
  # @option opts [String] :created_before A date used for selecting jobs created before (or at) a specified time must be in ISO 8601 format. 
  # @option opts [String] :last_updated_after A date used for selecting jobs updated after (or at) a specified time must be in ISO 8601 format. Required if createdAfter is not specified.Specifying both CreatedAfter and LastUpdatedAfter returns an error. 
  # @option opts [String] :last_updated_before A date used for selecting jobs updated before (or at) a specified time must be in ISO 8601 format. 
  # @option opts [String] :schedule_start_date A date used for filtering jobs schedule after (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
  # @option opts [String] :schedule_end_date A date used for filtering jobs schedule before (or at) a specified time must be in ISO 8601 format. schedule end date should not be earlier than schedule start date. 
  # @return [GetServiceJobsResponse]
  describe 'get_service_jobs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reschedule_appointment_for_service_job_by_service_job_id
  # Reschedules an appointment for the service job indicated by the service job identifier you specify.  **Usage Plan:**  | Rate (requests per second) | Burst | | ---- | ---- | | 5 | 20 |  For more information, see \&quot;Usage Plans and Rate Limits\&quot; in the Selling Partner API documentation.
  # @param service_job_id An Amazon defined service job identifier.
  # @param appointment_id An existing appointment identifier for the Service Job.
  # @param body Reschedule appointment operation input details.
  # @param [Hash] opts the optional parameters
  # @return [SetAppointmentResponse]
  describe 'reschedule_appointment_for_service_job_by_service_job_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
