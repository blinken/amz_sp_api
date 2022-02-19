# AmzSpApi::MerchantFulfillmentApiModel::RejectedShippingService

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier_name** | **String** | The rejected shipping carrier name. e.g. USPS | 
**shipping_service_name** | **String** | The rejected shipping service localized name. e.g. FedEx Standard Overnight | 
**shipping_service_id** | [**ShippingServiceIdentifier**](ShippingServiceIdentifier.md) | The rejected shipping service identifier. e.g. FEDEX_PTP_STANDARD_OVERNIGHT | 
**rejection_reason_code** | **String** | A reason code meant to be consumed programatically. e.g. CARRIER_CANNOT_SHIP_TO_POBOX | 
**rejection_reason_message** | **String** | A localized human readable description of the rejected reason. | [optional] 


