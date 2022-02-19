# AmzSpApi::VendorOrdersApiModel::OrderItemStatusAcknowledgementStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confirmation_status** | **String** | Confirmation status of line item. | [optional] 
**accepted_quantity** | [**ItemQuantity**](ItemQuantity.md) | Item quantities accepted by vendor to be shipped. | [optional] 
**rejected_quantity** | [**ItemQuantity**](ItemQuantity.md) | Item quantities rejected by vendor. | [optional] 
**acknowledgement_status_details** | [**Array&lt;AcknowledgementStatusDetails&gt;**](AcknowledgementStatusDetails.md) | Details of item quantity confirmed. | [optional] 


