# AmzSpApi::ServicesApiModel::ServiceJob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**create_time** | **DateTime** | The date and time of the creation of the job, in ISO 8601 format. | [optional] 
**service_job_id** | [**ServiceJobId**](ServiceJobId.md) | The service job identifier. | [optional] 
**service_job_status** | **String** | The status of the service job. | [optional] 
**scope_of_work** | [**ScopeOfWork**](ScopeOfWork.md) | The scope of work for the order. | [optional] 
**seller** | [**Seller**](Seller.md) | Information about the seller of the service job. | [optional] 
**service_job_provider** | [**ServiceJobProvider**](ServiceJobProvider.md) | Information about the service job provider. | [optional] 
**preferred_appointment_times** | [**Array&lt;AppointmentTime&gt;**](AppointmentTime.md) | A list of appointment windows preferred by the buyer. Included only if the buyer selected appointment windows when creating the order. | [optional] 
**appointments** | [**Array&lt;Appointment&gt;**](Appointment.md) | A list of appointments. | [optional] 
**service_order_id** | [**OrderId**](OrderId.md) | The Amazon-defined identifier for an order placed by the buyer, in 3-7-7 format. | [optional] 
**marketplace_id** | **String** | The marketplace identifier. | [optional] 
**buyer** | [**Buyer**](Buyer.md) | Information about the buyer. | [optional] 
**associated_items** | [**Array&lt;AssociatedItem&gt;**](AssociatedItem.md) | A list of items associated with the service job. | [optional] 
**service_location** | [**ServiceLocation**](ServiceLocation.md) | Information about the location of the service job. | [optional] 


